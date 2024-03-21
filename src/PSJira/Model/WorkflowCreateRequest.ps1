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

The create workflows payload.

.PARAMETER Scope
No description available.
.PARAMETER Statuses
The statuses to associate with the workflows.
.PARAMETER Workflows
The details of the workflows to create.
.OUTPUTS

WorkflowCreateRequest<PSCustomObject>
#>

function Initialize-WorkflowCreateRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Scope},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Statuses},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Workflows}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowCreateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Scope) {
            throw "invalid value for 'Scope', 'Scope' cannot be null."
        }

        if ($null -eq $Statuses) {
            throw "invalid value for 'Statuses', 'Statuses' cannot be null."
        }

        if ($null -eq $Workflows) {
            throw "invalid value for 'Workflows', 'Workflows' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "scope" = ${Scope}
            "statuses" = ${Statuses}
            "workflows" = ${Workflows}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowCreateRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowCreateRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowCreateRequest<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowCreateRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowCreateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowCreateRequest
        $AllProperties = ("scope", "statuses", "workflows")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'scope' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) {
            throw "Error! JSON cannot be serialized due to the required property 'scope' missing."
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statuses"))) {
            throw "Error! JSON cannot be serialized due to the required property 'statuses' missing."
        } else {
            $Statuses = $JsonParameters.PSobject.Properties["statuses"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workflows"))) {
            throw "Error! JSON cannot be serialized due to the required property 'workflows' missing."
        } else {
            $Workflows = $JsonParameters.PSobject.Properties["workflows"].value
        }

        $PSO = [PSCustomObject]@{
            "scope" = ${Scope}
            "statuses" = ${Statuses}
            "workflows" = ${Workflows}
        }

        return $PSO
    }

}
