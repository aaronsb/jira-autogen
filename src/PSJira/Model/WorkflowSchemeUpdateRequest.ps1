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

The update workflow scheme payload.

.PARAMETER DefaultWorkflowId
The ID of the workflow for issue types without having a mapping defined in this workflow scheme. Only used in global-scoped workflow schemes. If the `defaultWorkflowId` isn't specified, this is set to *Jira Workflow (jira)*.
.PARAMETER Description
The new description for this workflow scheme.
.PARAMETER Id
The ID of this workflow scheme.
.PARAMETER Name
The new name for this workflow scheme.
.PARAMETER StatusMappingsByIssueTypeOverride
Overrides, for the selected issue types, any status mappings provided in `statusMappingsByWorkflows`. Status mappings are required when the new workflow for an issue type doesn't contain all statuses that the old workflow has. Status mappings can be provided by a combination of `statusMappingsByWorkflows` and `statusMappingsByIssueTypeOverride`.
.PARAMETER StatusMappingsByWorkflows
The status mappings by workflows. Status mappings are required when the new workflow for an issue type doesn't contain all statuses that the old workflow has. Status mappings can be provided by a combination of `statusMappingsByWorkflows` and `statusMappingsByIssueTypeOverride`.
.PARAMETER Version
No description available.
.PARAMETER WorkflowsForIssueTypes
Mappings from workflows to issue types.
.OUTPUTS

WorkflowSchemeUpdateRequest<PSCustomObject>
#>

function Initialize-WorkflowSchemeUpdateRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DefaultWorkflowId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${StatusMappingsByIssueTypeOverride},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${StatusMappingsByWorkflows},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Version},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${WorkflowsForIssueTypes}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowSchemeUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Version) {
            throw "invalid value for 'Version', 'Version' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "defaultWorkflowId" = ${DefaultWorkflowId}
            "description" = ${Description}
            "id" = ${Id}
            "name" = ${Name}
            "statusMappingsByIssueTypeOverride" = ${StatusMappingsByIssueTypeOverride}
            "statusMappingsByWorkflows" = ${StatusMappingsByWorkflows}
            "version" = ${Version}
            "workflowsForIssueTypes" = ${WorkflowsForIssueTypes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowSchemeUpdateRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowSchemeUpdateRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowSchemeUpdateRequest<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowSchemeUpdateRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowSchemeUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $WorkflowSchemeUpdateRequestAdditionalProperties = @{}

        # check if Json contains properties not defined in WorkflowSchemeUpdateRequest
        $AllProperties = ("defaultWorkflowId", "description", "id", "name", "statusMappingsByIssueTypeOverride", "statusMappingsByWorkflows", "version", "workflowsForIssueTypes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $WorkflowSchemeUpdateRequestAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'description' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) {
            throw "Error! JSON cannot be serialized due to the required property 'version' missing."
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "defaultWorkflowId"))) { #optional property not found
            $DefaultWorkflowId = $null
        } else {
            $DefaultWorkflowId = $JsonParameters.PSobject.Properties["defaultWorkflowId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusMappingsByIssueTypeOverride"))) { #optional property not found
            $StatusMappingsByIssueTypeOverride = $null
        } else {
            $StatusMappingsByIssueTypeOverride = $JsonParameters.PSobject.Properties["statusMappingsByIssueTypeOverride"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusMappingsByWorkflows"))) { #optional property not found
            $StatusMappingsByWorkflows = $null
        } else {
            $StatusMappingsByWorkflows = $JsonParameters.PSobject.Properties["statusMappingsByWorkflows"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workflowsForIssueTypes"))) { #optional property not found
            $WorkflowsForIssueTypes = $null
        } else {
            $WorkflowsForIssueTypes = $JsonParameters.PSobject.Properties["workflowsForIssueTypes"].value
        }

        $PSO = [PSCustomObject]@{
            "defaultWorkflowId" = ${DefaultWorkflowId}
            "description" = ${Description}
            "id" = ${Id}
            "name" = ${Name}
            "statusMappingsByIssueTypeOverride" = ${StatusMappingsByIssueTypeOverride}
            "statusMappingsByWorkflows" = ${StatusMappingsByWorkflows}
            "version" = ${Version}
            "workflowsForIssueTypes" = ${WorkflowsForIssueTypes}
            "AdditionalProperties" = $WorkflowSchemeUpdateRequestAdditionalProperties
        }

        return $PSO
    }

}

