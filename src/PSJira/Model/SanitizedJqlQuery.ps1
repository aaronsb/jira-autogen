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

Details of the sanitized JQL query.

.PARAMETER AccountId
The account ID of the user for whom sanitization was performed.
.PARAMETER Errors
The list of errors.
.PARAMETER InitialQuery
The initial query.
.PARAMETER SanitizedQuery
The sanitized query, if there were no errors.
.OUTPUTS

SanitizedJqlQuery<PSCustomObject>
#>

function Initialize-SanitizedJqlQuery {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Errors},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InitialQuery},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SanitizedQuery}
    )

    Process {
        'Creating PSCustomObject: PSJira => SanitizedJqlQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccountId -and $AccountId.length -gt 128) {
            throw "invalid value for 'AccountId', the character length must be smaller than or equal to 128."
        }


        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "errors" = ${Errors}
            "initialQuery" = ${InitialQuery}
            "sanitizedQuery" = ${SanitizedQuery}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SanitizedJqlQuery<PSCustomObject>

.DESCRIPTION

Convert from JSON to SanitizedJqlQuery<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SanitizedJqlQuery<PSCustomObject>
#>
function ConvertFrom-JsonToSanitizedJqlQuery {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => SanitizedJqlQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SanitizedJqlQuery
        $AllProperties = ("accountId", "errors", "initialQuery", "sanitizedQuery")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "initialQuery"))) { #optional property not found
            $InitialQuery = $null
        } else {
            $InitialQuery = $JsonParameters.PSobject.Properties["initialQuery"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sanitizedQuery"))) { #optional property not found
            $SanitizedQuery = $null
        } else {
            $SanitizedQuery = $JsonParameters.PSobject.Properties["sanitizedQuery"].value
        }

        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "errors" = ${Errors}
            "initialQuery" = ${InitialQuery}
            "sanitizedQuery" = ${SanitizedQuery}
        }

        return $PSO
    }

}

