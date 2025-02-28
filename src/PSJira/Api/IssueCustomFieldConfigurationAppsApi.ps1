#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT-23ad6c5456aade2d59a4e9437ce49c945df2eb8f
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Get custom field configurations

.DESCRIPTION

No description available.

.PARAMETER FieldIdOrKey
The ID or key of the custom field, for example `customfield_10000`.

.PARAMETER Id
The list of configuration IDs. To include multiple configurations, separate IDs with an ampersand: `id=10000&id=10001`. Can't be provided with `fieldContextId`, `issueId`, `projectKeyOrId`, or `issueTypeId`.

.PARAMETER FieldContextId
The list of field context IDs. To include multiple field contexts, separate IDs with an ampersand: `fieldContextId=10000&fieldContextId=10001`. Can't be provided with `id`, `issueId`, `projectKeyOrId`, or `issueTypeId`.

.PARAMETER IssueId
The ID of the issue to filter results by. If the issue doesn't exist, an empty list is returned. Can't be provided with `projectKeyOrId`, or `issueTypeId`.

.PARAMETER ProjectKeyOrId
The ID or key of the project to filter results by. Must be provided with `issueTypeId`. Can't be provided with `issueId`.

.PARAMETER IssueTypeId
The ID of the issue type to filter results by. Must be provided with `projectKeyOrId`. Can't be provided with `issueId`.

.PARAMETER StartAt
The index of the first item to return in a page of results (page offset).

.PARAMETER MaxResults
The maximum number of items to return per page.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PageBeanContextualConfiguration
#>
function Get-CustomFieldConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${FieldIdOrKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64][]]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64][]]
        ${FieldContextId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${IssueId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ProjectKeyOrId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IssueTypeId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${StartAt},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${MaxResults},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-CustomFieldConfiguration' | Write-Debug
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

        $LocalVarUri = '/rest/api/3/app/field/{fieldIdOrKey}/context/configuration'
        if (!$FieldIdOrKey) {
            throw "Error! The required parameter `FieldIdOrKey` missing when calling getCustomFieldConfiguration."
        }
        $LocalVarUri = $LocalVarUri.replace('{fieldIdOrKey}', [System.Web.HTTPUtility]::UrlEncode($FieldIdOrKey))

        if ($Id) {
            $LocalVarQueryParameters['id'] = $Id
        }

        if ($FieldContextId) {
            $LocalVarQueryParameters['fieldContextId'] = $FieldContextId
        }

        if ($IssueId) {
            $LocalVarQueryParameters['issueId'] = $IssueId
        }

        if ($ProjectKeyOrId) {
            $LocalVarQueryParameters['projectKeyOrId'] = $ProjectKeyOrId
        }

        if ($IssueTypeId) {
            $LocalVarQueryParameters['issueTypeId'] = $IssueTypeId
        }

        if ($StartAt) {
            $LocalVarQueryParameters['startAt'] = $StartAt
        }

        if ($MaxResults) {
            $LocalVarQueryParameters['maxResults'] = $MaxResults
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
                                -ReturnType "PageBeanContextualConfiguration" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Update custom field configurations

.DESCRIPTION

No description available.

.PARAMETER FieldIdOrKey
The ID or key of the custom field, for example `customfield_10000`.

.PARAMETER CustomFieldConfigurations
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AnyType
#>
function Update-CustomFieldConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${FieldIdOrKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${CustomFieldConfigurations},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-CustomFieldConfiguration' | Write-Debug
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

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/rest/api/3/app/field/{fieldIdOrKey}/context/configuration'
        if (!$FieldIdOrKey) {
            throw "Error! The required parameter `FieldIdOrKey` missing when calling updateCustomFieldConfiguration."
        }
        $LocalVarUri = $LocalVarUri.replace('{fieldIdOrKey}', [System.Web.HTTPUtility]::UrlEncode($FieldIdOrKey))

        if (!$CustomFieldConfigurations) {
            throw "Error! The required parameter `CustomFieldConfigurations` missing when calling updateCustomFieldConfiguration."
        }

        $LocalVarBodyParameter = $CustomFieldConfigurations | ConvertTo-Json -Depth 100


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "AnyType" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

