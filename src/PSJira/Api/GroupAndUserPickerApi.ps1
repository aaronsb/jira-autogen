#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT-23ad6c5456aade2d59a4e9437ce49c945df2eb8f
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Find users and groups

.DESCRIPTION

No description available.

.PARAMETER Query
The search string.

.PARAMETER MaxResults
The maximum number of items to return in each list.

.PARAMETER ShowAvatar
Whether the user avatar should be returned. If an invalid value is provided, the default value is used.

.PARAMETER FieldId
The custom field ID of the field this request is for.

.PARAMETER ProjectId
The ID of a project that returned users and groups must have permission to view. To include multiple projects, provide an ampersand-separated list. For example, `projectId=10000&projectId=10001`. This parameter is only used when `fieldId` is present.

.PARAMETER IssueTypeId
The ID of an issue type that returned users and groups must have permission to view. To include multiple issue types, provide an ampersand-separated list. For example, `issueTypeId=10000&issueTypeId=10001`. Special values, such as `-1` (all standard issue types) and `-2` (all subtask issue types), are supported. This parameter is only used when `fieldId` is present.

.PARAMETER AvatarSize
The size of the avatar to return. If an invalid value is provided, the default value is used.

.PARAMETER CaseInsensitive
Whether the search for groups should be case insensitive.

.PARAMETER ExcludeConnectAddons
Whether Connect app users and groups should be excluded from the search results. If an invalid value is provided, the default value is used.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

FoundUsersAndGroups
#>
function Find-UsersAndGroups {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Query},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${MaxResults},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${ShowAvatar},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${FieldId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${ProjectId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${IssueTypeId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("xsmall", "xsmall@2x", "xsmall@3x", "small", "small@2x", "small@3x", "medium", "medium@2x", "medium@3x", "large", "large@2x", "large@3x", "xlarge", "xlarge@2x", "xlarge@3x", "xxlarge", "xxlarge@2x", "xxlarge@3x", "xxxlarge", "xxxlarge@2x", "xxxlarge@3x")]
        [String]
        ${AvatarSize},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${CaseInsensitive},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${ExcludeConnectAddons},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Find-UsersAndGroups' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/rest/api/3/groupuserpicker'

        if (!$Query) {
            throw "Error! The required parameter `Query` missing when calling findUsersAndGroups."
        }
        $LocalVarQueryParameters['query'] = $Query

        if ($MaxResults) {
            $LocalVarQueryParameters['maxResults'] = $MaxResults
        }

        if ($ShowAvatar) {
            $LocalVarQueryParameters['showAvatar'] = $ShowAvatar
        }

        if ($FieldId) {
            $LocalVarQueryParameters['fieldId'] = $FieldId
        }

        if ($ProjectId) {
            $LocalVarQueryParameters['projectId'] = $ProjectId
        }

        if ($IssueTypeId) {
            $LocalVarQueryParameters['issueTypeId'] = $IssueTypeId
        }

        if ($AvatarSize) {
            $LocalVarQueryParameters['avatarSize'] = $AvatarSize
        }

        if ($CaseInsensitive) {
            $LocalVarQueryParameters['caseInsensitive'] = $CaseInsensitive
        }

        if ($ExcludeConnectAddons) {
            $LocalVarQueryParameters['excludeConnectAddons'] = $ExcludeConnectAddons
        }


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "FoundUsersAndGroups" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

