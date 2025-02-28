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

A list of parsed JQL queries.

.PARAMETER Queries
A list of parsed JQL queries.
.OUTPUTS

ParsedJqlQueries<PSCustomObject>
#>

function Initialize-ParsedJqlQueries {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Queries}
    )

    Process {
        'Creating PSCustomObject: PSJira => ParsedJqlQueries' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Queries) {
            throw "invalid value for 'Queries', 'Queries' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "queries" = ${Queries}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ParsedJqlQueries<PSCustomObject>

.DESCRIPTION

Convert from JSON to ParsedJqlQueries<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ParsedJqlQueries<PSCustomObject>
#>
function ConvertFrom-JsonToParsedJqlQueries {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ParsedJqlQueries' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ParsedJqlQueries
        $AllProperties = ("queries")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'queries' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queries"))) {
            throw "Error! JSON cannot be serialized due to the required property 'queries' missing."
        } else {
            $Queries = $JsonParameters.PSobject.Properties["queries"].value
        }

        $PSO = [PSCustomObject]@{
            "queries" = ${Queries}
        }

        return $PSO
    }

}

