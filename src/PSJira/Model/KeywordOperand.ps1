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

An operand that is a JQL keyword. See [Advanced searching - keywords reference](https://confluence.atlassian.com/jiracorecloud/advanced-searching-keywords-reference-765593717.html#Advancedsearching-keywordsreference-EMPTYEMPTY) for more information about operand keywords.

.PARAMETER Keyword
The keyword that is the operand value.
.OUTPUTS

KeywordOperand<PSCustomObject>
#>

function Initialize-KeywordOperand {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("empty")]
        [String]
        ${Keyword}
    )

    Process {
        'Creating PSCustomObject: PSJira => KeywordOperand' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Keyword) {
            throw "invalid value for 'Keyword', 'Keyword' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "keyword" = ${Keyword}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to KeywordOperand<PSCustomObject>

.DESCRIPTION

Convert from JSON to KeywordOperand<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

KeywordOperand<PSCustomObject>
#>
function ConvertFrom-JsonToKeywordOperand {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => KeywordOperand' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in KeywordOperand
        $AllProperties = ("keyword")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'keyword' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "keyword"))) {
            throw "Error! JSON cannot be serialized due to the required property 'keyword' missing."
        } else {
            $Keyword = $JsonParameters.PSobject.Properties["keyword"].value
        }

        $PSO = [PSCustomObject]@{
            "keyword" = ${Keyword}
        }

        return $PSO
    }

}

