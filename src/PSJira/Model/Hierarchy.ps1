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

The project issue type hierarchy.

.PARAMETER BaseLevelId
The ID of the base level. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/).
.PARAMETER Levels
Details about the hierarchy level.
.OUTPUTS

Hierarchy<PSCustomObject>
#>

function Initialize-Hierarchy {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${BaseLevelId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Levels}
    )

    Process {
        'Creating PSCustomObject: PSJira => Hierarchy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "baseLevelId" = ${BaseLevelId}
            "levels" = ${Levels}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Hierarchy<PSCustomObject>

.DESCRIPTION

Convert from JSON to Hierarchy<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Hierarchy<PSCustomObject>
#>
function ConvertFrom-JsonToHierarchy {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => Hierarchy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Hierarchy
        $AllProperties = ("baseLevelId", "levels")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "baseLevelId"))) { #optional property not found
            $BaseLevelId = $null
        } else {
            $BaseLevelId = $JsonParameters.PSobject.Properties["baseLevelId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "levels"))) { #optional property not found
            $Levels = $null
        } else {
            $Levels = $JsonParameters.PSobject.Properties["levels"].value
        }

        $PSO = [PSCustomObject]@{
            "baseLevelId" = ${BaseLevelId}
            "levels" = ${Levels}
        }

        return $PSO
    }

}

