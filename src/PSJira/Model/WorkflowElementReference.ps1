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

A reference to the location of the error. This will be null if the error does not refer to a specific element.

.PARAMETER PropertyKey
A property key.
.PARAMETER RuleId
A rule ID.
.PARAMETER StatusMappingReference
No description available.
.PARAMETER StatusReference
A status reference.
.PARAMETER TransitionId
A transition ID.
.OUTPUTS

WorkflowElementReference<PSCustomObject>
#>

function Initialize-WorkflowElementReference {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PropertyKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RuleId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StatusMappingReference},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StatusReference},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TransitionId}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowElementReference' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "propertyKey" = ${PropertyKey}
            "ruleId" = ${RuleId}
            "statusMappingReference" = ${StatusMappingReference}
            "statusReference" = ${StatusReference}
            "transitionId" = ${TransitionId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowElementReference<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowElementReference<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowElementReference<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowElementReference {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowElementReference' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowElementReference
        $AllProperties = ("propertyKey", "ruleId", "statusMappingReference", "statusReference", "transitionId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "propertyKey"))) { #optional property not found
            $PropertyKey = $null
        } else {
            $PropertyKey = $JsonParameters.PSobject.Properties["propertyKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ruleId"))) { #optional property not found
            $RuleId = $null
        } else {
            $RuleId = $JsonParameters.PSobject.Properties["ruleId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusMappingReference"))) { #optional property not found
            $StatusMappingReference = $null
        } else {
            $StatusMappingReference = $JsonParameters.PSobject.Properties["statusMappingReference"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusReference"))) { #optional property not found
            $StatusReference = $null
        } else {
            $StatusReference = $JsonParameters.PSobject.Properties["statusReference"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "transitionId"))) { #optional property not found
            $TransitionId = $null
        } else {
            $TransitionId = $JsonParameters.PSobject.Properties["transitionId"].value
        }

        $PSO = [PSCustomObject]@{
            "propertyKey" = ${PropertyKey}
            "ruleId" = ${RuleId}
            "statusMappingReference" = ${StatusMappingReference}
            "statusReference" = ${StatusReference}
            "transitionId" = ${TransitionId}
        }

        return $PSO
    }

}

