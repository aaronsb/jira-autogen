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

List of property keys.

.PARAMETER Keys
Property key details.
.OUTPUTS

PropertyKeys<PSCustomObject>
#>

function Initialize-PropertyKeys {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Keys}
    )

    Process {
        'Creating PSCustomObject: PSJira => PropertyKeys' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "keys" = ${Keys}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PropertyKeys<PSCustomObject>

.DESCRIPTION

Convert from JSON to PropertyKeys<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PropertyKeys<PSCustomObject>
#>
function ConvertFrom-JsonToPropertyKeys {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => PropertyKeys' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PropertyKeys
        $AllProperties = ("keys")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "keys"))) { #optional property not found
            $Keys = $null
        } else {
            $Keys = $JsonParameters.PSobject.Properties["keys"].value
        }

        $PSO = [PSCustomObject]@{
            "keys" = ${Keys}
        }

        return $PSO
    }

}

