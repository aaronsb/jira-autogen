#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT-23ad6c5456aade2d59a4e9437ce49c945df2eb8f
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Load project avatar

.DESCRIPTION

No description available.

.PARAMETER ProjectIdOrKey
The ID or (case-sensitive) key of the project.

.PARAMETER Body
No description available.

.PARAMETER X
The X coordinate of the top-left corner of the crop region.

.PARAMETER Y
The Y coordinate of the top-left corner of the crop region.

.PARAMETER Size
The length of each side of the crop region.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Avatar
#>
function New-ProjectAvatar {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ProjectIdOrKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[AnyType]]
        ${Body},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${X},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Y},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Size},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-ProjectAvatar' | Write-Debug
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

        $LocalVarUri = '/rest/api/3/project/{projectIdOrKey}/avatar2'
        if (!$ProjectIdOrKey) {
            throw "Error! The required parameter `ProjectIdOrKey` missing when calling createProjectAvatar."
        }
        $LocalVarUri = $LocalVarUri.replace('{projectIdOrKey}', [System.Web.HTTPUtility]::UrlEncode($ProjectIdOrKey))

        if ($X) {
            $LocalVarQueryParameters['x'] = $X
        }

        if ($Y) {
            $LocalVarQueryParameters['y'] = $Y
        }

        if ($Size) {
            $LocalVarQueryParameters['size'] = $Size
        }

        $LocalVarBodyParameter = $Body | ConvertTo-Json -Depth 100


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Avatar" `
                                -IsBodyNullable $true

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Delete project avatar

.DESCRIPTION

No description available.

.PARAMETER ProjectIdOrKey
The project ID or (case-sensitive) key.

.PARAMETER Id
The ID of the avatar.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-DeleteProjectAvatar {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ProjectIdOrKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int64]
        ${Id},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DeleteProjectAvatar' | Write-Debug
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
        $LocalVarUri = '/rest/api/3/project/{projectIdOrKey}/avatar/{id}'
        if (!$ProjectIdOrKey) {
            throw "Error! The required parameter `ProjectIdOrKey` missing when calling deleteProjectAvatar."
        }
        $LocalVarUri = $LocalVarUri.replace('{projectIdOrKey}', [System.Web.HTTPUtility]::UrlEncode($ProjectIdOrKey))
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling deleteProjectAvatar."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))


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

Get all project avatars

.DESCRIPTION

No description available.

.PARAMETER ProjectIdOrKey
The ID or (case-sensitive) key of the project.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ProjectAvatars
#>
function Get-AllProjectAvatars {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ProjectIdOrKey},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-AllProjectAvatars' | Write-Debug
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

        $LocalVarUri = '/rest/api/3/project/{projectIdOrKey}/avatars'
        if (!$ProjectIdOrKey) {
            throw "Error! The required parameter `ProjectIdOrKey` missing when calling getAllProjectAvatars."
        }
        $LocalVarUri = $LocalVarUri.replace('{projectIdOrKey}', [System.Web.HTTPUtility]::UrlEncode($ProjectIdOrKey))


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
                                -ReturnType "ProjectAvatars" `
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

Set project avatar

.DESCRIPTION

No description available.

.PARAMETER ProjectIdOrKey
The ID or (case-sensitive) key of the project.

.PARAMETER Avatar
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AnyType
#>
function Update-ProjectAvatar {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ProjectIdOrKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Avatar},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-ProjectAvatar' | Write-Debug
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

        $LocalVarUri = '/rest/api/3/project/{projectIdOrKey}/avatar'
        if (!$ProjectIdOrKey) {
            throw "Error! The required parameter `ProjectIdOrKey` missing when calling updateProjectAvatar."
        }
        $LocalVarUri = $LocalVarUri.replace('{projectIdOrKey}', [System.Web.HTTPUtility]::UrlEncode($ProjectIdOrKey))

        if (!$Avatar) {
            throw "Error! The required parameter `Avatar` missing when calling updateProjectAvatar."
        }

        $LocalVarBodyParameter = $Avatar | ConvertTo-Json -Depth 100


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

