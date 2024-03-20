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

.PARAMETER NotificationSchemeId
No description available.
.PARAMETER ProjectId
No description available.
.OUTPUTS

NotificationSchemeAndProjectMappingJsonBean<PSCustomObject>
#>

function Initialize-NotificationSchemeAndProjectMappingJsonBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NotificationSchemeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProjectId}
    )

    Process {
        'Creating PSCustomObject: PSJira => NotificationSchemeAndProjectMappingJsonBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "notificationSchemeId" = ${NotificationSchemeId}
            "projectId" = ${ProjectId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NotificationSchemeAndProjectMappingJsonBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to NotificationSchemeAndProjectMappingJsonBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NotificationSchemeAndProjectMappingJsonBean<PSCustomObject>
#>
function ConvertFrom-JsonToNotificationSchemeAndProjectMappingJsonBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => NotificationSchemeAndProjectMappingJsonBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in NotificationSchemeAndProjectMappingJsonBean
        $AllProperties = ("notificationSchemeId", "projectId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notificationSchemeId"))) { #optional property not found
            $NotificationSchemeId = $null
        } else {
            $NotificationSchemeId = $JsonParameters.PSobject.Properties["notificationSchemeId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectId"))) { #optional property not found
            $ProjectId = $null
        } else {
            $ProjectId = $JsonParameters.PSobject.Properties["projectId"].value
        }

        $PSO = [PSCustomObject]@{
            "notificationSchemeId" = ${NotificationSchemeId}
            "projectId" = ${ProjectId}
        }

        return $PSO
    }

}

