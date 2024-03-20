# PSJira.PSJira\Api.IssuePrioritiesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Priority**](IssuePrioritiesApi.md#New-Priority) | **POST** /rest/api/3/priority | Create priority
[**Invoke-DeletePriority**](IssuePrioritiesApi.md#Invoke-DeletePriority) | **DELETE** /rest/api/3/priority/{id} | Delete priority
[**Get-Priorities**](IssuePrioritiesApi.md#Get-Priorities) | **GET** /rest/api/3/priority | Get priorities
[**Get-Priority**](IssuePrioritiesApi.md#Get-Priority) | **GET** /rest/api/3/priority/{id} | Get priority
[**Move-Priorities**](IssuePrioritiesApi.md#Move-Priorities) | **PUT** /rest/api/3/priority/move | Move priorities
[**Search-Priorities**](IssuePrioritiesApi.md#Search-Priorities) | **GET** /rest/api/3/priority/search | Search priorities
[**Set-DefaultPriority**](IssuePrioritiesApi.md#Set-DefaultPriority) | **PUT** /rest/api/3/priority/default | Set default priority
[**Update-Priority**](IssuePrioritiesApi.md#Update-Priority) | **PUT** /rest/api/3/priority/{id} | Update priority


<a id="New-Priority"></a>
# **New-Priority**
> PriorityId New-Priority<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatePriorityDetails] <PSCustomObject><br>

Create priority

Creates an issue priority.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$CreatePriorityDetails = Initialize-CreatePriorityDetails -Description "MyDescription" -IconUrl "/images/icons/priorities/blocker.png" -Name "MyName" -StatusColor "MyStatusColor" # CreatePriorityDetails | 

# Create priority
try {
    $Result = New-Priority -CreatePriorityDetails $CreatePriorityDetails
} catch {
    Write-Host ("Exception occurred when calling New-Priority: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreatePriorityDetails** | [**CreatePriorityDetails**](CreatePriorityDetails.md)|  | 

### Return type

[**PriorityId**](PriorityId.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeletePriority"></a>
# **Invoke-DeletePriority**
> void Invoke-DeletePriority<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReplaceWith] <String><br>

Delete priority

*Deprecated: please refer to the* [changelog](https://developer.atlassian.com/changelog/#CHANGE-1066) *for more details.*  Deletes an issue priority.  This operation is [asynchronous](#async). Follow the `location` link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the issue priority.
$ReplaceWith = "MyReplaceWith" # String | The ID of the issue priority that will replace the currently selected resolution.

# Delete priority
try {
    $Result = Invoke-DeletePriority -Id $Id -ReplaceWith $ReplaceWith
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeletePriority: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the issue priority. | 
 **ReplaceWith** | **String**| The ID of the issue priority that will replace the currently selected resolution. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Priorities"></a>
# **Get-Priorities**
> Priority[] Get-Priorities<br>

Get priorities

Returns the list of all issue priorities.  **[Permissions](#permissions) required:** Permission to access Jira.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get priorities
try {
    $Result = Get-Priorities
} catch {
    Write-Host ("Exception occurred when calling Get-Priorities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Priority[]**](Priority.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Priority"></a>
# **Get-Priority**
> Priority Get-Priority<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get priority

Returns an issue priority.  **[Permissions](#permissions) required:** Permission to access Jira.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the issue priority.

# Get priority
try {
    $Result = Get-Priority -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Priority: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the issue priority. | 

### Return type

[**Priority**](Priority.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Move-Priorities"></a>
# **Move-Priorities**
> AnyType Move-Priorities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReorderIssuePriorities] <PSCustomObject><br>

Move priorities

Changes the order of issue priorities.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ReorderIssuePriorities = Initialize-ReorderIssuePriorities -After "MyAfter" -Ids "MyIds" -Position "MyPosition" # ReorderIssuePriorities | 

# Move priorities
try {
    $Result = Move-Priorities -ReorderIssuePriorities $ReorderIssuePriorities
} catch {
    Write-Host ("Exception occurred when calling Move-Priorities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReorderIssuePriorities** | [**ReorderIssuePriorities**](ReorderIssuePriorities.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-Priorities"></a>
# **Search-Priorities**
> PageBeanPriority Search-Priorities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PriorityName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OnlyDefault] <System.Nullable[Boolean]><br>

Search priorities

Returns a [paginated](#pagination) list of priorities. The list can contain all priorities or a subset determined by any combination of these criteria:   *  a list of priority IDs. Any invalid priority IDs are ignored.  *  a list of project IDs. Only priorities that are available in these projects will be returned. Any invalid project IDs are ignored.  *  whether the field configuration is a default. This returns priorities from company-managed (classic) projects only, as there is no concept of default priorities in team-managed projects.  **[Permissions](#permissions) required:** Permission to access Jira.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = "MyStartAt" # String | The index of the first item to return in a page of results (page offset). (optional) (default to "0")
$MaxResults = "MyMaxResults" # String | The maximum number of items to return per page. (optional) (default to "50")
$Id = "MyId" # String[] | The list of priority IDs. To include multiple IDs, provide an ampersand-separated list. For example, `id=2&id=3`. (optional)
$ProjectId = "MyProjectId" # String[] | The list of projects IDs. To include multiple IDs, provide an ampersand-separated list. For example, `projectId=10010&projectId=10111`. (optional)
$PriorityName = "MyPriorityName" # String | The name of priority to search for. (optional) (default to "")
$OnlyDefault = $true # Boolean | Whether only the default priority is returned. (optional) (default to $false)

# Search priorities
try {
    $Result = Search-Priorities -StartAt $StartAt -MaxResults $MaxResults -Id $Id -ProjectId $ProjectId -PriorityName $PriorityName -OnlyDefault $OnlyDefault
} catch {
    Write-Host ("Exception occurred when calling Search-Priorities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]
 **Id** | [**String[]**](String.md)| The list of priority IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;2&amp;id&#x3D;3&#x60;. | [optional] 
 **ProjectId** | [**String[]**](String.md)| The list of projects IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;projectId&#x3D;10010&amp;projectId&#x3D;10111&#x60;. | [optional] 
 **PriorityName** | **String**| The name of priority to search for. | [optional] [default to &quot;&quot;]
 **OnlyDefault** | **Boolean**| Whether only the default priority is returned. | [optional] [default to $false]

### Return type

[**PageBeanPriority**](PageBeanPriority.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-DefaultPriority"></a>
# **Set-DefaultPriority**
> AnyType Set-DefaultPriority<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetDefaultPriorityRequest] <PSCustomObject><br>

Set default priority

Sets default issue priority.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SetDefaultPriorityRequest = Initialize-SetDefaultPriorityRequest -Id "MyId" # SetDefaultPriorityRequest | 

# Set default priority
try {
    $Result = Set-DefaultPriority -SetDefaultPriorityRequest $SetDefaultPriorityRequest
} catch {
    Write-Host ("Exception occurred when calling Set-DefaultPriority: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SetDefaultPriorityRequest** | [**SetDefaultPriorityRequest**](SetDefaultPriorityRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Priority"></a>
# **Update-Priority**
> AnyType Update-Priority<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatePriorityDetails] <PSCustomObject><br>

Update priority

Updates an issue priority.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the issue priority.
$UpdatePriorityDetails = Initialize-UpdatePriorityDetails -Description "MyDescription" -IconUrl "/images/icons/priorities/blocker.png" -Name "MyName" -StatusColor "MyStatusColor" # UpdatePriorityDetails | 

# Update priority
try {
    $Result = Update-Priority -Id $Id -UpdatePriorityDetails $UpdatePriorityDetails
} catch {
    Write-Host ("Exception occurred when calling Update-Priority: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the issue priority. | 
 **UpdatePriorityDetails** | [**UpdatePriorityDetails**](UpdatePriorityDetails.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

