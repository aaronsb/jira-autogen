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

An operand that is a list of values.

.PARAMETER EncodedOperand
Encoded operand, which can be used directly in a JQL query.
.PARAMETER Values
The list of operand values.
.OUTPUTS

ListOperand<PSCustomObject>
#>

function Initialize-ListOperand {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EncodedOperand},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Values}
    )

    Process {
        'Creating PSCustomObject: PSJira => ListOperand' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Values) {
            throw "invalid value for 'Values', 'Values' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "encodedOperand" = ${EncodedOperand}
            "values" = ${Values}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ListOperand<PSCustomObject>

.DESCRIPTION

Convert from JSON to ListOperand<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ListOperand<PSCustomObject>
#>
function ConvertFrom-JsonToListOperand {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ListOperand' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ListOperand
        $AllProperties = ("encodedOperand", "values")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'values' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "values"))) {
            throw "Error! JSON cannot be serialized due to the required property 'values' missing."
        } else {
            $Values = $JsonParameters.PSobject.Properties["values"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "encodedOperand"))) { #optional property not found
            $EncodedOperand = $null
        } else {
            $EncodedOperand = $JsonParameters.PSobject.Properties["encodedOperand"].value
        }

        $PSO = [PSCustomObject]@{
            "encodedOperand" = ${EncodedOperand}
            "values" = ${Values}
        }

        return $PSO
    }

}
