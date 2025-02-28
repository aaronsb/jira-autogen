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

Information about the most recent use of a field.

.PARAMETER Type
Last used value type:   *  *TRACKED*: field is tracked and a last used date is available.  *  *NOT\_TRACKED*: field is not tracked, last used date is not available.  *  *NO\_INFORMATION*: field is tracked, but no last used date is available.
.PARAMETER Value
The date when the value of the field last changed.
.OUTPUTS

FieldLastUsed<PSCustomObject>
#>

function Initialize-FieldLastUsed {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("TRACKED", "NOT_TRACKED", "NO_INFORMATION")]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSJira => FieldLastUsed' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FieldLastUsed<PSCustomObject>

.DESCRIPTION

Convert from JSON to FieldLastUsed<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FieldLastUsed<PSCustomObject>
#>
function ConvertFrom-JsonToFieldLastUsed {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => FieldLastUsed' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FieldLastUsed
        $AllProperties = ("type", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "value" = ${Value}
        }

        return $PSO
    }

}

