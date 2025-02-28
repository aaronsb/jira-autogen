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

The details of a UI modification's context, which define where to activate the UI modification.

.PARAMETER Id
The ID of the UI modification context.
.PARAMETER IsAvailable
Whether a context is available. For example, when a project is deleted the context becomes unavailable.
.PARAMETER IssueTypeId
The issue type ID of the context. Null is treated as a wildcard, meaning the UI modification will be applied to all issue types. Each UI modification context can have a maximum of one wildcard.
.PARAMETER ProjectId
The project ID of the context. Null is treated as a wildcard, meaning the UI modification will be applied to all projects. Each UI modification context can have a maximum of one wildcard.
.PARAMETER ViewType
The view type of the context. Only `GIC`(Global Issue Create) and `IssueView` are supported. Null is treated as a wildcard, meaning the UI modification will be applied to all view types. Each UI modification context can have a maximum of one wildcard.
.OUTPUTS

UiModificationContextDetails<PSCustomObject>
#>

function Initialize-UiModificationContextDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsAvailable},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IssueTypeId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProjectId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("GIC", "IssueView")]
        [String]
        ${ViewType}
    )

    Process {
        'Creating PSCustomObject: PSJira => UiModificationContextDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "isAvailable" = ${IsAvailable}
            "issueTypeId" = ${IssueTypeId}
            "projectId" = ${ProjectId}
            "viewType" = ${ViewType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UiModificationContextDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to UiModificationContextDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UiModificationContextDetails<PSCustomObject>
#>
function ConvertFrom-JsonToUiModificationContextDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => UiModificationContextDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UiModificationContextDetails
        $AllProperties = ("id", "isAvailable", "issueTypeId", "projectId", "viewType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isAvailable"))) { #optional property not found
            $IsAvailable = $null
        } else {
            $IsAvailable = $JsonParameters.PSobject.Properties["isAvailable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueTypeId"))) { #optional property not found
            $IssueTypeId = $null
        } else {
            $IssueTypeId = $JsonParameters.PSobject.Properties["issueTypeId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectId"))) { #optional property not found
            $ProjectId = $null
        } else {
            $ProjectId = $JsonParameters.PSobject.Properties["projectId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "viewType"))) { #optional property not found
            $ViewType = $null
        } else {
            $ViewType = $JsonParameters.PSobject.Properties["viewType"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "isAvailable" = ${IsAvailable}
            "issueTypeId" = ${IssueTypeId}
            "projectId" = ${ProjectId}
            "viewType" = ${ViewType}
        }

        return $PSO
    }

}

