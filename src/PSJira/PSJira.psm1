#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT-23ad6c5456aade2d59a4e9437ce49c945df2eb8f
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

#region Import functions

# define the following classes in PowerShell
try {
    Add-Type -AssemblyName System.Web -ErrorAction Ignore | Out-Null
    Add-Type -AssemblyName System.Net -ErrorAction Ignore | Out-Null
} catch {
    Write-Verbose $_
}

# set $ErrorActionPreference to 'Stop' globally
$ErrorActionPreference = 'Stop'

# store the API client's configuration
$Script:Configuration = [System.Collections.HashTable]@{}

$Script:CmdletBindingParameters = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')

'Api', 'Model', 'Client', 'Private' | Where-Object {
    Join-Path $PSScriptRoot $_ | Test-Path
} | Get-ChildItem -Path {
    Join-Path $PSScriptRoot $_
} -Filter '*.ps1' | ForEach-Object {
    Write-Debug "Importing file: $($_.BaseName)"
    try {
        . $_.FullName
    } catch {
        Write-Error -Message "Failed to import function $($_.Fullname): $_"
    }
}

#endregion
