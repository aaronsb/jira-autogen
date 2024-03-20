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

The data type of the field.

.PARAMETER Configuration
If the field is a custom field, the configuration of the field.
.PARAMETER Custom
If the field is a custom field, the URI of the field.
.PARAMETER CustomId
If the field is a custom field, the custom ID of the field.
.PARAMETER Items
When the data type is an array, the name of the field items within the array.
.PARAMETER System
If the field is a system field, the name of the field.
.PARAMETER Type
The data type of the field.
.OUTPUTS

FieldCreateMetadataSchema<PSCustomObject>
#>

function Initialize-FieldCreateMetadataSchema {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Configuration},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Custom},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${CustomId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Items},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${System},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSJira => FieldCreateMetadataSchema' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "configuration" = ${Configuration}
            "custom" = ${Custom}
            "customId" = ${CustomId}
            "items" = ${Items}
            "system" = ${System}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FieldCreateMetadataSchema<PSCustomObject>

.DESCRIPTION

Convert from JSON to FieldCreateMetadataSchema<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FieldCreateMetadataSchema<PSCustomObject>
#>
function ConvertFrom-JsonToFieldCreateMetadataSchema {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => FieldCreateMetadataSchema' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FieldCreateMetadataSchema
        $AllProperties = ("configuration", "custom", "customId", "items", "system", "type")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configuration"))) { #optional property not found
            $Configuration = $null
        } else {
            $Configuration = $JsonParameters.PSobject.Properties["configuration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "custom"))) { #optional property not found
            $Custom = $null
        } else {
            $Custom = $JsonParameters.PSobject.Properties["custom"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "customId"))) { #optional property not found
            $CustomId = $null
        } else {
            $CustomId = $JsonParameters.PSobject.Properties["customId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "items"))) { #optional property not found
            $Items = $null
        } else {
            $Items = $JsonParameters.PSobject.Properties["items"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "system"))) { #optional property not found
            $System = $null
        } else {
            $System = $JsonParameters.PSobject.Properties["system"].value
        }

        $PSO = [PSCustomObject]@{
            "configuration" = ${Configuration}
            "custom" = ${Custom}
            "customId" = ${CustomId}
            "items" = ${Items}
            "system" = ${System}
            "type" = ${Type}
        }

        return $PSO
    }

}

