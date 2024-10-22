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

No description available.

.PARAMETER Complexity
Contains information about the expression complexity. For example, the number of steps it took to evaluate the expression.
.PARAMETER Issues
Contains information about the `issues` variable in the context. For example, is the issues were loaded with JQL, information about the page will be included here.
.OUTPUTS

JiraExpressionEvaluationMetaDataBean<PSCustomObject>
#>

function Initialize-JiraExpressionEvaluationMetaDataBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Complexity},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Issues}
    )

    Process {
        'Creating PSCustomObject: PSJira => JiraExpressionEvaluationMetaDataBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "complexity" = ${Complexity}
            "issues" = ${Issues}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JiraExpressionEvaluationMetaDataBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to JiraExpressionEvaluationMetaDataBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JiraExpressionEvaluationMetaDataBean<PSCustomObject>
#>
function ConvertFrom-JsonToJiraExpressionEvaluationMetaDataBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JiraExpressionEvaluationMetaDataBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JiraExpressionEvaluationMetaDataBean
        $AllProperties = ("complexity", "issues")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "complexity"))) { #optional property not found
            $Complexity = $null
        } else {
            $Complexity = $JsonParameters.PSobject.Properties["complexity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issues"))) { #optional property not found
            $Issues = $null
        } else {
            $Issues = $JsonParameters.PSobject.Properties["issues"].value
        }

        $PSO = [PSCustomObject]@{
            "complexity" = ${Complexity}
            "issues" = ${Issues}
        }

        return $PSO
    }

}

