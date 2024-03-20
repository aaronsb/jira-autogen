#!/usr/bin/pwsh powershell
$workingRoot = (pwd).Path
. ./Bulk-Processing.ps1
npm install @openapitools/openapi-generator-cli

$SwaggerVersion="v3.v3"
$AtlassianVersion="1.7007.0-0.1305.0"
$OpenAPIEndpoint="dac-static.atlassian.com/cloud/jira/platform/swagger"
$OpenAPIURI = ("https://" + $OpenAPIEndpoint + "-" + $SwaggerVersion + ".json?_v=" + $AtlassianVersion)

#note that the package name can be impacted by the post processing step Rename-FunctionVerb.
npx openapi-generator-cli generate -i $OpenAPIURI -o . -g powershell --additional-properties=packageName=PSJira

#fixup code generated from autocomplete
#gci -r | ?{$_.GetType().Name -eq "FileInfo"} | %{Find-InTextFile -FilePath $_ -Find 'is not currently searchable using the $filter command.' -Replace 'is not currently searchable using the filter command.'}
#gci -r | ?{$_.GetType().Name -eq "FileInfo"} | %{Find-InTextFile -FilePath $_ -Find 'Invoke-AlignApi2' -Replace 'Invoke-Align'}
#gci -r | ?{$_.GetType().Name -eq "FileInfo"} | %{Find-InTextFile -FilePath $_ -Find 'AlignApi2' -Replace 'getAlign'}
#Get-ChildItem -File -Recurse | % { Rename-Item -Path $_.PSPath -NewName $_.Name.replace("Invoke-AlignApi2","Invoke-Align")}

Write-Host "Patching bugs from raw swagger"

patch ./src/PSJira/Model/LinkedIssueFields.ps1 ./LinkedIssueFields.patch
patch ./src/PSJira/Model/Fields.ps1 ./Fields.patch"

Write-Host "Building Module"

./Build.ps1
import-module -Name ./src/PSJira/ -Verbose

#this is probably not the best way to do this, but it's auto generated code and I don't mind. Internal errors and warnings still related to the "AlignApi2" internal classes but that's ok with me.
#fixing the verb-noun structure greatly improves the usability and guessability of the functions.

cd ./src
@("Get","Set","Put","Patch","Post") | %{Rename-FunctionVerb -Verb $_ -Confirm -verbose}
cd $workingRoot
cd ./docs
@("Get","Set","Put","Patch","Post") | %{Rename-FunctionVerb -Verb $_ -Confirm -verbose}
cd $workingRoot
cd ./tests
@("Get","Set","Put","Patch","Post") | %{Rename-FunctionVerb -Verb $_ -Confirm -verbose}



import-module -Name ./src/PSJira/ -Verbose -Force


<#
    example to generate a valid bearer auth token

    cd ~/Projects/openapi-autogen/jira
    import-module -Name ./src/PSJira/ -Verbose -force
    $Configuration = Get-Configuration
    # Configure API key authorization: Bearer
    $Configuration.ApiKey.Add("Bearer",'user:1234|aaaaaaaaaaaaaabbbbbbbbbbbcccccccccccc')
    Get-User -id 1226 -Debug -verbose
#>
