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

The fields associated with the issue.

.PARAMETER Assignee
No description available.
.PARAMETER IssueType
No description available.
.PARAMETER Priority
No description available.
.PARAMETER Status
No description available.
.PARAMETER Summary
The summary description of the linked issue.
.PARAMETER Timetracking
No description available.
.OUTPUTS

LinkedIssueFields<PSCustomObject>
#>

function Initialize-LinkedIssueFields {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Assignee},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${IssueType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Priority},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Summary},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Timetracking}
    )

    Process {
        'Creating PSCustomObject: PSJira => LinkedIssueFields' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "assignee" = ${Assignee}
            "issueType" = ${IssueType}
            "priority" = ${Priority}
            "status" = ${Status}
            "summary" = ${Summary}
            "timetracking" = ${Timetracking}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LinkedIssueFields<PSCustomObject>

.DESCRIPTION

Convert from JSON to LinkedIssueFields<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LinkedIssueFields<PSCustomObject>
#>
function ConvertFrom-JsonToLinkedIssueFields {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => LinkedIssueFields' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LinkedIssueFields
        $AllProperties = ("assignee", "issueType", "issuetype", "priority", "status", "summary", "timetracking")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assignee"))) { #optional property not found
            $Assignee = $null
        } else {
            $Assignee = $JsonParameters.PSobject.Properties["assignee"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueType"))) { #optional property not found
            $IssueType = $null
        } else {
            $IssueType = $JsonParameters.PSobject.Properties["issueType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "priority"))) { #optional property not found
            $Priority = $null
        } else {
            $Priority = $JsonParameters.PSobject.Properties["priority"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "summary"))) { #optional property not found
            $Summary = $null
        } else {
            $Summary = $JsonParameters.PSobject.Properties["summary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timetracking"))) { #optional property not found
            $Timetracking = $null
        } else {
            $Timetracking = $JsonParameters.PSobject.Properties["timetracking"].value
        }

        $PSO = [PSCustomObject]@{
            "assignee" = ${Assignee}
            "issueType" = ${IssueType}
            "priority" = ${Priority}
            "status" = ${Status}
            "summary" = ${Summary}
            "timetracking" = ${Timetracking}
        }

        return $PSO
    }

}

