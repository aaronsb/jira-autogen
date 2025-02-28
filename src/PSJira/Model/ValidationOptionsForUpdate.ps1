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

The level of validation to return from the API. If no values are provided, the default would return `WARNING` and `ERROR` level validation results.

.PARAMETER Levels
No description available.
.OUTPUTS

ValidationOptionsForUpdate<PSCustomObject>
#>

function Initialize-ValidationOptionsForUpdate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("WARNING", "ERROR")]
        [String[]]
        ${Levels}
    )

    Process {
        'Creating PSCustomObject: PSJira => ValidationOptionsForUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Levels -and $Levels.length -gt 2) {
            throw "invalid value for 'Levels', number of items must be less than or equal to 2."
        }


        $PSO = [PSCustomObject]@{
            "levels" = ${Levels}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ValidationOptionsForUpdate<PSCustomObject>

.DESCRIPTION

Convert from JSON to ValidationOptionsForUpdate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ValidationOptionsForUpdate<PSCustomObject>
#>
function ConvertFrom-JsonToValidationOptionsForUpdate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ValidationOptionsForUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ValidationOptionsForUpdate
        $AllProperties = ("levels")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "levels"))) { #optional property not found
            $Levels = $null
        } else {
            $Levels = $JsonParameters.PSobject.Properties["levels"].value
        }

        $PSO = [PSCustomObject]@{
            "levels" = ${Levels}
        }

        return $PSO
    }

}

