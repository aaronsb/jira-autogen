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

Details of an issue type hierarchy level.

.PARAMETER EntityId
The ID of the issue type hierarchy level. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/).
.PARAMETER IssueTypes
The list of issue types in the hierarchy level.
.PARAMETER Level
The level of the issue type hierarchy level.
.PARAMETER Name
The name of the issue type hierarchy level.
.OUTPUTS

ProjectIssueTypesHierarchyLevel<PSCustomObject>
#>

function Initialize-ProjectIssueTypesHierarchyLevel {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EntityId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${IssueTypes},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Level},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSJira => ProjectIssueTypesHierarchyLevel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "entityId" = ${EntityId}
            "issueTypes" = ${IssueTypes}
            "level" = ${Level}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProjectIssueTypesHierarchyLevel<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProjectIssueTypesHierarchyLevel<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProjectIssueTypesHierarchyLevel<PSCustomObject>
#>
function ConvertFrom-JsonToProjectIssueTypesHierarchyLevel {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ProjectIssueTypesHierarchyLevel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProjectIssueTypesHierarchyLevel
        $AllProperties = ("entityId", "issueTypes", "level", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entityId"))) { #optional property not found
            $EntityId = $null
        } else {
            $EntityId = $JsonParameters.PSobject.Properties["entityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueTypes"))) { #optional property not found
            $IssueTypes = $null
        } else {
            $IssueTypes = $JsonParameters.PSobject.Properties["issueTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "level"))) { #optional property not found
            $Level = $null
        } else {
            $Level = $JsonParameters.PSobject.Properties["level"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "entityId" = ${EntityId}
            "issueTypes" = ${IssueTypes}
            "level" = ${Level}
            "name" = ${Name}
        }

        return $PSO
    }

}

