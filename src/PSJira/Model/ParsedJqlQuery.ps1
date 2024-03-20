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

Details of a parsed JQL query.

.PARAMETER Errors
The list of syntax or validation errors.
.PARAMETER Query
The JQL query that was parsed and validated.
.PARAMETER Structure
The syntax tree of the query. Empty if the query was invalid.
.OUTPUTS

ParsedJqlQuery<PSCustomObject>
#>

function Initialize-ParsedJqlQuery {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Errors},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Query},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Structure}
    )

    Process {
        'Creating PSCustomObject: PSJira => ParsedJqlQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Query) {
            throw "invalid value for 'Query', 'Query' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "errors" = ${Errors}
            "query" = ${Query}
            "structure" = ${Structure}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ParsedJqlQuery<PSCustomObject>

.DESCRIPTION

Convert from JSON to ParsedJqlQuery<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ParsedJqlQuery<PSCustomObject>
#>
function ConvertFrom-JsonToParsedJqlQuery {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ParsedJqlQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ParsedJqlQuery
        $AllProperties = ("errors", "query", "structure")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'query' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) {
            throw "Error! JSON cannot be serialized due to the required property 'query' missing."
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "structure"))) { #optional property not found
            $Structure = $null
        } else {
            $Structure = $JsonParameters.PSobject.Properties["structure"].value
        }

        $PSO = [PSCustomObject]@{
            "errors" = ${Errors}
            "query" = ${Query}
            "structure" = ${Structure}
        }

        return $PSO
    }

}
