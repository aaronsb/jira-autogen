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

A list of JQL queries to parse.

.PARAMETER Queries
A list of queries to parse.
.OUTPUTS

JqlQueriesToParse<PSCustomObject>
#>

function Initialize-JqlQueriesToParse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Queries}
    )

    Process {
        'Creating PSCustomObject: PSJira => JqlQueriesToParse' | Write-Debug
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

Convert from JSON to JqlQueriesToParse<PSCustomObject>

.DESCRIPTION

Convert from JSON to JqlQueriesToParse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JqlQueriesToParse<PSCustomObject>
#>
function ConvertFrom-JsonToJqlQueriesToParse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JqlQueriesToParse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JqlQueriesToParse
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

