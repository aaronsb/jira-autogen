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

The default value for a User Picker (multiple) custom field.

.PARAMETER AccountIds
The IDs of the default users.
.PARAMETER ContextId
The ID of the context.
.PARAMETER Type
No description available.
.OUTPUTS

CustomFieldContextDefaultValueMultiUserPicker<PSCustomObject>
#>

function Initialize-CustomFieldContextDefaultValueMultiUserPicker {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${AccountIds},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContextId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSJira => CustomFieldContextDefaultValueMultiUserPicker' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $AccountIds) {
            throw "invalid value for 'AccountIds', 'AccountIds' cannot be null."
        }

        if ($null -eq $ContextId) {
            throw "invalid value for 'ContextId', 'ContextId' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "accountIds" = ${AccountIds}
            "contextId" = ${ContextId}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CustomFieldContextDefaultValueMultiUserPicker<PSCustomObject>

.DESCRIPTION

Convert from JSON to CustomFieldContextDefaultValueMultiUserPicker<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CustomFieldContextDefaultValueMultiUserPicker<PSCustomObject>
#>
function ConvertFrom-JsonToCustomFieldContextDefaultValueMultiUserPicker {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CustomFieldContextDefaultValueMultiUserPicker' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CustomFieldContextDefaultValueMultiUserPicker
        $AllProperties = ("accountIds", "contextId", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'accountIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accountIds' missing."
        } else {
            $AccountIds = $JsonParameters.PSobject.Properties["accountIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contextId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'contextId' missing."
        } else {
            $ContextId = $JsonParameters.PSobject.Properties["contextId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "accountIds" = ${AccountIds}
            "contextId" = ${ContextId}
            "type" = ${Type}
        }

        return $PSO
    }

}

