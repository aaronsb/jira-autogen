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

An operand that can be part of a list operand.

.PARAMETER Json

JSON object

.OUTPUTS

JqlQueryUnitaryOperand<PSCustomObject>
#>
function ConvertFrom-JsonToJqlQueryUnitaryOperand {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        if ($match -ne 0) { # no match yet
            # try to match FunctionOperand defined in the anyOf schemas
            try {
                $matchInstance = ConvertFrom-JsonToFunctionOperand $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "FunctionOperand"
                        $match++
                        break
                    }
                }
            } catch {
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'FunctionOperand' defined in anyOf (JqlQueryUnitaryOperand). Proceeding to the next one if any."
            }
        }

        if ($match -ne 0) { # no match yet
            # try to match KeywordOperand defined in the anyOf schemas
            try {
                $matchInstance = ConvertFrom-JsonToKeywordOperand $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "KeywordOperand"
                        $match++
                        break
                    }
                }
            } catch {
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'KeywordOperand' defined in anyOf (JqlQueryUnitaryOperand). Proceeding to the next one if any."
            }
        }

        if ($match -ne 0) { # no match yet
            # try to match ValueOperand defined in the anyOf schemas
            try {
                $matchInstance = ConvertFrom-JsonToValueOperand $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "ValueOperand"
                        $match++
                        break
                    }
                }
            } catch {
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'ValueOperand' defined in anyOf (JqlQueryUnitaryOperand). Proceeding to the next one if any."
            }
        }

        if ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "anyOfSchemas" = @("FunctionOperand", "KeywordOperand", "ValueOperand")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in anyOf schemas ([FunctionOperand, KeywordOperand, ValueOperand]). JSON Payload: $($Json)"
        }
    }
}

