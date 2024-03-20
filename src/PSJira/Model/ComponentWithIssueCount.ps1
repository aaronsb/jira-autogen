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

Details about a component with a count of the issues it contains.

.PARAMETER Assignee
The details of the user associated with `assigneeType`, if any. See `realAssignee` for details of the user assigned to issues created with this component.
.PARAMETER AssigneeType
The nominal user type used to determine the assignee for issues created with this component. See `realAssigneeType` for details on how the type of the user, and hence the user, assigned to issues is determined. Takes the following values:   *  `PROJECT_LEAD` the assignee to any issues created with this component is nominally the lead for the project the component is in.  *  `COMPONENT_LEAD` the assignee to any issues created with this component is nominally the lead for the component.  *  `UNASSIGNED` an assignee is not set for issues created with this component.  *  `PROJECT_DEFAULT` the assignee to any issues created with this component is nominally the default assignee for the project that the component is in.
.PARAMETER Description
The description for the component.
.PARAMETER Id
The unique identifier for the component.
.PARAMETER IsAssigneeTypeValid
Whether a user is associated with `assigneeType`. For example, if the `assigneeType` is set to `COMPONENT_LEAD` but the component lead is not set, then `false` is returned.
.PARAMETER IssueCount
Count of issues for the component.
.PARAMETER Lead
The user details for the component's lead user.
.PARAMETER Name
The name for the component.
.PARAMETER Project
The key of the project to which the component is assigned.
.PARAMETER ProjectId
Not used.
.PARAMETER RealAssignee
The user assigned to issues created with this component, when `assigneeType` does not identify a valid assignee.
.PARAMETER RealAssigneeType
The type of the assignee that is assigned to issues created with this component, when an assignee cannot be set from the `assigneeType`. For example, `assigneeType` is set to `COMPONENT_LEAD` but no component lead is set. This property is set to one of the following values:   *  `PROJECT_LEAD` when `assigneeType` is `PROJECT_LEAD` and the project lead has permission to be assigned issues in the project that the component is in.  *  `COMPONENT_LEAD` when `assignee`Type is `COMPONENT_LEAD` and the component lead has permission to be assigned issues in the project that the component is in.  *  `UNASSIGNED` when `assigneeType` is `UNASSIGNED` and Jira is configured to allow unassigned issues.  *  `PROJECT_DEFAULT` when none of the preceding cases are true.
.PARAMETER Self
The URL for this count of the issues contained in the component.
.OUTPUTS

ComponentWithIssueCount<PSCustomObject>
#>

function Initialize-ComponentWithIssueCount {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Assignee},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PROJECT_DEFAULT", "COMPONENT_LEAD", "PROJECT_LEAD", "UNASSIGNED")]
        [String]
        ${AssigneeType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsAssigneeTypeValid},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${IssueCount},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Lead},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Project},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ProjectId},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RealAssignee},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PROJECT_DEFAULT", "COMPONENT_LEAD", "PROJECT_LEAD", "UNASSIGNED")]
        [String]
        ${RealAssigneeType},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self}
    )

    Process {
        'Creating PSCustomObject: PSJira => ComponentWithIssueCount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "assignee" = ${Assignee}
            "assigneeType" = ${AssigneeType}
            "description" = ${Description}
            "id" = ${Id}
            "isAssigneeTypeValid" = ${IsAssigneeTypeValid}
            "issueCount" = ${IssueCount}
            "lead" = ${Lead}
            "name" = ${Name}
            "project" = ${Project}
            "projectId" = ${ProjectId}
            "realAssignee" = ${RealAssignee}
            "realAssigneeType" = ${RealAssigneeType}
            "self" = ${Self}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ComponentWithIssueCount<PSCustomObject>

.DESCRIPTION

Convert from JSON to ComponentWithIssueCount<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ComponentWithIssueCount<PSCustomObject>
#>
function ConvertFrom-JsonToComponentWithIssueCount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ComponentWithIssueCount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ComponentWithIssueCount
        $AllProperties = ("assignee", "assigneeType", "description", "id", "isAssigneeTypeValid", "issueCount", "lead", "name", "project", "projectId", "realAssignee", "realAssigneeType", "self")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assigneeType"))) { #optional property not found
            $AssigneeType = $null
        } else {
            $AssigneeType = $JsonParameters.PSobject.Properties["assigneeType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isAssigneeTypeValid"))) { #optional property not found
            $IsAssigneeTypeValid = $null
        } else {
            $IsAssigneeTypeValid = $JsonParameters.PSobject.Properties["isAssigneeTypeValid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueCount"))) { #optional property not found
            $IssueCount = $null
        } else {
            $IssueCount = $JsonParameters.PSobject.Properties["issueCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lead"))) { #optional property not found
            $Lead = $null
        } else {
            $Lead = $JsonParameters.PSobject.Properties["lead"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "project"))) { #optional property not found
            $Project = $null
        } else {
            $Project = $JsonParameters.PSobject.Properties["project"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectId"))) { #optional property not found
            $ProjectId = $null
        } else {
            $ProjectId = $JsonParameters.PSobject.Properties["projectId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "realAssignee"))) { #optional property not found
            $RealAssignee = $null
        } else {
            $RealAssignee = $JsonParameters.PSobject.Properties["realAssignee"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "realAssigneeType"))) { #optional property not found
            $RealAssigneeType = $null
        } else {
            $RealAssigneeType = $JsonParameters.PSobject.Properties["realAssigneeType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        $PSO = [PSCustomObject]@{
            "assignee" = ${Assignee}
            "assigneeType" = ${AssigneeType}
            "description" = ${Description}
            "id" = ${Id}
            "isAssigneeTypeValid" = ${IsAssigneeTypeValid}
            "issueCount" = ${IssueCount}
            "lead" = ${Lead}
            "name" = ${Name}
            "project" = ${Project}
            "projectId" = ${ProjectId}
            "realAssignee" = ${RealAssignee}
            "realAssigneeType" = ${RealAssigneeType}
            "self" = ${Self}
        }

        return $PSO
    }

}

