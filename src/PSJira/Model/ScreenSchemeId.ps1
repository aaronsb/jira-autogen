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

The ID of a screen scheme.

.PARAMETER Id
The ID of the screen scheme.
.OUTPUTS

ScreenSchemeId<PSCustomObject>
#>

function Initialize-ScreenSchemeId {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: PSJira => ScreenSchemeId' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ScreenSchemeId<PSCustomObject>

.DESCRIPTION

Convert from JSON to ScreenSchemeId<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ScreenSchemeId<PSCustomObject>
#>
function ConvertFrom-JsonToScreenSchemeId {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ScreenSchemeId' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ScreenSchemeId
        $AllProperties = ("id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
        }

        return $PSO
    }

}
