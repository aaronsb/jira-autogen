#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT-23ad6c5456aade2d59a4e9437ce49c945df2eb8f
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Delete worklog property

.DESCRIPTION

No description available.

.PARAMETER IssueIdOrKey
The ID or key of the issue.

.PARAMETER WorklogId
The ID of the worklog.

.PARAMETER PropertyKey
The key of the property.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-DeleteWorklogProperty {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IssueIdOrKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${WorklogId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PropertyKey},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DeleteWorklogProperty' | Write-Debug
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
        $LocalVarUri = '/rest/api/3/issue/{issueIdOrKey}/worklog/{worklogId}/properties/{propertyKey}'
        if (!$IssueIdOrKey) {
            throw "Error! The required parameter `IssueIdOrKey` missing when calling deleteWorklogProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{issueIdOrKey}', [System.Web.HTTPUtility]::UrlEncode($IssueIdOrKey))
        if (!$WorklogId) {
            throw "Error! The required parameter `WorklogId` missing when calling deleteWorklogProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{worklogId}', [System.Web.HTTPUtility]::UrlEncode($WorklogId))
        if (!$PropertyKey) {
            throw "Error! The required parameter `PropertyKey` missing when calling deleteWorklogProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{propertyKey}', [System.Web.HTTPUtility]::UrlEncode($PropertyKey))


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
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

Get worklog property

.DESCRIPTION

No description available.

.PARAMETER IssueIdOrKey
The ID or key of the issue.

.PARAMETER WorklogId
The ID of the worklog.

.PARAMETER PropertyKey
The key of the property.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

EntityProperty
#>
function Get-WorklogProperty {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IssueIdOrKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${WorklogId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PropertyKey},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-WorklogProperty' | Write-Debug
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

        $LocalVarUri = '/rest/api/3/issue/{issueIdOrKey}/worklog/{worklogId}/properties/{propertyKey}'
        if (!$IssueIdOrKey) {
            throw "Error! The required parameter `IssueIdOrKey` missing when calling getWorklogProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{issueIdOrKey}', [System.Web.HTTPUtility]::UrlEncode($IssueIdOrKey))
        if (!$WorklogId) {
            throw "Error! The required parameter `WorklogId` missing when calling getWorklogProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{worklogId}', [System.Web.HTTPUtility]::UrlEncode($WorklogId))
        if (!$PropertyKey) {
            throw "Error! The required parameter `PropertyKey` missing when calling getWorklogProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{propertyKey}', [System.Web.HTTPUtility]::UrlEncode($PropertyKey))


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
                                -ReturnType "EntityProperty" `
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

Get worklog property keys

.DESCRIPTION

No description available.

.PARAMETER IssueIdOrKey
The ID or key of the issue.

.PARAMETER WorklogId
The ID of the worklog.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PropertyKeys
#>
function Get-WorklogPropertyKeys {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IssueIdOrKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${WorklogId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-WorklogPropertyKeys' | Write-Debug
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

        $LocalVarUri = '/rest/api/3/issue/{issueIdOrKey}/worklog/{worklogId}/properties'
        if (!$IssueIdOrKey) {
            throw "Error! The required parameter `IssueIdOrKey` missing when calling getWorklogPropertyKeys."
        }
        $LocalVarUri = $LocalVarUri.replace('{issueIdOrKey}', [System.Web.HTTPUtility]::UrlEncode($IssueIdOrKey))
        if (!$WorklogId) {
            throw "Error! The required parameter `WorklogId` missing when calling getWorklogPropertyKeys."
        }
        $LocalVarUri = $LocalVarUri.replace('{worklogId}', [System.Web.HTTPUtility]::UrlEncode($WorklogId))


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
                                -ReturnType "PropertyKeys" `
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

Set worklog property

.DESCRIPTION

No description available.

.PARAMETER IssueIdOrKey
The ID or key of the issue.

.PARAMETER WorklogId
The ID of the worklog.

.PARAMETER PropertyKey
The key of the issue property. The maximum length is 255 characters.

.PARAMETER Body
The value of the property. The value has to be a valid, non-empty [JSON](https://tools.ietf.org/html/rfc4627) value. The maximum length of the property value is 32768 bytes.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AnyType
#>
function Set-WorklogProperty {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IssueIdOrKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${WorklogId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PropertyKey},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[AnyType]]
        ${Body},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-WorklogProperty' | Write-Debug
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

        $LocalVarUri = '/rest/api/3/issue/{issueIdOrKey}/worklog/{worklogId}/properties/{propertyKey}'
        if (!$IssueIdOrKey) {
            throw "Error! The required parameter `IssueIdOrKey` missing when calling setWorklogProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{issueIdOrKey}', [System.Web.HTTPUtility]::UrlEncode($IssueIdOrKey))
        if (!$WorklogId) {
            throw "Error! The required parameter `WorklogId` missing when calling setWorklogProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{worklogId}', [System.Web.HTTPUtility]::UrlEncode($WorklogId))
        if (!$PropertyKey) {
            throw "Error! The required parameter `PropertyKey` missing when calling setWorklogProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{propertyKey}', [System.Web.HTTPUtility]::UrlEncode($PropertyKey))

        $LocalVarBodyParameter = $Body | ConvertTo-Json -Depth 100


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
                                -IsBodyNullable $true

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

