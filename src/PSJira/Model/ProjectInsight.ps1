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

Insights about the project.

.PARAMETER LastIssueUpdateTime
The last issue update time.
.PARAMETER TotalIssueCount
Total issue count.
.OUTPUTS

ProjectInsight<PSCustomObject>
#>

function Initialize-ProjectInsight {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastIssueUpdateTime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${TotalIssueCount}
    )

    Process {
        'Creating PSCustomObject: PSJira => ProjectInsight' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "lastIssueUpdateTime" = ${LastIssueUpdateTime}
            "totalIssueCount" = ${TotalIssueCount}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProjectInsight<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProjectInsight<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProjectInsight<PSCustomObject>
#>
function ConvertFrom-JsonToProjectInsight {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ProjectInsight' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProjectInsight
        $AllProperties = ("lastIssueUpdateTime", "totalIssueCount")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastIssueUpdateTime"))) { #optional property not found
            $LastIssueUpdateTime = $null
        } else {
            $LastIssueUpdateTime = $JsonParameters.PSobject.Properties["lastIssueUpdateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalIssueCount"))) { #optional property not found
            $TotalIssueCount = $null
        } else {
            $TotalIssueCount = $JsonParameters.PSobject.Properties["totalIssueCount"].value
        }

        $PSO = [PSCustomObject]@{
            "lastIssueUpdateTime" = ${LastIssueUpdateTime}
            "totalIssueCount" = ${TotalIssueCount}
        }

        return $PSO
    }

}
