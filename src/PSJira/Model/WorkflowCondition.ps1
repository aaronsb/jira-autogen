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

The workflow transition rule conditions tree.

.PARAMETER Json

JSON object

.OUTPUTS

WorkflowCondition<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowCondition {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match WorkflowCompoundCondition defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToWorkflowCompoundCondition $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "WorkflowCompoundCondition"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'WorkflowCompoundCondition' defined in oneOf (WorkflowCondition). Proceeding to the next one if any."
        }

        # try to match WorkflowSimpleCondition defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToWorkflowSimpleCondition $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "WorkflowSimpleCondition"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'WorkflowSimpleCondition' defined in oneOf (WorkflowCondition). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([WorkflowCompoundCondition, WorkflowSimpleCondition]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("WorkflowCompoundCondition", "WorkflowSimpleCondition")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([WorkflowCompoundCondition, WorkflowSimpleCondition]). JSON Payload: $($Json)"
        }
    }
}

