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

.PARAMETER Context
The context in which the Jira expression is evaluated.
.PARAMETER Expression
The Jira expression to evaluate.
.OUTPUTS

JiraExpressionEvalRequestBean<PSCustomObject>
#>

function Initialize-JiraExpressionEvalRequestBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Context},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Expression}
    )

    Process {
        'Creating PSCustomObject: PSJira => JiraExpressionEvalRequestBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Expression) {
            throw "invalid value for 'Expression', 'Expression' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "context" = ${Context}
            "expression" = ${Expression}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JiraExpressionEvalRequestBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to JiraExpressionEvalRequestBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JiraExpressionEvalRequestBean<PSCustomObject>
#>
function ConvertFrom-JsonToJiraExpressionEvalRequestBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JiraExpressionEvalRequestBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JiraExpressionEvalRequestBean
        $AllProperties = ("context", "expression")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'expression' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expression"))) {
            throw "Error! JSON cannot be serialized due to the required property 'expression' missing."
        } else {
            $Expression = $JsonParameters.PSobject.Properties["expression"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "context"))) { #optional property not found
            $Context = $null
        } else {
            $Context = $JsonParameters.PSobject.Properties["context"].value
        }

        $PSO = [PSCustomObject]@{
            "context" = ${Context}
            "expression" = ${Expression}
        }

        return $PSO
    }

}

