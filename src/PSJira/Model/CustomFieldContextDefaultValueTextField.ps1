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

The default text for a text custom field.

.PARAMETER Text
The default text. The maximum length is 254 characters.
.PARAMETER Type
No description available.
.OUTPUTS

CustomFieldContextDefaultValueTextField<PSCustomObject>
#>

function Initialize-CustomFieldContextDefaultValueTextField {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Text},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSJira => CustomFieldContextDefaultValueTextField' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "text" = ${Text}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CustomFieldContextDefaultValueTextField<PSCustomObject>

.DESCRIPTION

Convert from JSON to CustomFieldContextDefaultValueTextField<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CustomFieldContextDefaultValueTextField<PSCustomObject>
#>
function ConvertFrom-JsonToCustomFieldContextDefaultValueTextField {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CustomFieldContextDefaultValueTextField' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CustomFieldContextDefaultValueTextField
        $AllProperties = ("text", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) { #optional property not found
            $Text = $null
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        $PSO = [PSCustomObject]@{
            "text" = ${Text}
            "type" = ${Type}
        }

        return $PSO
    }

}

