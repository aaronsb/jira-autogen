#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT-23ad6c5456aade2d59a4e9437ce49c945df2eb8f
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

A list of issue link type beans.

.PARAMETER IssueLinkTypes
The issue link type bean.
.OUTPUTS

IssueLinkTypes<PSCustomObject>
#>

function Initialize-IssueLinkTypes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${IssueLinkTypes}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueLinkTypes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "issueLinkTypes" = ${IssueLinkTypes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueLinkTypes<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueLinkTypes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueLinkTypes<PSCustomObject>
#>
function ConvertFrom-JsonToIssueLinkTypes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueLinkTypes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueLinkTypes
        $AllProperties = ("issueLinkTypes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueLinkTypes"))) { #optional property not found
            $IssueLinkTypes = $null
        } else {
            $IssueLinkTypes = $JsonParameters.PSobject.Properties["issueLinkTypes"].value
        }

        $PSO = [PSCustomObject]@{
            "issueLinkTypes" = ${IssueLinkTypes}
        }

        return $PSO
    }

}

