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

The project landing page info.

.PARAMETER Attributes
No description available.
.PARAMETER BoardId
No description available.
.PARAMETER BoardName
No description available.
.PARAMETER ProjectKey
No description available.
.PARAMETER ProjectType
No description available.
.PARAMETER QueueCategory
No description available.
.PARAMETER QueueId
No description available.
.PARAMETER QueueName
No description available.
.PARAMETER SimpleBoard
No description available.
.PARAMETER Simplified
No description available.
.PARAMETER Url
No description available.
.OUTPUTS

ProjectLandingPageInfo<PSCustomObject>
#>

function Initialize-ProjectLandingPageInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${BoardId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BoardName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProjectKey},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProjectType},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${QueueCategory},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${QueueId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${QueueName},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SimpleBoard},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Simplified},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url}
    )

    Process {
        'Creating PSCustomObject: PSJira => ProjectLandingPageInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "attributes" = ${Attributes}
            "boardId" = ${BoardId}
            "boardName" = ${BoardName}
            "projectKey" = ${ProjectKey}
            "projectType" = ${ProjectType}
            "queueCategory" = ${QueueCategory}
            "queueId" = ${QueueId}
            "queueName" = ${QueueName}
            "simpleBoard" = ${SimpleBoard}
            "simplified" = ${Simplified}
            "url" = ${Url}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProjectLandingPageInfo<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProjectLandingPageInfo<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProjectLandingPageInfo<PSCustomObject>
#>
function ConvertFrom-JsonToProjectLandingPageInfo {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ProjectLandingPageInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProjectLandingPageInfo
        $AllProperties = ("attributes", "boardId", "boardName", "projectKey", "projectType", "queueCategory", "queueId", "queueName", "simpleBoard", "simplified", "url")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "boardId"))) { #optional property not found
            $BoardId = $null
        } else {
            $BoardId = $JsonParameters.PSobject.Properties["boardId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "boardName"))) { #optional property not found
            $BoardName = $null
        } else {
            $BoardName = $JsonParameters.PSobject.Properties["boardName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectKey"))) { #optional property not found
            $ProjectKey = $null
        } else {
            $ProjectKey = $JsonParameters.PSobject.Properties["projectKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectType"))) { #optional property not found
            $ProjectType = $null
        } else {
            $ProjectType = $JsonParameters.PSobject.Properties["projectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queueCategory"))) { #optional property not found
            $QueueCategory = $null
        } else {
            $QueueCategory = $JsonParameters.PSobject.Properties["queueCategory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queueId"))) { #optional property not found
            $QueueId = $null
        } else {
            $QueueId = $JsonParameters.PSobject.Properties["queueId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queueName"))) { #optional property not found
            $QueueName = $null
        } else {
            $QueueName = $JsonParameters.PSobject.Properties["queueName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "simpleBoard"))) { #optional property not found
            $SimpleBoard = $null
        } else {
            $SimpleBoard = $JsonParameters.PSobject.Properties["simpleBoard"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "simplified"))) { #optional property not found
            $Simplified = $null
        } else {
            $Simplified = $JsonParameters.PSobject.Properties["simplified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        $PSO = [PSCustomObject]@{
            "attributes" = ${Attributes}
            "boardId" = ${BoardId}
            "boardName" = ${BoardName}
            "projectKey" = ${ProjectKey}
            "projectType" = ${ProjectType}
            "queueCategory" = ${QueueCategory}
            "queueId" = ${QueueId}
            "queueName" = ${QueueName}
            "simpleBoard" = ${SimpleBoard}
            "simplified" = ${Simplified}
            "url" = ${Url}
        }

        return $PSO
    }

}

