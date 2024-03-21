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

Details of a field that can be used in advanced searches.

.PARAMETER Auto
Whether the field provide auto-complete suggestions.
.PARAMETER Cfid
If the item is a custom field, the ID of the custom field.
.PARAMETER Deprecated
Whether this field has been deprecated.
.PARAMETER DeprecatedSearcherKey
The searcher key of the field, only passed when the field is deprecated.
.PARAMETER DisplayName
The display name contains the following:   *  for system fields, the field name. For example, `Summary`.  *  for collapsed custom fields, the field name followed by a hyphen and then the field name and field type. For example, `Component - Component[Dropdown]`.  *  for other custom fields, the field name followed by a hyphen and then the custom field ID. For example, `Component - cf[10061]`.
.PARAMETER Operators
The valid search operators for the field.
.PARAMETER Orderable
Whether the field can be used in a query's `ORDER BY` clause.
.PARAMETER Searchable
Whether the content of this field can be searched.
.PARAMETER Types
The data types of items in the field.
.PARAMETER Value
The field identifier.
.OUTPUTS

FieldReferenceData<PSCustomObject>
#>

function Initialize-FieldReferenceData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("true", "false")]
        [String]
        ${Auto},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Cfid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("true", "false")]
        [String]
        ${Deprecated},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeprecatedSearcherKey},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Operators},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("true", "false")]
        [String]
        ${Orderable},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("true", "false")]
        [String]
        ${Searchable},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Types},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSJira => FieldReferenceData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "auto" = ${Auto}
            "cfid" = ${Cfid}
            "deprecated" = ${Deprecated}
            "deprecatedSearcherKey" = ${DeprecatedSearcherKey}
            "displayName" = ${DisplayName}
            "operators" = ${Operators}
            "orderable" = ${Orderable}
            "searchable" = ${Searchable}
            "types" = ${Types}
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FieldReferenceData<PSCustomObject>

.DESCRIPTION

Convert from JSON to FieldReferenceData<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FieldReferenceData<PSCustomObject>
#>
function ConvertFrom-JsonToFieldReferenceData {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => FieldReferenceData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FieldReferenceData
        $AllProperties = ("auto", "cfid", "deprecated", "deprecatedSearcherKey", "displayName", "operators", "orderable", "searchable", "types", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "auto"))) { #optional property not found
            $Auto = $null
        } else {
            $Auto = $JsonParameters.PSobject.Properties["auto"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfid"))) { #optional property not found
            $Cfid = $null
        } else {
            $Cfid = $JsonParameters.PSobject.Properties["cfid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deprecated"))) { #optional property not found
            $Deprecated = $null
        } else {
            $Deprecated = $JsonParameters.PSobject.Properties["deprecated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deprecatedSearcherKey"))) { #optional property not found
            $DeprecatedSearcherKey = $null
        } else {
            $DeprecatedSearcherKey = $JsonParameters.PSobject.Properties["deprecatedSearcherKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operators"))) { #optional property not found
            $Operators = $null
        } else {
            $Operators = $JsonParameters.PSobject.Properties["operators"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "orderable"))) { #optional property not found
            $Orderable = $null
        } else {
            $Orderable = $JsonParameters.PSobject.Properties["orderable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "searchable"))) { #optional property not found
            $Searchable = $null
        } else {
            $Searchable = $JsonParameters.PSobject.Properties["searchable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "types"))) { #optional property not found
            $Types = $null
        } else {
            $Types = $JsonParameters.PSobject.Properties["types"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "auto" = ${Auto}
            "cfid" = ${Cfid}
            "deprecated" = ${Deprecated}
            "deprecatedSearcherKey" = ${DeprecatedSearcherKey}
            "displayName" = ${DisplayName}
            "operators" = ${Operators}
            "orderable" = ${Orderable}
            "searchable" = ${Searchable}
            "types" = ${Types}
            "value" = ${Value}
        }

        return $PSO
    }

}
