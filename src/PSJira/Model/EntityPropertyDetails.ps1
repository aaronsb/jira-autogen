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

.PARAMETER EntityId
The entity property ID.
.PARAMETER Key
The entity property key.
.PARAMETER Value
The new value of the entity property.
.OUTPUTS

EntityPropertyDetails<PSCustomObject>
#>

function Initialize-EntityPropertyDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${EntityId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSJira => EntityPropertyDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $EntityId) {
            throw "invalid value for 'EntityId', 'EntityId' cannot be null."
        }

        if ($null -eq $Key) {
            throw "invalid value for 'Key', 'Key' cannot be null."
        }

        if ($null -eq $Value) {
            throw "invalid value for 'Value', 'Value' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "entityId" = ${EntityId}
            "key" = ${Key}
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EntityPropertyDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to EntityPropertyDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EntityPropertyDetails<PSCustomObject>
#>
function ConvertFrom-JsonToEntityPropertyDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => EntityPropertyDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EntityPropertyDetails
        $AllProperties = ("entityId", "key", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'entityId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entityId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'entityId' missing."
        } else {
            $EntityId = $JsonParameters.PSobject.Properties["entityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) {
            throw "Error! JSON cannot be serialized due to the required property 'key' missing."
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) {
            throw "Error! JSON cannot be serialized due to the required property 'value' missing."
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "entityId" = ${EntityId}
            "key" = ${Key}
            "value" = ${Value}
        }

        return $PSO
    }

}

