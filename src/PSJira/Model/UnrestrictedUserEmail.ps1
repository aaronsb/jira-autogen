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

.PARAMETER AccountId
The accountId of the user
.PARAMETER Email
The email of the user
.OUTPUTS

UnrestrictedUserEmail<PSCustomObject>
#>

function Initialize-UnrestrictedUserEmail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email}
    )

    Process {
        'Creating PSCustomObject: PSJira => UnrestrictedUserEmail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "email" = ${Email}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UnrestrictedUserEmail<PSCustomObject>

.DESCRIPTION

Convert from JSON to UnrestrictedUserEmail<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UnrestrictedUserEmail<PSCustomObject>
#>
function ConvertFrom-JsonToUnrestrictedUserEmail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => UnrestrictedUserEmail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $UnrestrictedUserEmailAdditionalProperties = @{}

        # check if Json contains properties not defined in UnrestrictedUserEmail
        $AllProperties = ("accountId", "email")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $UnrestrictedUserEmailAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "email" = ${Email}
            "AdditionalProperties" = $UnrestrictedUserEmailAdditionalProperties
        }

        return $PSO
    }

}

