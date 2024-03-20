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

Details about the complexity of the analysed Jira expression.

.PARAMETER ExpensiveOperations
Information that can be used to determine how many [expensive operations](https://developer.atlassian.com/cloud/jira/platform/jira-expressions/#expensive-operations) the evaluation of the expression will perform. This information may be a formula or number. For example:   *  `issues.map(i => i.comments)` performs as many expensive operations as there are issues on the issues list. So this parameter returns `N`, where `N` is the size of issue list.  *  `new Issue(10010).comments` gets comments for one issue, so its complexity is `2` (`1` to retrieve issue 10010 from the database plus `1` to get its comments).
.PARAMETER Variables
Variables used in the formula, mapped to the parts of the expression they refer to.
.OUTPUTS

JiraExpressionComplexity<PSCustomObject>
#>

function Initialize-JiraExpressionComplexity {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExpensiveOperations},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Variables}
    )

    Process {
        'Creating PSCustomObject: PSJira => JiraExpressionComplexity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ExpensiveOperations) {
            throw "invalid value for 'ExpensiveOperations', 'ExpensiveOperations' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "expensiveOperations" = ${ExpensiveOperations}
            "variables" = ${Variables}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JiraExpressionComplexity<PSCustomObject>

.DESCRIPTION

Convert from JSON to JiraExpressionComplexity<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JiraExpressionComplexity<PSCustomObject>
#>
function ConvertFrom-JsonToJiraExpressionComplexity {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JiraExpressionComplexity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JiraExpressionComplexity
        $AllProperties = ("expensiveOperations", "variables")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'expensiveOperations' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expensiveOperations"))) {
            throw "Error! JSON cannot be serialized due to the required property 'expensiveOperations' missing."
        } else {
            $ExpensiveOperations = $JsonParameters.PSobject.Properties["expensiveOperations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "variables"))) { #optional property not found
            $Variables = $null
        } else {
            $Variables = $JsonParameters.PSobject.Properties["variables"].value
        }

        $PSO = [PSCustomObject]@{
            "expensiveOperations" = ${ExpensiveOperations}
            "variables" = ${Variables}
        }

        return $PSO
    }

}

