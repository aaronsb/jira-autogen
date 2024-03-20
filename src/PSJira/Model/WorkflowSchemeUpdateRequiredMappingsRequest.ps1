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

The request payload to get the required mappings for updating a workflow scheme.

.PARAMETER DefaultWorkflowId
The ID of the new default workflow for this workflow scheme. Only used in global-scoped workflow schemes. If it isn't specified, is set to *Jira Workflow (jira)*.
.PARAMETER Id
The ID of the workflow scheme.
.PARAMETER WorkflowsForIssueTypes
The new workflow to issue type mappings for this workflow scheme.
.OUTPUTS

WorkflowSchemeUpdateRequiredMappingsRequest<PSCustomObject>
#>

function Initialize-WorkflowSchemeUpdateRequiredMappingsRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DefaultWorkflowId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${WorkflowsForIssueTypes}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowSchemeUpdateRequiredMappingsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $WorkflowsForIssueTypes) {
            throw "invalid value for 'WorkflowsForIssueTypes', 'WorkflowsForIssueTypes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "defaultWorkflowId" = ${DefaultWorkflowId}
            "id" = ${Id}
            "workflowsForIssueTypes" = ${WorkflowsForIssueTypes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowSchemeUpdateRequiredMappingsRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowSchemeUpdateRequiredMappingsRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowSchemeUpdateRequiredMappingsRequest<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowSchemeUpdateRequiredMappingsRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowSchemeUpdateRequiredMappingsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowSchemeUpdateRequiredMappingsRequest
        $AllProperties = ("defaultWorkflowId", "id", "workflowsForIssueTypes")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workflowsForIssueTypes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'workflowsForIssueTypes' missing."
        } else {
            $WorkflowsForIssueTypes = $JsonParameters.PSobject.Properties["workflowsForIssueTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "defaultWorkflowId"))) { #optional property not found
            $DefaultWorkflowId = $null
        } else {
            $DefaultWorkflowId = $JsonParameters.PSobject.Properties["defaultWorkflowId"].value
        }

        $PSO = [PSCustomObject]@{
            "defaultWorkflowId" = ${DefaultWorkflowId}
            "id" = ${Id}
            "workflowsForIssueTypes" = ${WorkflowsForIssueTypes}
        }

        return $PSO
    }

}
