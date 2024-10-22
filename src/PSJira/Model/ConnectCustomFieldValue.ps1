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

A list of custom field details.

.PARAMETER Type
The type of custom field.
.PARAMETER FieldID
The custom field ID.
.PARAMETER IssueID
The issue ID.
.PARAMETER Number
The value of number type custom field when `_type` is `NumberIssueField`.
.PARAMETER OptionID
The value of single select and multiselect custom field type when `_type` is `SingleSelectIssueField` or `MultiSelectIssueField`.
.PARAMETER RichText
The value of richText type custom field when `_type` is `RichTextIssueField`.
.PARAMETER String
The value of string type custom field when `_type` is `StringIssueField`.
.PARAMETER Text
The value of of text custom field type when `_type` is `TextIssueField`.
.OUTPUTS

ConnectCustomFieldValue<PSCustomObject>
#>

function Initialize-ConnectCustomFieldValue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("StringIssueField", "NumberIssueField", "RichTextIssueField", "SingleSelectIssueField", "MultiSelectIssueField", "TextIssueField")]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${FieldID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${IssueID},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Number},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OptionID},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RichText},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${String},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Text}
    )

    Process {
        'Creating PSCustomObject: PSJira => ConnectCustomFieldValue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $FieldID) {
            throw "invalid value for 'FieldID', 'FieldID' cannot be null."
        }

        if ($null -eq $IssueID) {
            throw "invalid value for 'IssueID', 'IssueID' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "_type" = ${Type}
            "fieldID" = ${FieldID}
            "issueID" = ${IssueID}
            "number" = ${Number}
            "optionID" = ${OptionID}
            "richText" = ${RichText}
            "string" = ${String}
            "text" = ${Text}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectCustomFieldValue<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectCustomFieldValue<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectCustomFieldValue<PSCustomObject>
#>
function ConvertFrom-JsonToConnectCustomFieldValue {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ConnectCustomFieldValue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConnectCustomFieldValue
        $AllProperties = ("_type", "fieldID", "issueID", "number", "optionID", "richText", "string", "text")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property '_type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_type"))) {
            throw "Error! JSON cannot be serialized due to the required property '_type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["_type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fieldID"))) {
            throw "Error! JSON cannot be serialized due to the required property 'fieldID' missing."
        } else {
            $FieldID = $JsonParameters.PSobject.Properties["fieldID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueID"))) {
            throw "Error! JSON cannot be serialized due to the required property 'issueID' missing."
        } else {
            $IssueID = $JsonParameters.PSobject.Properties["issueID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "number"))) { #optional property not found
            $Number = $null
        } else {
            $Number = $JsonParameters.PSobject.Properties["number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "optionID"))) { #optional property not found
            $OptionID = $null
        } else {
            $OptionID = $JsonParameters.PSobject.Properties["optionID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "richText"))) { #optional property not found
            $RichText = $null
        } else {
            $RichText = $JsonParameters.PSobject.Properties["richText"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "string"))) { #optional property not found
            $String = $null
        } else {
            $String = $JsonParameters.PSobject.Properties["string"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) { #optional property not found
            $Text = $null
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        $PSO = [PSCustomObject]@{
            "_type" = ${Type}
            "fieldID" = ${FieldID}
            "issueID" = ${IssueID}
            "number" = ${Number}
            "optionID" = ${OptionID}
            "richText" = ${RichText}
            "string" = ${String}
            "text" = ${Text}
        }

        return $PSO
    }

}

