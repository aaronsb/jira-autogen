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

The workflow scheme read request body.

.PARAMETER ProjectIds
The list of project IDs to query.
.PARAMETER WorkflowSchemeIds
The list of workflow scheme IDs to query.
.OUTPUTS

WorkflowSchemeReadRequest<PSCustomObject>
#>

function Initialize-WorkflowSchemeReadRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ProjectIds},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${WorkflowSchemeIds}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowSchemeReadRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "projectIds" = ${ProjectIds}
            "workflowSchemeIds" = ${WorkflowSchemeIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowSchemeReadRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowSchemeReadRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowSchemeReadRequest<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowSchemeReadRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowSchemeReadRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowSchemeReadRequest
        $AllProperties = ("projectIds", "workflowSchemeIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectIds"))) { #optional property not found
            $ProjectIds = $null
        } else {
            $ProjectIds = $JsonParameters.PSobject.Properties["projectIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workflowSchemeIds"))) { #optional property not found
            $WorkflowSchemeIds = $null
        } else {
            $WorkflowSchemeIds = $JsonParameters.PSobject.Properties["workflowSchemeIds"].value
        }

        $PSO = [PSCustomObject]@{
            "projectIds" = ${ProjectIds}
            "workflowSchemeIds" = ${WorkflowSchemeIds}
        }

        return $PSO
    }

}
