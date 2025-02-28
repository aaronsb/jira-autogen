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

An associated workflow scheme and project.

.PARAMETER ProjectId
The ID of the project.
.PARAMETER WorkflowSchemeId
The ID of the workflow scheme. If the workflow scheme ID is `null`, the operation assigns the default workflow scheme.
.OUTPUTS

WorkflowSchemeProjectAssociation<PSCustomObject>
#>

function Initialize-WorkflowSchemeProjectAssociation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProjectId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WorkflowSchemeId}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowSchemeProjectAssociation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ProjectId) {
            throw "invalid value for 'ProjectId', 'ProjectId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "projectId" = ${ProjectId}
            "workflowSchemeId" = ${WorkflowSchemeId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowSchemeProjectAssociation<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowSchemeProjectAssociation<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowSchemeProjectAssociation<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowSchemeProjectAssociation {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowSchemeProjectAssociation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowSchemeProjectAssociation
        $AllProperties = ("projectId", "workflowSchemeId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'projectId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'projectId' missing."
        } else {
            $ProjectId = $JsonParameters.PSobject.Properties["projectId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workflowSchemeId"))) { #optional property not found
            $WorkflowSchemeId = $null
        } else {
            $WorkflowSchemeId = $JsonParameters.PSobject.Properties["workflowSchemeId"].value
        }

        $PSO = [PSCustomObject]@{
            "projectId" = ${ProjectId}
            "workflowSchemeId" = ${WorkflowSchemeId}
        }

        return $PSO
    }

}

