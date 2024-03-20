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

The details of the workflows to update.

.PARAMETER DefaultStatusMappings
The mapping of old to new status ID.
.PARAMETER Description
The new description for this workflow.
.PARAMETER Id
The ID of this workflow.
.PARAMETER StartPointLayout
No description available.
.PARAMETER StatusMappings
The mapping of old to new status ID for a specific project and issue type.
.PARAMETER Statuses
The statuses associated with this workflow.
.PARAMETER Transitions
The transitions of this workflow.
.PARAMETER Version
No description available.
.OUTPUTS

WorkflowUpdate<PSCustomObject>
#>

function Initialize-WorkflowUpdate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DefaultStatusMappings},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StartPointLayout},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${StatusMappings},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Statuses},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Transitions},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Version}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Statuses) {
            throw "invalid value for 'Statuses', 'Statuses' cannot be null."
        }

        if ($null -eq $Transitions) {
            throw "invalid value for 'Transitions', 'Transitions' cannot be null."
        }

        if ($null -eq $Version) {
            throw "invalid value for 'Version', 'Version' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "defaultStatusMappings" = ${DefaultStatusMappings}
            "description" = ${Description}
            "id" = ${Id}
            "startPointLayout" = ${StartPointLayout}
            "statusMappings" = ${StatusMappings}
            "statuses" = ${Statuses}
            "transitions" = ${Transitions}
            "version" = ${Version}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowUpdate<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowUpdate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowUpdate<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowUpdate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $WorkflowUpdateAdditionalProperties = @{}

        # check if Json contains properties not defined in WorkflowUpdate
        $AllProperties = ("defaultStatusMappings", "description", "id", "startPointLayout", "statusMappings", "statuses", "transitions", "version")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $WorkflowUpdateAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statuses"))) {
            throw "Error! JSON cannot be serialized due to the required property 'statuses' missing."
        } else {
            $Statuses = $JsonParameters.PSobject.Properties["statuses"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "transitions"))) {
            throw "Error! JSON cannot be serialized due to the required property 'transitions' missing."
        } else {
            $Transitions = $JsonParameters.PSobject.Properties["transitions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) {
            throw "Error! JSON cannot be serialized due to the required property 'version' missing."
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "defaultStatusMappings"))) { #optional property not found
            $DefaultStatusMappings = $null
        } else {
            $DefaultStatusMappings = $JsonParameters.PSobject.Properties["defaultStatusMappings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startPointLayout"))) { #optional property not found
            $StartPointLayout = $null
        } else {
            $StartPointLayout = $JsonParameters.PSobject.Properties["startPointLayout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusMappings"))) { #optional property not found
            $StatusMappings = $null
        } else {
            $StatusMappings = $JsonParameters.PSobject.Properties["statusMappings"].value
        }

        $PSO = [PSCustomObject]@{
            "defaultStatusMappings" = ${DefaultStatusMappings}
            "description" = ${Description}
            "id" = ${Id}
            "startPointLayout" = ${StartPointLayout}
            "statusMappings" = ${StatusMappings}
            "statuses" = ${Statuses}
            "transitions" = ${Transitions}
            "version" = ${Version}
            "AdditionalProperties" = $WorkflowUpdateAdditionalProperties
        }

        return $PSO
    }

}

