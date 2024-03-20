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

The user assigned to issues created with this component, when `assigneeType` does not identify a valid assignee.

.PARAMETER AccountId
The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. Required in requests.
.PARAMETER AccountType
The user account type. Can take the following values:   *  `atlassian` regular Atlassian user account  *  `app` system account used for Connect applications and OAuth to represent external systems  *  `customer` Jira Service Desk account representing an external service desk
.PARAMETER Active
Whether the user is active.
.PARAMETER ApplicationRoles
No description available.
.PARAMETER AvatarUrls
No description available.
.PARAMETER DisplayName
The display name of the user. Depending on the user’s privacy setting, this may return an alternative value.
.PARAMETER EmailAddress
The email address of the user. Depending on the user’s privacy setting, this may be returned as null.
.PARAMETER Expand
Expand options that include additional user details in the response.
.PARAMETER Groups
No description available.
.PARAMETER Key
This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
.PARAMETER Locale
The locale of the user. Depending on the user’s privacy setting, this may be returned as null.
.PARAMETER Name
This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
.PARAMETER Self
The URL of the user.
.PARAMETER TimeZone
The time zone specified in the user's profile. Depending on the user’s privacy setting, this may be returned as null.
.OUTPUTS

ProjectComponentRealAssignee<PSCustomObject>
#>

function Initialize-ProjectComponentRealAssignee {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("atlassian", "app", "customer", "unknown")]
        [String]
        ${AccountType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Active},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ApplicationRoles},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AvatarUrls},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Expand},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Groups},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Locale},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TimeZone}
    )

    Process {
        'Creating PSCustomObject: PSJira => ProjectComponentRealAssignee' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccountId -and $AccountId.length -gt 128) {
            throw "invalid value for 'AccountId', the character length must be smaller than or equal to 128."
        }


        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "accountType" = ${AccountType}
            "active" = ${Active}
            "applicationRoles" = ${ApplicationRoles}
            "avatarUrls" = ${AvatarUrls}
            "displayName" = ${DisplayName}
            "emailAddress" = ${EmailAddress}
            "expand" = ${Expand}
            "groups" = ${Groups}
            "key" = ${Key}
            "locale" = ${Locale}
            "name" = ${Name}
            "self" = ${Self}
            "timeZone" = ${TimeZone}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProjectComponentRealAssignee<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProjectComponentRealAssignee<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProjectComponentRealAssignee<PSCustomObject>
#>
function ConvertFrom-JsonToProjectComponentRealAssignee {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ProjectComponentRealAssignee' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProjectComponentRealAssignee
        $AllProperties = ("accountId", "accountType", "active", "applicationRoles", "avatarUrls", "displayName", "emailAddress", "expand", "groups", "key", "locale", "name", "self", "timeZone")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountType"))) { #optional property not found
            $AccountType = $null
        } else {
            $AccountType = $JsonParameters.PSobject.Properties["accountType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "active"))) { #optional property not found
            $Active = $null
        } else {
            $Active = $JsonParameters.PSobject.Properties["active"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationRoles"))) { #optional property not found
            $ApplicationRoles = $null
        } else {
            $ApplicationRoles = $JsonParameters.PSobject.Properties["applicationRoles"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) { #optional property not found
            $EmailAddress = $null
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expand"))) { #optional property not found
            $Expand = $null
        } else {
            $Expand = $JsonParameters.PSobject.Properties["expand"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["groups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locale"))) { #optional property not found
            $Locale = $null
        } else {
            $Locale = $JsonParameters.PSobject.Properties["locale"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeZone"))) { #optional property not found
            $TimeZone = $null
        } else {
            $TimeZone = $JsonParameters.PSobject.Properties["timeZone"].value
        }

        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "accountType" = ${AccountType}
            "active" = ${Active}
            "applicationRoles" = ${ApplicationRoles}
            "avatarUrls" = ${AvatarUrls}
            "displayName" = ${DisplayName}
            "emailAddress" = ${EmailAddress}
            "expand" = ${Expand}
            "groups" = ${Groups}
            "key" = ${Key}
            "locale" = ${Locale}
            "name" = ${Name}
            "self" = ${Self}
            "timeZone" = ${TimeZone}
        }

        return $PSO
    }

}

