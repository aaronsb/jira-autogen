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

Defaults for a Forge user custom field.

.PARAMETER AccountId
The ID of the default user.
.PARAMETER ContextId
The ID of the context.
.PARAMETER Type
No description available.
.PARAMETER UserFilter
No description available.
.OUTPUTS

CustomFieldContextDefaultValueForgeUserField<PSCustomObject>
#>

function Initialize-CustomFieldContextDefaultValueForgeUserField {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContextId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UserFilter}
    )

    Process {
        'Creating PSCustomObject: PSJira => CustomFieldContextDefaultValueForgeUserField' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $AccountId) {
            throw "invalid value for 'AccountId', 'AccountId' cannot be null."
        }

        if ($null -eq $ContextId) {
            throw "invalid value for 'ContextId', 'ContextId' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $UserFilter) {
            throw "invalid value for 'UserFilter', 'UserFilter' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "contextId" = ${ContextId}
            "type" = ${Type}
            "userFilter" = ${UserFilter}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CustomFieldContextDefaultValueForgeUserField<PSCustomObject>

.DESCRIPTION

Convert from JSON to CustomFieldContextDefaultValueForgeUserField<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CustomFieldContextDefaultValueForgeUserField<PSCustomObject>
#>
function ConvertFrom-JsonToCustomFieldContextDefaultValueForgeUserField {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CustomFieldContextDefaultValueForgeUserField' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CustomFieldContextDefaultValueForgeUserField
        $AllProperties = ("accountId", "contextId", "type", "userFilter")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'accountId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accountId' missing."
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userFilter"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userFilter' missing."
        } else {
            $UserFilter = $JsonParameters.PSobject.Properties["userFilter"].value
        }

        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "contextId" = ${ContextId}
            "type" = ${Type}
            "userFilter" = ${UserFilter}
        }

        return $PSO
    }

}

