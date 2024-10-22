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

The default value for a multiple version picker custom field.

.PARAMETER Type
No description available.
.PARAMETER VersionIds
The IDs of the default versions.
.PARAMETER VersionOrder
The order the pickable versions are displayed in. If not provided, the released-first order is used. Available version orders are `""releasedFirst""` and `""unreleasedFirst""`.
.OUTPUTS

CustomFieldContextDefaultValueMultipleVersionPicker<PSCustomObject>
#>

function Initialize-CustomFieldContextDefaultValueMultipleVersionPicker {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${VersionIds},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VersionOrder}
    )

    Process {
        'Creating PSCustomObject: PSJira => CustomFieldContextDefaultValueMultipleVersionPicker' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $VersionIds) {
            throw "invalid value for 'VersionIds', 'VersionIds' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "versionIds" = ${VersionIds}
            "versionOrder" = ${VersionOrder}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CustomFieldContextDefaultValueMultipleVersionPicker<PSCustomObject>

.DESCRIPTION

Convert from JSON to CustomFieldContextDefaultValueMultipleVersionPicker<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CustomFieldContextDefaultValueMultipleVersionPicker<PSCustomObject>
#>
function ConvertFrom-JsonToCustomFieldContextDefaultValueMultipleVersionPicker {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CustomFieldContextDefaultValueMultipleVersionPicker' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CustomFieldContextDefaultValueMultipleVersionPicker
        $AllProperties = ("type", "versionIds", "versionOrder")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "versionIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'versionIds' missing."
        } else {
            $VersionIds = $JsonParameters.PSobject.Properties["versionIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "versionOrder"))) { #optional property not found
            $VersionOrder = $null
        } else {
            $VersionOrder = $JsonParameters.PSobject.Properties["versionOrder"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "versionIds" = ${VersionIds}
            "versionOrder" = ${VersionOrder}
        }

        return $PSO
    }

}

