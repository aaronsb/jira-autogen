# PSJira.PSJira\Api.IssueNotificationSchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-Notifications**](IssueNotificationSchemesApi.md#Add-Notifications) | **PUT** /rest/api/3/notificationscheme/{id}/notification | Add notifications to notification scheme
[**New-NotificationScheme**](IssueNotificationSchemesApi.md#New-NotificationScheme) | **POST** /rest/api/3/notificationscheme | Create notification scheme
[**Invoke-DeleteNotificationScheme**](IssueNotificationSchemesApi.md#Invoke-DeleteNotificationScheme) | **DELETE** /rest/api/3/notificationscheme/{notificationSchemeId} | Delete notification scheme
[**Get-NotificationScheme**](IssueNotificationSchemesApi.md#Get-NotificationScheme) | **GET** /rest/api/3/notificationscheme/{id} | Get notification scheme
[**Get-NotificationSchemeToProjectMappings**](IssueNotificationSchemesApi.md#Get-NotificationSchemeToProjectMappings) | **GET** /rest/api/3/notificationscheme/project | Get projects using notification schemes paginated
[**Get-NotificationSchemes**](IssueNotificationSchemesApi.md#Get-NotificationSchemes) | **GET** /rest/api/3/notificationscheme | Get notification schemes paginated
[**Remove-NotificationFromNotificationScheme**](IssueNotificationSchemesApi.md#Remove-NotificationFromNotificationScheme) | **DELETE** /rest/api/3/notificationscheme/{notificationSchemeId}/notification/{notificationId} | Remove notification from notification scheme
[**Update-NotificationScheme**](IssueNotificationSchemesApi.md#Update-NotificationScheme) | **PUT** /rest/api/3/notificationscheme/{id} | Update notification scheme


<a id="Add-Notifications"></a>
# **Add-Notifications**
> AnyType Add-Notifications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddNotificationsDetails] <PSCustomObject><br>

Add notifications to notification scheme

Adds notifications to a notification scheme. You can add up to 1000 notifications per request.  *Deprecated: The notification type `EmailAddress` is no longer supported in Cloud. Refer to the [changelog](https://developer.atlassian.com/cloud/jira/platform/changelog/#CHANGE-1031) for more details.*  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the notification scheme.
$NotificationSchemeNotificationDetails = Initialize-NotificationSchemeNotificationDetails -NotificationType "MyNotificationType" -Parameter "MyParameter"
$NotificationSchemeEventDetails = Initialize-NotificationSchemeEventDetails -VarEvent  -Notifications $NotificationSchemeNotificationDetails

$AddNotificationsDetails = Initialize-AddNotificationsDetails -NotificationSchemeEvents $NotificationSchemeEventDetails # AddNotificationsDetails | 

# Add notifications to notification scheme
try {
    $Result = Add-Notifications -Id $Id -AddNotificationsDetails $AddNotificationsDetails
} catch {
    Write-Host ("Exception occurred when calling Add-Notifications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the notification scheme. | 
 **AddNotificationsDetails** | [**AddNotificationsDetails**](AddNotificationsDetails.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-NotificationScheme"></a>
# **New-NotificationScheme**
> NotificationSchemeId New-NotificationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateNotificationSchemeDetails] <PSCustomObject><br>

Create notification scheme

Creates a notification scheme with notifications. You can create up to 1000 notifications per request.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$NotificationSchemeNotificationDetails = Initialize-NotificationSchemeNotificationDetails -NotificationType "MyNotificationType" -Parameter "MyParameter"
$NotificationSchemeEventDetails = Initialize-NotificationSchemeEventDetails -VarEvent  -Notifications $NotificationSchemeNotificationDetails

$CreateNotificationSchemeDetails = Initialize-CreateNotificationSchemeDetails -Description "MyDescription" -Name "MyName" -NotificationSchemeEvents $NotificationSchemeEventDetails # CreateNotificationSchemeDetails | 

# Create notification scheme
try {
    $Result = New-NotificationScheme -CreateNotificationSchemeDetails $CreateNotificationSchemeDetails
} catch {
    Write-Host ("Exception occurred when calling New-NotificationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateNotificationSchemeDetails** | [**CreateNotificationSchemeDetails**](CreateNotificationSchemeDetails.md)|  | 

### Return type

[**NotificationSchemeId**](NotificationSchemeId.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteNotificationScheme"></a>
# **Invoke-DeleteNotificationScheme**
> AnyType Invoke-DeleteNotificationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationSchemeId] <String><br>

Delete notification scheme

Deletes a notification scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$NotificationSchemeId = "MyNotificationSchemeId" # String | The ID of the notification scheme.

# Delete notification scheme
try {
    $Result = Invoke-DeleteNotificationScheme -NotificationSchemeId $NotificationSchemeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteNotificationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **NotificationSchemeId** | **String**| The ID of the notification scheme. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-NotificationScheme"></a>
# **Get-NotificationScheme**
> NotificationScheme Get-NotificationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get notification scheme

Returns a [notification scheme](https://confluence.atlassian.com/x/8YdKLg), including the list of events and the recipients who will receive notifications for those events.  **[Permissions](#permissions) required:** Permission to access Jira, however, the user must have permission to administer at least one project associated with the notification scheme.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the notification scheme. Use [Get notification schemes paginated](#api-rest-api-3-notificationscheme-get) to get a list of notification scheme IDs.
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  `all` Returns all expandable information  *  `field` Returns information about any custom fields assigned to receive an event  *  `group` Returns information about any groups assigned to receive an event  *  `notificationSchemeEvents` Returns a list of event associations. This list is returned for all expandable information  *  `projectRole` Returns information about any project roles assigned to receive an event  *  `user` Returns information about any users assigned to receive an event (optional)

# Get notification scheme
try {
    $Result = Get-NotificationScheme -Id $Id -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-NotificationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the notification scheme. Use [Get notification schemes paginated](#api-rest-api-3-notificationscheme-get) to get a list of notification scheme IDs. | 
 **Expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;all&#x60; Returns all expandable information  *  &#x60;field&#x60; Returns information about any custom fields assigned to receive an event  *  &#x60;group&#x60; Returns information about any groups assigned to receive an event  *  &#x60;notificationSchemeEvents&#x60; Returns a list of event associations. This list is returned for all expandable information  *  &#x60;projectRole&#x60; Returns information about any project roles assigned to receive an event  *  &#x60;user&#x60; Returns information about any users assigned to receive an event | [optional] 

### Return type

[**NotificationScheme**](NotificationScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-NotificationSchemeToProjectMappings"></a>
# **Get-NotificationSchemeToProjectMappings**
> PageBeanNotificationSchemeAndProjectMappingJsonBean Get-NotificationSchemeToProjectMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationSchemeId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String[]><br>

Get projects using notification schemes paginated

Returns a [paginated](#pagination) mapping of project that have notification scheme assigned. You can provide either one or multiple notification scheme IDs or project IDs to filter by. If you don't provide any, this will return a list of all mappings. Note that only company-managed (classic) projects are supported. This is because team-managed projects don't have a concept of a default notification scheme. The mappings are ordered by projectId.  **[Permissions](#permissions) required:** Permission to access Jira.

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
$NotificationSchemeId = "MyNotificationSchemeId" # String[] | The list of notifications scheme IDs to be filtered out (optional)
$ProjectId = "MyProjectId" # String[] | The list of project IDs to be filtered out (optional)

# Get projects using notification schemes paginated
try {
    $Result = Get-NotificationSchemeToProjectMappings -StartAt $StartAt -MaxResults $MaxResults -NotificationSchemeId $NotificationSchemeId -ProjectId $ProjectId
} catch {
    Write-Host ("Exception occurred when calling Get-NotificationSchemeToProjectMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]
 **NotificationSchemeId** | [**String[]**](String.md)| The list of notifications scheme IDs to be filtered out | [optional] 
 **ProjectId** | [**String[]**](String.md)| The list of project IDs to be filtered out | [optional] 

### Return type

[**PageBeanNotificationSchemeAndProjectMappingJsonBean**](PageBeanNotificationSchemeAndProjectMappingJsonBean.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-NotificationSchemes"></a>
# **Get-NotificationSchemes**
> PageBeanNotificationScheme Get-NotificationSchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OnlyDefault] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get notification schemes paginated

Returns a [paginated](#pagination) list of [notification schemes](https://confluence.atlassian.com/x/8YdKLg) ordered by the display name.  *Note that you should allow for events without recipients to appear in responses.*  **[Permissions](#permissions) required:** Permission to access Jira, however, the user must have permission to administer at least one project associated with a notification scheme for it to be returned.

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
$Id = "MyId" # String[] | The list of notification schemes IDs to be filtered by (optional)
$ProjectId = "MyProjectId" # String[] | The list of projects IDs to be filtered by (optional)
$OnlyDefault = $true # Boolean | When set to true, returns only the default notification scheme. If you provide project IDs not associated with the default, returns an empty page. The default value is false. (optional) (default to $false)
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  `all` Returns all expandable information  *  `field` Returns information about any custom fields assigned to receive an event  *  `group` Returns information about any groups assigned to receive an event  *  `notificationSchemeEvents` Returns a list of event associations. This list is returned for all expandable information  *  `projectRole` Returns information about any project roles assigned to receive an event  *  `user` Returns information about any users assigned to receive an event (optional)

# Get notification schemes paginated
try {
    $Result = Get-NotificationSchemes -StartAt $StartAt -MaxResults $MaxResults -Id $Id -ProjectId $ProjectId -OnlyDefault $OnlyDefault -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-NotificationSchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]
 **Id** | [**String[]**](String.md)| The list of notification schemes IDs to be filtered by | [optional] 
 **ProjectId** | [**String[]**](String.md)| The list of projects IDs to be filtered by | [optional] 
 **OnlyDefault** | **Boolean**| When set to true, returns only the default notification scheme. If you provide project IDs not associated with the default, returns an empty page. The default value is false. | [optional] [default to $false]
 **Expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;all&#x60; Returns all expandable information  *  &#x60;field&#x60; Returns information about any custom fields assigned to receive an event  *  &#x60;group&#x60; Returns information about any groups assigned to receive an event  *  &#x60;notificationSchemeEvents&#x60; Returns a list of event associations. This list is returned for all expandable information  *  &#x60;projectRole&#x60; Returns information about any project roles assigned to receive an event  *  &#x60;user&#x60; Returns information about any users assigned to receive an event | [optional] 

### Return type

[**PageBeanNotificationScheme**](PageBeanNotificationScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-NotificationFromNotificationScheme"></a>
# **Remove-NotificationFromNotificationScheme**
> AnyType Remove-NotificationFromNotificationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationSchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationId] <String><br>

Remove notification from notification scheme

Removes a notification from a notification scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$NotificationSchemeId = "MyNotificationSchemeId" # String | The ID of the notification scheme.
$NotificationId = "MyNotificationId" # String | The ID of the notification.

# Remove notification from notification scheme
try {
    $Result = Remove-NotificationFromNotificationScheme -NotificationSchemeId $NotificationSchemeId -NotificationId $NotificationId
} catch {
    Write-Host ("Exception occurred when calling Remove-NotificationFromNotificationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **NotificationSchemeId** | **String**| The ID of the notification scheme. | 
 **NotificationId** | **String**| The ID of the notification. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-NotificationScheme"></a>
# **Update-NotificationScheme**
> AnyType Update-NotificationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateNotificationSchemeDetails] <PSCustomObject><br>

Update notification scheme

Updates a notification scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the notification scheme.
$UpdateNotificationSchemeDetails = Initialize-UpdateNotificationSchemeDetails -Description "MyDescription" -Name "MyName" # UpdateNotificationSchemeDetails | 

# Update notification scheme
try {
    $Result = Update-NotificationScheme -Id $Id -UpdateNotificationSchemeDetails $UpdateNotificationSchemeDetails
} catch {
    Write-Host ("Exception occurred when calling Update-NotificationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the notification scheme. | 
 **UpdateNotificationSchemeDetails** | [**UpdateNotificationSchemeDetails**](UpdateNotificationSchemeDetails.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

