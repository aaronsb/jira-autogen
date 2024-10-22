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

.PARAMETER Array
No description available.
.PARAMETER BigDecimal
No description available.
.PARAMETER BigInteger
No description available.
.PARAMETER BigIntegerValue
No description available.
.PARAMETER Binary
No description available.
.PARAMETER BinaryValue
No description available.
.PARAMETER Boolean
No description available.
.PARAMETER BooleanValue
No description available.
.PARAMETER ContainerNode
No description available.
.PARAMETER DecimalValue
No description available.
.PARAMETER Double
No description available.
.PARAMETER DoubleValue
No description available.
.PARAMETER Elements
No description available.
.PARAMETER FieldNames
No description available.
.PARAMETER Fields
No description available.
.PARAMETER FloatingPointNumber
No description available.
.PARAMETER Int
No description available.
.PARAMETER IntValue
No description available.
.PARAMETER IntegralNumber
No description available.
.PARAMETER Long
No description available.
.PARAMETER LongValue
No description available.
.PARAMETER MissingNode
No description available.
.PARAMETER VarNull
No description available.
.PARAMETER Number
No description available.
.PARAMETER NumberType
No description available.
.PARAMETER NumberValue
No description available.
.PARAMETER Object
No description available.
.PARAMETER Pojo
No description available.
.PARAMETER TextValue
No description available.
.PARAMETER Textual
No description available.
.PARAMETER ValueAsBoolean
No description available.
.PARAMETER ValueAsDouble
No description available.
.PARAMETER ValueAsInt
No description available.
.PARAMETER ValueAsLong
No description available.
.PARAMETER ValueAsText
No description available.
.PARAMETER ValueNode
No description available.
.OUTPUTS

JsonNode<PSCustomObject>
#>

function Initialize-JsonNode {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Array},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${BigDecimal},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${BigInteger},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${BigIntegerValue},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Binary},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${BinaryValue},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Boolean},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${BooleanValue},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ContainerNode},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${DecimalValue},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Double},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${DoubleValue},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Elements},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FieldNames},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Fields},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${FloatingPointNumber},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Int},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IntValue},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IntegralNumber},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Long},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${LongValue},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${MissingNode},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${VarNull},
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Number},
        [Parameter(Position = 24, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("INT", "LONG", "BIG_INTEGER", "FLOAT", "DOUBLE", "BIG_DECIMAL")]
        [String]
        ${NumberType},
        [Parameter(Position = 25, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${NumberValue},
        [Parameter(Position = 26, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Object},
        [Parameter(Position = 27, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Pojo},
        [Parameter(Position = 28, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TextValue},
        [Parameter(Position = 29, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Textual},
        [Parameter(Position = 30, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ValueAsBoolean},
        [Parameter(Position = 31, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${ValueAsDouble},
        [Parameter(Position = 32, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ValueAsInt},
        [Parameter(Position = 33, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ValueAsLong},
        [Parameter(Position = 34, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ValueAsText},
        [Parameter(Position = 35, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ValueNode}
    )

    Process {
        'Creating PSCustomObject: PSJira => JsonNode' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "array" = ${Array}
            "bigDecimal" = ${BigDecimal}
            "bigInteger" = ${BigInteger}
            "bigIntegerValue" = ${BigIntegerValue}
            "binary" = ${Binary}
            "binaryValue" = ${BinaryValue}
            "boolean" = ${Boolean}
            "booleanValue" = ${BooleanValue}
            "containerNode" = ${ContainerNode}
            "decimalValue" = ${DecimalValue}
            "double" = ${Double}
            "doubleValue" = ${DoubleValue}
            "elements" = ${Elements}
            "fieldNames" = ${FieldNames}
            "fields" = ${Fields}
            "floatingPointNumber" = ${FloatingPointNumber}
            "int" = ${Int}
            "intValue" = ${IntValue}
            "integralNumber" = ${IntegralNumber}
            "long" = ${Long}
            "longValue" = ${LongValue}
            "missingNode" = ${MissingNode}
            "null" = ${VarNull}
            "number" = ${Number}
            "numberType" = ${NumberType}
            "numberValue" = ${NumberValue}
            "object" = ${Object}
            "pojo" = ${Pojo}
            "textValue" = ${TextValue}
            "textual" = ${Textual}
            "valueAsBoolean" = ${ValueAsBoolean}
            "valueAsDouble" = ${ValueAsDouble}
            "valueAsInt" = ${ValueAsInt}
            "valueAsLong" = ${ValueAsLong}
            "valueAsText" = ${ValueAsText}
            "valueNode" = ${ValueNode}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JsonNode<PSCustomObject>

.DESCRIPTION

Convert from JSON to JsonNode<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JsonNode<PSCustomObject>
#>
function ConvertFrom-JsonToJsonNode {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JsonNode' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JsonNode
        $AllProperties = ("array", "bigDecimal", "bigInteger", "bigIntegerValue", "binary", "binaryValue", "boolean", "booleanValue", "containerNode", "decimalValue", "double", "doubleValue", "elements", "fieldNames", "fields", "floatingPointNumber", "int", "intValue", "integralNumber", "long", "longValue", "missingNode", "null", "number", "numberType", "numberValue", "object", "pojo", "textValue", "textual", "valueAsBoolean", "valueAsDouble", "valueAsInt", "valueAsLong", "valueAsText", "valueNode")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "array"))) { #optional property not found
            $Array = $null
        } else {
            $Array = $JsonParameters.PSobject.Properties["array"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bigDecimal"))) { #optional property not found
            $BigDecimal = $null
        } else {
            $BigDecimal = $JsonParameters.PSobject.Properties["bigDecimal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bigInteger"))) { #optional property not found
            $BigInteger = $null
        } else {
            $BigInteger = $JsonParameters.PSobject.Properties["bigInteger"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bigIntegerValue"))) { #optional property not found
            $BigIntegerValue = $null
        } else {
            $BigIntegerValue = $JsonParameters.PSobject.Properties["bigIntegerValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "binary"))) { #optional property not found
            $Binary = $null
        } else {
            $Binary = $JsonParameters.PSobject.Properties["binary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "binaryValue"))) { #optional property not found
            $BinaryValue = $null
        } else {
            $BinaryValue = $JsonParameters.PSobject.Properties["binaryValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "boolean"))) { #optional property not found
            $Boolean = $null
        } else {
            $Boolean = $JsonParameters.PSobject.Properties["boolean"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "booleanValue"))) { #optional property not found
            $BooleanValue = $null
        } else {
            $BooleanValue = $JsonParameters.PSobject.Properties["booleanValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "containerNode"))) { #optional property not found
            $ContainerNode = $null
        } else {
            $ContainerNode = $JsonParameters.PSobject.Properties["containerNode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decimalValue"))) { #optional property not found
            $DecimalValue = $null
        } else {
            $DecimalValue = $JsonParameters.PSobject.Properties["decimalValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "double"))) { #optional property not found
            $Double = $null
        } else {
            $Double = $JsonParameters.PSobject.Properties["double"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "doubleValue"))) { #optional property not found
            $DoubleValue = $null
        } else {
            $DoubleValue = $JsonParameters.PSobject.Properties["doubleValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "elements"))) { #optional property not found
            $Elements = $null
        } else {
            $Elements = $JsonParameters.PSobject.Properties["elements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fieldNames"))) { #optional property not found
            $FieldNames = $null
        } else {
            $FieldNames = $JsonParameters.PSobject.Properties["fieldNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "floatingPointNumber"))) { #optional property not found
            $FloatingPointNumber = $null
        } else {
            $FloatingPointNumber = $JsonParameters.PSobject.Properties["floatingPointNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "int"))) { #optional property not found
            $Int = $null
        } else {
            $Int = $JsonParameters.PSobject.Properties["int"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "intValue"))) { #optional property not found
            $IntValue = $null
        } else {
            $IntValue = $JsonParameters.PSobject.Properties["intValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "integralNumber"))) { #optional property not found
            $IntegralNumber = $null
        } else {
            $IntegralNumber = $JsonParameters.PSobject.Properties["integralNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "long"))) { #optional property not found
            $Long = $null
        } else {
            $Long = $JsonParameters.PSobject.Properties["long"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "longValue"))) { #optional property not found
            $LongValue = $null
        } else {
            $LongValue = $JsonParameters.PSobject.Properties["longValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "missingNode"))) { #optional property not found
            $MissingNode = $null
        } else {
            $MissingNode = $JsonParameters.PSobject.Properties["missingNode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "null"))) { #optional property not found
            $VarNull = $null
        } else {
            $VarNull = $JsonParameters.PSobject.Properties["null"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "number"))) { #optional property not found
            $Number = $null
        } else {
            $Number = $JsonParameters.PSobject.Properties["number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberType"))) { #optional property not found
            $NumberType = $null
        } else {
            $NumberType = $JsonParameters.PSobject.Properties["numberType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberValue"))) { #optional property not found
            $NumberValue = $null
        } else {
            $NumberValue = $JsonParameters.PSobject.Properties["numberValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "object"))) { #optional property not found
            $Object = $null
        } else {
            $Object = $JsonParameters.PSobject.Properties["object"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pojo"))) { #optional property not found
            $Pojo = $null
        } else {
            $Pojo = $JsonParameters.PSobject.Properties["pojo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "textValue"))) { #optional property not found
            $TextValue = $null
        } else {
            $TextValue = $JsonParameters.PSobject.Properties["textValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "textual"))) { #optional property not found
            $Textual = $null
        } else {
            $Textual = $JsonParameters.PSobject.Properties["textual"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "valueAsBoolean"))) { #optional property not found
            $ValueAsBoolean = $null
        } else {
            $ValueAsBoolean = $JsonParameters.PSobject.Properties["valueAsBoolean"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "valueAsDouble"))) { #optional property not found
            $ValueAsDouble = $null
        } else {
            $ValueAsDouble = $JsonParameters.PSobject.Properties["valueAsDouble"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "valueAsInt"))) { #optional property not found
            $ValueAsInt = $null
        } else {
            $ValueAsInt = $JsonParameters.PSobject.Properties["valueAsInt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "valueAsLong"))) { #optional property not found
            $ValueAsLong = $null
        } else {
            $ValueAsLong = $JsonParameters.PSobject.Properties["valueAsLong"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "valueAsText"))) { #optional property not found
            $ValueAsText = $null
        } else {
            $ValueAsText = $JsonParameters.PSobject.Properties["valueAsText"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "valueNode"))) { #optional property not found
            $ValueNode = $null
        } else {
            $ValueNode = $JsonParameters.PSobject.Properties["valueNode"].value
        }

        $PSO = [PSCustomObject]@{
            "array" = ${Array}
            "bigDecimal" = ${BigDecimal}
            "bigInteger" = ${BigInteger}
            "bigIntegerValue" = ${BigIntegerValue}
            "binary" = ${Binary}
            "binaryValue" = ${BinaryValue}
            "boolean" = ${Boolean}
            "booleanValue" = ${BooleanValue}
            "containerNode" = ${ContainerNode}
            "decimalValue" = ${DecimalValue}
            "double" = ${Double}
            "doubleValue" = ${DoubleValue}
            "elements" = ${Elements}
            "fieldNames" = ${FieldNames}
            "fields" = ${Fields}
            "floatingPointNumber" = ${FloatingPointNumber}
            "int" = ${Int}
            "intValue" = ${IntValue}
            "integralNumber" = ${IntegralNumber}
            "long" = ${Long}
            "longValue" = ${LongValue}
            "missingNode" = ${MissingNode}
            "null" = ${VarNull}
            "number" = ${Number}
            "numberType" = ${NumberType}
            "numberValue" = ${NumberValue}
            "object" = ${Object}
            "pojo" = ${Pojo}
            "textValue" = ${TextValue}
            "textual" = ${Textual}
            "valueAsBoolean" = ${ValueAsBoolean}
            "valueAsDouble" = ${ValueAsDouble}
            "valueAsInt" = ${ValueAsInt}
            "valueAsLong" = ${ValueAsLong}
            "valueAsText" = ${ValueAsText}
            "valueNode" = ${ValueNode}
        }

        return $PSO
    }

}

