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

Details of a workflow.

.PARAMETER Description
The description of the workflow.
.PARAMETER Id
The ID of the workflow.
.PARAMETER IsEditable
Indicates if the workflow can be edited.
.PARAMETER Name
The name of the workflow.
.PARAMETER Scope
No description available.
.PARAMETER StartPointLayout
No description available.
.PARAMETER Statuses
The statuses referenced in this workflow.
.PARAMETER TaskId
If there is a current [asynchronous task](#async-operations) operation for this workflow.
.PARAMETER Transitions
The transitions of the workflow.
.PARAMETER Usages
Use the optional `workflows.usages` expand to get additional information about the projects and issue types associated with the requested workflows.
.PARAMETER Version
No description available.
.OUTPUTS

JiraWorkflow<PSCustomObject>
#>

function Initialize-JiraWorkflow {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsEditable},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Scope},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StartPointLayout},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Statuses},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TaskId},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Transitions},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Usages},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Version}
    )

    Process {
        'Creating PSCustomObject: PSJira => JiraWorkflow' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "id" = ${Id}
            "isEditable" = ${IsEditable}
            "name" = ${Name}
            "scope" = ${Scope}
            "startPointLayout" = ${StartPointLayout}
            "statuses" = ${Statuses}
            "taskId" = ${TaskId}
            "transitions" = ${Transitions}
            "usages" = ${Usages}
            "version" = ${Version}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JiraWorkflow<PSCustomObject>

.DESCRIPTION

Convert from JSON to JiraWorkflow<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JiraWorkflow<PSCustomObject>
#>
function ConvertFrom-JsonToJiraWorkflow {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JiraWorkflow' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JiraWorkflow
        $AllProperties = ("description", "id", "isEditable", "name", "scope", "startPointLayout", "statuses", "taskId", "transitions", "usages", "version")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEditable"))) { #optional property not found
            $IsEditable = $null
        } else {
            $IsEditable = $JsonParameters.PSobject.Properties["isEditable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) { #optional property not found
            $Scope = $null
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startPointLayout"))) { #optional property not found
            $StartPointLayout = $null
        } else {
            $StartPointLayout = $JsonParameters.PSobject.Properties["startPointLayout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statuses"))) { #optional property not found
            $Statuses = $null
        } else {
            $Statuses = $JsonParameters.PSobject.Properties["statuses"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "taskId"))) { #optional property not found
            $TaskId = $null
        } else {
            $TaskId = $JsonParameters.PSobject.Properties["taskId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "transitions"))) { #optional property not found
            $Transitions = $null
        } else {
            $Transitions = $JsonParameters.PSobject.Properties["transitions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usages"))) { #optional property not found
            $Usages = $null
        } else {
            $Usages = $JsonParameters.PSobject.Properties["usages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "id" = ${Id}
            "isEditable" = ${IsEditable}
            "name" = ${Name}
            "scope" = ${Scope}
            "startPointLayout" = ${StartPointLayout}
            "statuses" = ${Statuses}
            "taskId" = ${TaskId}
            "transitions" = ${Transitions}
            "usages" = ${Usages}
            "version" = ${Version}
        }

        return $PSO
    }

}

