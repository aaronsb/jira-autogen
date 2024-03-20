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

The conditions group associated with the transition.

.PARAMETER ConditionGroups
The nested conditions of the condition group.
.PARAMETER Conditions
The rules for this condition.
.PARAMETER Operation
Determines how the conditions in the group are evaluated. Accepts either `ANY` or `ALL`. If `ANY` is used, at least one condition in the group must be true for the group to evaluate to true. If `ALL` is used, all conditions in the group must be true for the group to evaluate to true.
.OUTPUTS

ConditionGroupConfiguration<PSCustomObject>
#>

function Initialize-ConditionGroupConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ConditionGroups},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Conditions},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ANY", "ALL")]
        [String]
        ${Operation}
    )

    Process {
        'Creating PSCustomObject: PSJira => ConditionGroupConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "conditionGroups" = ${ConditionGroups}
            "conditions" = ${Conditions}
            "operation" = ${Operation}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConditionGroupConfiguration<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConditionGroupConfiguration<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConditionGroupConfiguration<PSCustomObject>
#>
function ConvertFrom-JsonToConditionGroupConfiguration {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ConditionGroupConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConditionGroupConfiguration
        $AllProperties = ("conditionGroups", "conditions", "operation")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "conditionGroups"))) { #optional property not found
            $ConditionGroups = $null
        } else {
            $ConditionGroups = $JsonParameters.PSobject.Properties["conditionGroups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "conditions"))) { #optional property not found
            $Conditions = $null
        } else {
            $Conditions = $JsonParameters.PSobject.Properties["conditions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) { #optional property not found
            $Operation = $null
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        $PSO = [PSCustomObject]@{
            "conditionGroups" = ${ConditionGroups}
            "conditions" = ${Conditions}
            "operation" = ${Operation}
        }

        return $PSO
    }

}

