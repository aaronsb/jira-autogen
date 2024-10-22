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

List of updates for a custom fields.

.PARAMETER Updates
No description available.
.OUTPUTS

MultipleCustomFieldValuesUpdateDetails<PSCustomObject>
#>

function Initialize-MultipleCustomFieldValuesUpdateDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Updates}
    )

    Process {
        'Creating PSCustomObject: PSJira => MultipleCustomFieldValuesUpdateDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "updates" = ${Updates}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MultipleCustomFieldValuesUpdateDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to MultipleCustomFieldValuesUpdateDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MultipleCustomFieldValuesUpdateDetails<PSCustomObject>
#>
function ConvertFrom-JsonToMultipleCustomFieldValuesUpdateDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => MultipleCustomFieldValuesUpdateDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in MultipleCustomFieldValuesUpdateDetails
        $AllProperties = ("updates")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updates"))) { #optional property not found
            $Updates = $null
        } else {
            $Updates = $JsonParameters.PSobject.Properties["updates"].value
        }

        $PSO = [PSCustomObject]@{
            "updates" = ${Updates}
        }

        return $PSO
    }

}

