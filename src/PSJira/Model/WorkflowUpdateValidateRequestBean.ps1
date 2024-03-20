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

.PARAMETER Payload
No description available.
.PARAMETER ValidationOptions
No description available.
.OUTPUTS

WorkflowUpdateValidateRequestBean<PSCustomObject>
#>

function Initialize-WorkflowUpdateValidateRequestBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Payload},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ValidationOptions}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowUpdateValidateRequestBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Payload) {
            throw "invalid value for 'Payload', 'Payload' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "payload" = ${Payload}
            "validationOptions" = ${ValidationOptions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowUpdateValidateRequestBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowUpdateValidateRequestBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowUpdateValidateRequestBean<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowUpdateValidateRequestBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowUpdateValidateRequestBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowUpdateValidateRequestBean
        $AllProperties = ("payload", "validationOptions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'payload' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "payload"))) {
            throw "Error! JSON cannot be serialized due to the required property 'payload' missing."
        } else {
            $Payload = $JsonParameters.PSobject.Properties["payload"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "validationOptions"))) { #optional property not found
            $ValidationOptions = $null
        } else {
            $ValidationOptions = $JsonParameters.PSobject.Properties["validationOptions"].value
        }

        $PSO = [PSCustomObject]@{
            "payload" = ${Payload}
            "validationOptions" = ${ValidationOptions}
        }

        return $PSO
    }

}

