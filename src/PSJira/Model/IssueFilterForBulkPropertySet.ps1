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

Bulk operation filter details.

.PARAMETER CurrentValue
The value of properties to perform the bulk operation on.
.PARAMETER EntityIds
List of issues to perform the bulk operation on.
.PARAMETER HasProperty
Whether the bulk operation occurs only when the property is present on or absent from an issue.
.OUTPUTS

IssueFilterForBulkPropertySet<PSCustomObject>
#>

function Initialize-IssueFilterForBulkPropertySet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CurrentValue},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int64[]]
        ${EntityIds},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${HasProperty}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueFilterForBulkPropertySet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "currentValue" = ${CurrentValue}
            "entityIds" = ${EntityIds}
            "hasProperty" = ${HasProperty}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueFilterForBulkPropertySet<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueFilterForBulkPropertySet<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueFilterForBulkPropertySet<PSCustomObject>
#>
function ConvertFrom-JsonToIssueFilterForBulkPropertySet {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueFilterForBulkPropertySet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueFilterForBulkPropertySet
        $AllProperties = ("currentValue", "entityIds", "hasProperty")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "currentValue"))) { #optional property not found
            $CurrentValue = $null
        } else {
            $CurrentValue = $JsonParameters.PSobject.Properties["currentValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entityIds"))) { #optional property not found
            $EntityIds = $null
        } else {
            $EntityIds = $JsonParameters.PSobject.Properties["entityIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasProperty"))) { #optional property not found
            $HasProperty = $null
        } else {
            $HasProperty = $JsonParameters.PSobject.Properties["hasProperty"].value
        }

        $PSO = [PSCustomObject]@{
            "currentValue" = ${CurrentValue}
            "entityIds" = ${EntityIds}
            "hasProperty" = ${HasProperty}
        }

        return $PSO
    }

}

