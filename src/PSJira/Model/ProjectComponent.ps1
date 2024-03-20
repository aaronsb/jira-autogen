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

Details about a project component.

.PARAMETER Ari
Compass component's ID. Can't be updated. Not required for creating a Project Component.
.PARAMETER Assignee
No description available.
.PARAMETER AssigneeType
The nominal user type used to determine the assignee for issues created with this component. See `realAssigneeType` for details on how the type of the user, and hence the user, assigned to issues is determined. Can take the following values:   *  `PROJECT_LEAD` the assignee to any issues created with this component is nominally the lead for the project the component is in.  *  `COMPONENT_LEAD` the assignee to any issues created with this component is nominally the lead for the component.  *  `UNASSIGNED` an assignee is not set for issues created with this component.  *  `PROJECT_DEFAULT` the assignee to any issues created with this component is nominally the default assignee for the project that the component is in.  Default value: `PROJECT_DEFAULT`.   Optional when creating or updating a component.
.PARAMETER Description
The description for the component. Optional when creating or updating a component.
.PARAMETER Id
The unique identifier for the component.
.PARAMETER IsAssigneeTypeValid
Whether a user is associated with `assigneeType`. For example, if the `assigneeType` is set to `COMPONENT_LEAD` but the component lead is not set, then `false` is returned.
.PARAMETER Lead
No description available.
.PARAMETER LeadAccountId
The accountId of the component's lead user. The accountId uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
.PARAMETER LeadUserName
This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
.PARAMETER Metadata
Compass component's metadata. Can't be updated. Not required for creating a Project Component.
.PARAMETER Name
The unique name for the component in the project. Required when creating a component. Optional when updating a component. The maximum length is 255 characters.
.PARAMETER Project
The key of the project the component is assigned to. Required when creating a component. Can't be updated.
.PARAMETER ProjectId
The ID of the project the component is assigned to.
.PARAMETER RealAssignee
No description available.
.PARAMETER RealAssigneeType
The type of the assignee that is assigned to issues created with this component, when an assignee cannot be set from the `assigneeType`. For example, `assigneeType` is set to `COMPONENT_LEAD` but no component lead is set. This property is set to one of the following values:   *  `PROJECT_LEAD` when `assigneeType` is `PROJECT_LEAD` and the project lead has permission to be assigned issues in the project that the component is in.  *  `COMPONENT_LEAD` when `assignee`Type is `COMPONENT_LEAD` and the component lead has permission to be assigned issues in the project that the component is in.  *  `UNASSIGNED` when `assigneeType` is `UNASSIGNED` and Jira is configured to allow unassigned issues.  *  `PROJECT_DEFAULT` when none of the preceding cases are true.
.PARAMETER Self
The URL of the component.
.OUTPUTS

ProjectComponent<PSCustomObject>
#>

function Initialize-ProjectComponent {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ari},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Assignee},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PROJECT_DEFAULT", "COMPONENT_LEAD", "PROJECT_LEAD", "UNASSIGNED")]
        [String]
        ${AssigneeType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsAssigneeTypeValid},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Lead},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LeadAccountId},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LeadUserName},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Metadata},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Project},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ProjectId},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RealAssignee},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PROJECT_DEFAULT", "COMPONENT_LEAD", "PROJECT_LEAD", "UNASSIGNED")]
        [String]
        ${RealAssigneeType},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self}
    )

    Process {
        'Creating PSCustomObject: PSJira => ProjectComponent' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$LeadAccountId -and $LeadAccountId.length -gt 128) {
            throw "invalid value for 'LeadAccountId', the character length must be smaller than or equal to 128."
        }


        $PSO = [PSCustomObject]@{
            "ari" = ${Ari}
            "assignee" = ${Assignee}
            "assigneeType" = ${AssigneeType}
            "description" = ${Description}
            "id" = ${Id}
            "isAssigneeTypeValid" = ${IsAssigneeTypeValid}
            "lead" = ${Lead}
            "leadAccountId" = ${LeadAccountId}
            "leadUserName" = ${LeadUserName}
            "metadata" = ${Metadata}
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

Convert from JSON to ProjectComponent<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProjectComponent<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProjectComponent<PSCustomObject>
#>
function ConvertFrom-JsonToProjectComponent {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ProjectComponent' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProjectComponent
        $AllProperties = ("ari", "assignee", "assigneeType", "description", "id", "isAssigneeTypeValid", "lead", "leadAccountId", "leadUserName", "metadata", "name", "project", "projectId", "realAssignee", "realAssigneeType", "self")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ari"))) { #optional property not found
            $Ari = $null
        } else {
            $Ari = $JsonParameters.PSobject.Properties["ari"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lead"))) { #optional property not found
            $Lead = $null
        } else {
            $Lead = $JsonParameters.PSobject.Properties["lead"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "leadAccountId"))) { #optional property not found
            $LeadAccountId = $null
        } else {
            $LeadAccountId = $JsonParameters.PSobject.Properties["leadAccountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "leadUserName"))) { #optional property not found
            $LeadUserName = $null
        } else {
            $LeadUserName = $JsonParameters.PSobject.Properties["leadUserName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "metadata"))) { #optional property not found
            $Metadata = $null
        } else {
            $Metadata = $JsonParameters.PSobject.Properties["metadata"].value
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
            "ari" = ${Ari}
            "assignee" = ${Assignee}
            "assigneeType" = ${AssigneeType}
            "description" = ${Description}
            "id" = ${Id}
            "isAssigneeTypeValid" = ${IsAssigneeTypeValid}
            "lead" = ${Lead}
            "leadAccountId" = ${LeadAccountId}
            "leadUserName" = ${LeadUserName}
            "metadata" = ${Metadata}
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

