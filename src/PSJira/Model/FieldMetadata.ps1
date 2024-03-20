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

The metadata describing an issue field.

.PARAMETER AllowedValues
The list of values allowed in the field.
.PARAMETER AutoCompleteUrl
The URL that can be used to automatically complete the field.
.PARAMETER Configuration
The configuration properties.
.PARAMETER DefaultValue
The default value of the field.
.PARAMETER HasDefaultValue
Whether the field has a default value.
.PARAMETER Key
The key of the field.
.PARAMETER Name
The name of the field.
.PARAMETER Operations
The list of operations that can be performed on the field.
.PARAMETER Required
Whether the field is required.
.PARAMETER Schema
No description available.
.OUTPUTS

FieldMetadata<PSCustomObject>
#>

function Initialize-FieldMetadata {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AllowedValues},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AutoCompleteUrl},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Configuration},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DefaultValue},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${HasDefaultValue},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Operations},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Required},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Schema}
    )

    Process {
        'Creating PSCustomObject: PSJira => FieldMetadata' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Key) {
            throw "invalid value for 'Key', 'Key' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Operations) {
            throw "invalid value for 'Operations', 'Operations' cannot be null."
        }

        if ($null -eq $Required) {
            throw "invalid value for 'Required', 'Required' cannot be null."
        }

        if ($null -eq $Schema) {
            throw "invalid value for 'Schema', 'Schema' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "allowedValues" = ${AllowedValues}
            "autoCompleteUrl" = ${AutoCompleteUrl}
            "configuration" = ${Configuration}
            "defaultValue" = ${DefaultValue}
            "hasDefaultValue" = ${HasDefaultValue}
            "key" = ${Key}
            "name" = ${Name}
            "operations" = ${Operations}
            "required" = ${Required}
            "schema" = ${Schema}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FieldMetadata<PSCustomObject>

.DESCRIPTION

Convert from JSON to FieldMetadata<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FieldMetadata<PSCustomObject>
#>
function ConvertFrom-JsonToFieldMetadata {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => FieldMetadata' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FieldMetadata
        $AllProperties = ("allowedValues", "autoCompleteUrl", "configuration", "defaultValue", "hasDefaultValue", "key", "name", "operations", "required", "schema")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'key' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) {
            throw "Error! JSON cannot be serialized due to the required property 'key' missing."
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operations"))) {
            throw "Error! JSON cannot be serialized due to the required property 'operations' missing."
        } else {
            $Operations = $JsonParameters.PSobject.Properties["operations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "required"))) {
            throw "Error! JSON cannot be serialized due to the required property 'required' missing."
        } else {
            $Required = $JsonParameters.PSobject.Properties["required"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "schema"))) {
            throw "Error! JSON cannot be serialized due to the required property 'schema' missing."
        } else {
            $Schema = $JsonParameters.PSobject.Properties["schema"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowedValues"))) { #optional property not found
            $AllowedValues = $null
        } else {
            $AllowedValues = $JsonParameters.PSobject.Properties["allowedValues"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "autoCompleteUrl"))) { #optional property not found
            $AutoCompleteUrl = $null
        } else {
            $AutoCompleteUrl = $JsonParameters.PSobject.Properties["autoCompleteUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configuration"))) { #optional property not found
            $Configuration = $null
        } else {
            $Configuration = $JsonParameters.PSobject.Properties["configuration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "defaultValue"))) { #optional property not found
            $DefaultValue = $null
        } else {
            $DefaultValue = $JsonParameters.PSobject.Properties["defaultValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasDefaultValue"))) { #optional property not found
            $HasDefaultValue = $null
        } else {
            $HasDefaultValue = $JsonParameters.PSobject.Properties["hasDefaultValue"].value
        }

        $PSO = [PSCustomObject]@{
            "allowedValues" = ${AllowedValues}
            "autoCompleteUrl" = ${AutoCompleteUrl}
            "configuration" = ${Configuration}
            "defaultValue" = ${DefaultValue}
            "hasDefaultValue" = ${HasDefaultValue}
            "key" = ${Key}
            "name" = ${Name}
            "operations" = ${Operations}
            "required" = ${Required}
            "schema" = ${Schema}
        }

        return $PSO
    }

}

