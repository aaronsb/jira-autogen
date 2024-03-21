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

The JQL query to sanitize for the account ID. If the account ID is null, sanitizing is performed for an anonymous user.

.PARAMETER AccountId
The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
.PARAMETER Query
The query to sanitize.
.OUTPUTS

JqlQueryToSanitize<PSCustomObject>
#>

function Initialize-JqlQueryToSanitize {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Query}
    )

    Process {
        'Creating PSCustomObject: PSJira => JqlQueryToSanitize' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccountId -and $AccountId.length -gt 128) {
            throw "invalid value for 'AccountId', the character length must be smaller than or equal to 128."
        }

        if ($null -eq $Query) {
            throw "invalid value for 'Query', 'Query' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "query" = ${Query}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JqlQueryToSanitize<PSCustomObject>

.DESCRIPTION

Convert from JSON to JqlQueryToSanitize<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JqlQueryToSanitize<PSCustomObject>
#>
function ConvertFrom-JsonToJqlQueryToSanitize {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JqlQueryToSanitize' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JqlQueryToSanitize
        $AllProperties = ("accountId", "query")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "query" = ${Query}
        }

        return $PSO
    }

}
