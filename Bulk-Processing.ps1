#!/usr/bin/pwsh powershell

function Get-BadFunctionNames {
    Param([string]$Module="PSJira",[ValidateSet("Get","Set","Put","Patch","Post","All")]$Verb)
    if ($Verb -eq "All")
    {
        get-command -module $Module | %{$_.name}
    }
    else {
        get-command -module $Module | ?{$_.name.endswith($Verb)} | %{$_.name}
    }
}

function Rename-FunctionVerb
{
    <#
    .SYNOPSIS
        Renames an invalid function and all references of it within a given tree of related powershell code files where the verb is at the end of the name.
        The set of related functions must be able to be loaded as a module. Your current directory location should be the root of that module.
        It is not recommended to process more than one set of modules at a time.
    .EXAMPLE
        PS> Rename-FunctionVerb -Verb Get 
    
        Displayes a whatif of replacing all instances of the function with a correct Verb-Noun convention.
    .EXAMPLE
        PS> Rename-FunctionVerb -Verb Get -Confirm
    
        Actually changes the files from current director and deeper.
    .PARAMETER Verb
        Allowed verbs to search and replace for.
    .PARAMETER Module
        Module to search for the verbs in. The module must be loaded into the session for this to work.
    .PARAMETER Confirm
        Instead of displaying whatif, actually performs the operation.
    #>
    [CmdletBinding()]
    Param([string]$Module="PSJiraAlign",[ValidateSet("Get","Set","Put","Patch","Post")]$Verb,[switch]$Confirm)
    
    $FunctionList = Get-BadFunctionNames -Verb $Verb
    $FileTree = gci -r | ?{$_.GetType().Name -eq "FileInfo"}
    $TotalItems=$FileTree.Count
    $CurrentItem = 0
    $PercentComplete = 0

    if ($Confirm -eq $false) {
        Write-Verbose "Simulating Verb Alignment: $Verb"
    }
    else {
        Write-Verbose ("Found " + $FunctionList.Count + " qualifying functions for aligning $Verb to proper Verb-Noun order.`r`nTraversing current path location and all children directories for files containing references.")
        
    }
    foreach ($OldFunctionName in $FunctionList) {
        $NewFunctionName = $null
        $CurrentItem = 0
        $PercentComplete = 0
        if (($OldFunctionName.StartsWith("Invoke-")) -eq $true) {
            $NewFunctionName = $OldFunctionName.Replace($Verb,"").Replace("Invoke",$Verb)
            if ($Confirm -eq $false) {
                [PSCustomObject]@{"Old" = $OldFunctionName;"New"=$NewFunctionName}
                
                foreach ($File in $FileTree) {
                    $CurrentItem++
                    $PercentComplete = [int](($CurrentItem / $TotalItems) * 100)
                    Write-Progress -Activity ("Searching file " + $File.name + " for references.") -Status "$PercentComplete% Complete:" -PercentComplete $PercentComplete
                    Write-Debug ("Searched file: " + $File.FullName)
                }
            } else {
                [PSCustomObject]@{"Old" = $OldFunctionName;"New"=$NewFunctionName}
                foreach ($File in $FileTree) {
                    $CurrentItem++
                    $PercentComplete = [int](($CurrentItem / $TotalItems) * 100)
                    Write-Progress -Activity ("Searching file " + $File.name + " for references.") -Status "$PercentComplete% Complete:" -PercentComplete $PercentComplete
                    Find-InTextFile -FilePath $File -Find $OldFunctionName -Replace $NewFunctionName
                    Write-Debug ("Searched file: " + $File.FullName)
                }
            }
        }
        else
        {
            Write-Warning ($OldFunctionName + " does not begin with Invoke-! Skipping.")
        } 
    }  
}

function Find-InTextFile {
    <#
    .SYNOPSIS
        Performs a find (or replace) on a string in a text file or files.
    .EXAMPLE
        PS> Find-InTextFile -FilePath 'C:\MyFile.txt' -Find 'water' -Replace 'wine'
    
        Replaces all instances of the string 'water' into the string 'wine' in
        'C:\MyFile.txt'.
    .EXAMPLE
        PS> Find-InTextFile -FilePath 'C:\MyFile.txt' -Find 'water'
    
        Finds all instances of the string 'water' in the file 'C:\MyFile.txt'.
    .PARAMETER FilePath
        The file path of the text file you'd like to perform a find/replace on.
    .PARAMETER Find
        The string you'd like to replace.
    .PARAMETER Replace
        The string you'd like to replace your 'Find' string with.
    .PARAMETER NewFilePath
        If a new file with the replaced the string needs to be created instead of replacing
        the contents of the existing file use this param to create a new file.
    .PARAMETER Force
        If the NewFilePath param is used using this param will overwrite any file that
        exists in NewFilePath.
    #>
    [CmdletBinding(DefaultParameterSetName = 'NewFile')]
    [OutputType()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateScript({Test-Path -Path $_ -PathType 'Leaf'})]
        [string[]]$FilePath,
        [Parameter(Mandatory = $true)]
        [string]$Find,
        [Parameter()]
        [string]$Replace,
        [Parameter(ParameterSetName = 'NewFile')]
        [ValidateScript({ Test-Path -Path ($_ | Split-Path -Parent) -PathType 'Container' })]
        [string]$NewFilePath,
        [Parameter(ParameterSetName = 'NewFile')]
        [switch]$Force
    )
    begin {
        $Find = [regex]::Escape($Find)
    }
    process {
        try {
            foreach ($File in $FilePath) {
                if ($Replace) {
                    if ($NewFilePath) {
                        if ((Test-Path -Path $NewFilePath -PathType 'Leaf') -and $Force.IsPresent) {
                            Remove-Item -Path $NewFilePath -Force
                            (Get-Content $File) -replace $Find, $Replace | Add-Content -Path $NewFilePath -Force
                        } elseif ((Test-Path -Path $NewFilePath -PathType 'Leaf') -and !$Force.IsPresent) {
                            Write-Warning "The file at '$NewFilePath' already exists and the -Force param was not used"
                        } else {
                            (Get-Content $File) -replace $Find, $Replace | Add-Content -Path $NewFilePath -Force
                        }
                    } else {
                        (Get-Content $File) -replace $Find, $Replace | Add-Content -Path "$File.tmp" -Force
                        Remove-Item -Path $File
                        Move-Item -Path "$File.tmp" -Destination $File
                    }
                } else {
                    Select-String -Path $File -Pattern $Find
                }
            }
        } catch {
            Write-Error $_.Exception.Message
        }
    }
}
