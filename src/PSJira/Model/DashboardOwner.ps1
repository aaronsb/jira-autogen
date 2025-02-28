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

The owner of the dashboard.

.PARAMETER AccountId
The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
.PARAMETER Active
Whether the user is active.
.PARAMETER AvatarUrls
The avatars of the user.
.PARAMETER DisplayName
The display name of the user. Depending on the user’s privacy setting, this may return an alternative value.
.PARAMETER Key
This property is deprecated in favor of `accountId` because of privacy changes. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.   The key of the user.
.PARAMETER Name
This property is deprecated in favor of `accountId` because of privacy changes. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.   The username of the user.
.PARAMETER Self
The URL of the user.
.OUTPUTS

DashboardOwner<PSCustomObject>
#>

function Initialize-DashboardOwner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Active},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AvatarUrls},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self}
    )

    Process {
        'Creating PSCustomObject: PSJira => DashboardOwner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccountId -and $AccountId.length -gt 128) {
            throw "invalid value for 'AccountId', the character length must be smaller than or equal to 128."
        }


        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "active" = ${Active}
            "avatarUrls" = ${AvatarUrls}
            "displayName" = ${DisplayName}
            "key" = ${Key}
            "name" = ${Name}
            "self" = ${Self}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DashboardOwner<PSCustomObject>

.DESCRIPTION

Convert from JSON to DashboardOwner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DashboardOwner<PSCustomObject>
#>
function ConvertFrom-JsonToDashboardOwner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => DashboardOwner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DashboardOwner
        $AllProperties = ("accountId", "active", "avatarUrls", "displayName", "key", "name", "self")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "active"))) { #optional property not found
            $Active = $null
        } else {
            $Active = $JsonParameters.PSobject.Properties["active"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "avatarUrls"))) { #optional property not found
            $AvatarUrls = $null
        } else {
            $AvatarUrls = $JsonParameters.PSobject.Properties["avatarUrls"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "active" = ${Active}
            "avatarUrls" = ${AvatarUrls}
            "displayName" = ${DisplayName}
            "key" = ${Key}
            "name" = ${Name}
            "self" = ${Self}
        }

        return $PSO
    }

}

