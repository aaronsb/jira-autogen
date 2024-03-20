# PSJira.PSJira\Api.IssueWorklogsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-Worklog**](IssueWorklogsApi.md#Add-Worklog) | **POST** /rest/api/3/issue/{issueIdOrKey}/worklog | Add worklog
[**Invoke-DeleteWorklog**](IssueWorklogsApi.md#Invoke-DeleteWorklog) | **DELETE** /rest/api/3/issue/{issueIdOrKey}/worklog/{id} | Delete worklog
[**Get-IdsOfWorklogsDeletedSince**](IssueWorklogsApi.md#Get-IdsOfWorklogsDeletedSince) | **GET** /rest/api/3/worklog/deleted | Get IDs of deleted worklogs
[**Get-IdsOfWorklogsModifiedSince**](IssueWorklogsApi.md#Get-IdsOfWorklogsModifiedSince) | **GET** /rest/api/3/worklog/updated | Get IDs of updated worklogs
[**Get-IssueWorklog**](IssueWorklogsApi.md#Get-IssueWorklog) | **GET** /rest/api/3/issue/{issueIdOrKey}/worklog | Get issue worklogs
[**Get-Worklog**](IssueWorklogsApi.md#Get-Worklog) | **GET** /rest/api/3/issue/{issueIdOrKey}/worklog/{id} | Get worklog
[**Get-WorklogsForIds**](IssueWorklogsApi.md#Get-WorklogsForIds) | **POST** /rest/api/3/worklog/list | Get worklogs
[**Update-Worklog**](IssueWorklogsApi.md#Update-Worklog) | **PUT** /rest/api/3/issue/{issueIdOrKey}/worklog/{id} | Update worklog


<a id="Add-Worklog"></a>
# **Add-Worklog**
> Worklog Add-Worklog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Worklog] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotifyUsers] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AdjustEstimate] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NewEstimate] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReduceBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OverrideEditableFlag] <System.Nullable[Boolean]><br>

Add worklog

Adds a worklog to an issue.  Time tracking must be enabled in Jira, otherwise this operation returns an error. For more information, see [Configuring time tracking](https://confluence.atlassian.com/x/qoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Work on issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "MyIssueIdOrKey" # String | The ID or key the issue.
$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$WorklogAuthor = Initialize-WorklogAuthor -AccountId "MyAccountId" -AccountType "MyAccountType" -Active $false -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Key "MyKey" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$EntityProperty = Initialize-EntityProperty -Key "MyKey" -Value 

$WorklogUpdateAuthor = Initialize-WorklogUpdateAuthor -AccountId "MyAccountId" -AccountType "MyAccountType" -Active $false -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Key "MyKey" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$Worklog = Initialize-Worklog -Author $WorklogAuthor -Comment  -Created (Get-Date) -Id "MyId" -IssueId "MyIssueId" -Properties $EntityProperty -Self "MySelf" -Started (Get-Date) -TimeSpent "MyTimeSpent" -TimeSpentSeconds 0 -UpdateAuthor $WorklogUpdateAuthor -Updated (Get-Date) -Visibility # Worklog | 
$NotifyUsers = $true # Boolean | Whether users watching the issue are notified by email. (optional) (default to $true)
$AdjustEstimate = "new" # String | Defines how to update the issue's time estimate, the options are:   *  `new` Sets the estimate to a specific value, defined in `newEstimate`.  *  `leave` Leaves the estimate unchanged.  *  `manual` Reduces the estimate by amount specified in `reduceBy`.  *  `auto` Reduces the estimate by the value of `timeSpent` in the worklog. (optional) (default to "auto")
$NewEstimate = "MyNewEstimate" # String | The value to set as the issue's remaining time estimate, as days (\#d), hours (\#h), or minutes (\#m or \#). For example, *2d*. Required when `adjustEstimate` is `new`. (optional)
$ReduceBy = "MyReduceBy" # String | The amount to reduce the issue's remaining estimate by, as days (\#d), hours (\#h), or minutes (\#m). For example, *2d*. Required when `adjustEstimate` is `manual`. (optional)
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about work logs in the response. This parameter accepts `properties`, which returns worklog properties. (optional) (default to "")
$OverrideEditableFlag = $true # Boolean | Whether the worklog entry should be added to the issue even if the issue is not editable, because jira.issue.editable set to false or missing. For example, the issue is closed. Connect and Forge app users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) can use this flag. (optional) (default to $false)

# Add worklog
try {
    $Result = Add-Worklog -IssueIdOrKey $IssueIdOrKey -Worklog $Worklog -NotifyUsers $NotifyUsers -AdjustEstimate $AdjustEstimate -NewEstimate $NewEstimate -ReduceBy $ReduceBy -Expand $Expand -OverrideEditableFlag $OverrideEditableFlag
} catch {
    Write-Host ("Exception occurred when calling Add-Worklog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key the issue. | 
 **Worklog** | [**Worklog**](Worklog.md)|  | 
 **NotifyUsers** | **Boolean**| Whether users watching the issue are notified by email. | [optional] [default to $true]
 **AdjustEstimate** | **String**| Defines how to update the issue&#39;s time estimate, the options are:   *  &#x60;new&#x60; Sets the estimate to a specific value, defined in &#x60;newEstimate&#x60;.  *  &#x60;leave&#x60; Leaves the estimate unchanged.  *  &#x60;manual&#x60; Reduces the estimate by amount specified in &#x60;reduceBy&#x60;.  *  &#x60;auto&#x60; Reduces the estimate by the value of &#x60;timeSpent&#x60; in the worklog. | [optional] [default to &quot;auto&quot;]
 **NewEstimate** | **String**| The value to set as the issue&#39;s remaining time estimate, as days (\#d), hours (\#h), or minutes (\#m or \#). For example, *2d*. Required when &#x60;adjustEstimate&#x60; is &#x60;new&#x60;. | [optional] 
 **ReduceBy** | **String**| The amount to reduce the issue&#39;s remaining estimate by, as days (\#d), hours (\#h), or minutes (\#m). For example, *2d*. Required when &#x60;adjustEstimate&#x60; is &#x60;manual&#x60;. | [optional] 
 **Expand** | **String**| Use [expand](#expansion) to include additional information about work logs in the response. This parameter accepts &#x60;properties&#x60;, which returns worklog properties. | [optional] [default to &quot;&quot;]
 **OverrideEditableFlag** | **Boolean**| Whether the worklog entry should be added to the issue even if the issue is not editable, because jira.issue.editable set to false or missing. For example, the issue is closed. Connect and Forge app users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) can use this flag. | [optional] [default to $false]

### Return type

[**Worklog**](Worklog.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteWorklog"></a>
# **Invoke-DeleteWorklog**
> void Invoke-DeleteWorklog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotifyUsers] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AdjustEstimate] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NewEstimate] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncreaseBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OverrideEditableFlag] <System.Nullable[Boolean]><br>

Delete worklog

Deletes a worklog from an issue.  Time tracking must be enabled in Jira, otherwise this operation returns an error. For more information, see [Configuring time tracking](https://confluence.atlassian.com/x/qoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  *Delete all worklogs*[ project permission](https://confluence.atlassian.com/x/yodKLg) to delete any worklog or *Delete own worklogs* to delete worklogs created by the user,  *  If the worklog has visibility restrictions, belongs to the group or has the role visibility is restricted to.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "MyIssueIdOrKey" # String | The ID or key of the issue.
$Id = "MyId" # String | The ID of the worklog.
$NotifyUsers = $true # Boolean | Whether users watching the issue are notified by email. (optional) (default to $true)
$AdjustEstimate = "new" # String | Defines how to update the issue's time estimate, the options are:   *  `new` Sets the estimate to a specific value, defined in `newEstimate`.  *  `leave` Leaves the estimate unchanged.  *  `manual` Increases the estimate by amount specified in `increaseBy`.  *  `auto` Reduces the estimate by the value of `timeSpent` in the worklog. (optional) (default to "auto")
$NewEstimate = "MyNewEstimate" # String | The value to set as the issue's remaining time estimate, as days (\#d), hours (\#h), or minutes (\#m or \#). For example, *2d*. Required when `adjustEstimate` is `new`. (optional)
$IncreaseBy = "MyIncreaseBy" # String | The amount to increase the issue's remaining estimate by, as days (\#d), hours (\#h), or minutes (\#m or \#). For example, *2d*. Required when `adjustEstimate` is `manual`. (optional)
$OverrideEditableFlag = $true # Boolean | Whether the work log entry should be added to the issue even if the issue is not editable, because jira.issue.editable set to false or missing. For example, the issue is closed. Connect and Forge app users with admin permission can use this flag. (optional) (default to $false)

# Delete worklog
try {
    $Result = Invoke-DeleteWorklog -IssueIdOrKey $IssueIdOrKey -Id $Id -NotifyUsers $NotifyUsers -AdjustEstimate $AdjustEstimate -NewEstimate $NewEstimate -IncreaseBy $IncreaseBy -OverrideEditableFlag $OverrideEditableFlag
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteWorklog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key of the issue. | 
 **Id** | **String**| The ID of the worklog. | 
 **NotifyUsers** | **Boolean**| Whether users watching the issue are notified by email. | [optional] [default to $true]
 **AdjustEstimate** | **String**| Defines how to update the issue&#39;s time estimate, the options are:   *  &#x60;new&#x60; Sets the estimate to a specific value, defined in &#x60;newEstimate&#x60;.  *  &#x60;leave&#x60; Leaves the estimate unchanged.  *  &#x60;manual&#x60; Increases the estimate by amount specified in &#x60;increaseBy&#x60;.  *  &#x60;auto&#x60; Reduces the estimate by the value of &#x60;timeSpent&#x60; in the worklog. | [optional] [default to &quot;auto&quot;]
 **NewEstimate** | **String**| The value to set as the issue&#39;s remaining time estimate, as days (\#d), hours (\#h), or minutes (\#m or \#). For example, *2d*. Required when &#x60;adjustEstimate&#x60; is &#x60;new&#x60;. | [optional] 
 **IncreaseBy** | **String**| The amount to increase the issue&#39;s remaining estimate by, as days (\#d), hours (\#h), or minutes (\#m or \#). For example, *2d*. Required when &#x60;adjustEstimate&#x60; is &#x60;manual&#x60;. | [optional] 
 **OverrideEditableFlag** | **Boolean**| Whether the work log entry should be added to the issue even if the issue is not editable, because jira.issue.editable set to false or missing. For example, the issue is closed. Connect and Forge app users with admin permission can use this flag. | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IdsOfWorklogsDeletedSince"></a>
# **Get-IdsOfWorklogsDeletedSince**
> ChangedWorklogs Get-IdsOfWorklogsDeletedSince<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[Int64]><br>

Get IDs of deleted worklogs

Returns a list of IDs and delete timestamps for worklogs deleted after a date and time.  This resource is paginated, with a limit of 1000 worklogs per page. Each page lists worklogs from oldest to youngest. If the number of items in the date range exceeds 1000, `until` indicates the timestamp of the youngest item on the page. Also, `nextPage` provides the URL for the next page of worklogs. The `lastPage` parameter is set to true on the last page of worklogs.  This resource does not return worklogs deleted during the minute preceding the request.  **[Permissions](#permissions) required:** Permission to access Jira.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Since = 789 # Int64 | The date and time, as a UNIX timestamp in milliseconds, after which deleted worklogs are returned. (optional) (default to 0)

# Get IDs of deleted worklogs
try {
    $Result = Get-IdsOfWorklogsDeletedSince -Since $Since
} catch {
    Write-Host ("Exception occurred when calling Get-IdsOfWorklogsDeletedSince: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **Int64**| The date and time, as a UNIX timestamp in milliseconds, after which deleted worklogs are returned. | [optional] [default to 0]

### Return type

[**ChangedWorklogs**](ChangedWorklogs.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IdsOfWorklogsModifiedSince"></a>
# **Get-IdsOfWorklogsModifiedSince**
> ChangedWorklogs Get-IdsOfWorklogsModifiedSince<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get IDs of updated worklogs

Returns a list of IDs and update timestamps for worklogs updated after a date and time.  This resource is paginated, with a limit of 1000 worklogs per page. Each page lists worklogs from oldest to youngest. If the number of items in the date range exceeds 1000, `until` indicates the timestamp of the youngest item on the page. Also, `nextPage` provides the URL for the next page of worklogs. The `lastPage` parameter is set to true on the last page of worklogs.  This resource does not return worklogs updated during the minute preceding the request.  **[Permissions](#permissions) required:** Permission to access Jira, however, worklogs are only returned where either of the following is true:   *  the worklog is set as *Viewable by All Users*.  *  the user is a member of a project role or group with permission to view the worklog.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Since = 789 # Int64 | The date and time, as a UNIX timestamp in milliseconds, after which updated worklogs are returned. (optional) (default to 0)
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about worklogs in the response. This parameter accepts `properties` that returns the properties of each worklog. (optional) (default to "")

# Get IDs of updated worklogs
try {
    $Result = Get-IdsOfWorklogsModifiedSince -Since $Since -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-IdsOfWorklogsModifiedSince: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **Int64**| The date and time, as a UNIX timestamp in milliseconds, after which updated worklogs are returned. | [optional] [default to 0]
 **Expand** | **String**| Use [expand](#expansion) to include additional information about worklogs in the response. This parameter accepts &#x60;properties&#x60; that returns the properties of each worklog. | [optional] [default to &quot;&quot;]

### Return type

[**ChangedWorklogs**](ChangedWorklogs.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IssueWorklog"></a>
# **Get-IssueWorklog**
> PageOfWorklogs Get-IssueWorklog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartedAfter] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartedBefore] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get issue worklogs

Returns worklogs for an issue, starting from the oldest worklog or from the worklog started on or after a date and time.  Time tracking must be enabled in Jira, otherwise this operation returns an error. For more information, see [Configuring time tracking](https://confluence.atlassian.com/x/qoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** Workloads are only returned where the user has:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  If the worklog has visibility restrictions, belongs to the group or has the role visibility is restricted to.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "MyIssueIdOrKey" # String | The ID or key of the issue.
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 5000)
$StartedAfter = 789 # Int64 | The worklog start date and time, as a UNIX timestamp in milliseconds, after which worklogs are returned. (optional)
$StartedBefore = 789 # Int64 | The worklog start date and time, as a UNIX timestamp in milliseconds, before which worklogs are returned. (optional)
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about worklogs in the response. This parameter accepts`properties`, which returns worklog properties. (optional) (default to "")

# Get issue worklogs
try {
    $Result = Get-IssueWorklog -IssueIdOrKey $IssueIdOrKey -StartAt $StartAt -MaxResults $MaxResults -StartedAfter $StartedAfter -StartedBefore $StartedBefore -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-IssueWorklog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key of the issue. | 
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 5000]
 **StartedAfter** | **Int64**| The worklog start date and time, as a UNIX timestamp in milliseconds, after which worklogs are returned. | [optional] 
 **StartedBefore** | **Int64**| The worklog start date and time, as a UNIX timestamp in milliseconds, before which worklogs are returned. | [optional] 
 **Expand** | **String**| Use [expand](#expansion) to include additional information about worklogs in the response. This parameter accepts&#x60;properties&#x60;, which returns worklog properties. | [optional] [default to &quot;&quot;]

### Return type

[**PageOfWorklogs**](PageOfWorklogs.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Worklog"></a>
# **Get-Worklog**
> Worklog Get-Worklog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get worklog

Returns a worklog.  Time tracking must be enabled in Jira, otherwise this operation returns an error. For more information, see [Configuring time tracking](https://confluence.atlassian.com/x/qoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  If the worklog has visibility restrictions, belongs to the group or has the role visibility is restricted to.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "MyIssueIdOrKey" # String | The ID or key of the issue.
$Id = "MyId" # String | The ID of the worklog.
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about work logs in the response. This parameter accepts  `properties`, which returns worklog properties. (optional) (default to "")

# Get worklog
try {
    $Result = Get-Worklog -IssueIdOrKey $IssueIdOrKey -Id $Id -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-Worklog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key of the issue. | 
 **Id** | **String**| The ID of the worklog. | 
 **Expand** | **String**| Use [expand](#expansion) to include additional information about work logs in the response. This parameter accepts  &#x60;properties&#x60;, which returns worklog properties. | [optional] [default to &quot;&quot;]

### Return type

[**Worklog**](Worklog.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorklogsForIds"></a>
# **Get-WorklogsForIds**
> Worklog[] Get-WorklogsForIds<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorklogIdsRequestBean] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get worklogs

Returns worklog details for a list of worklog IDs.  The returned list of worklogs is limited to 1000 items.  **[Permissions](#permissions) required:** Permission to access Jira, however, worklogs are only returned where either of the following is true:   *  the worklog is set as *Viewable by All Users*.  *  the user is a member of a project role or group with permission to view the worklog.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorklogIdsRequestBean = Initialize-WorklogIdsRequestBean -Ids 0 # WorklogIdsRequestBean | A JSON object containing a list of worklog IDs.
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about worklogs in the response. This parameter accepts `properties` that returns the properties of each worklog. (optional) (default to "")

# Get worklogs
try {
    $Result = Get-WorklogsForIds -WorklogIdsRequestBean $WorklogIdsRequestBean -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-WorklogsForIds: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorklogIdsRequestBean** | [**WorklogIdsRequestBean**](WorklogIdsRequestBean.md)| A JSON object containing a list of worklog IDs. | 
 **Expand** | **String**| Use [expand](#expansion) to include additional information about worklogs in the response. This parameter accepts &#x60;properties&#x60; that returns the properties of each worklog. | [optional] [default to &quot;&quot;]

### Return type

[**Worklog[]**](Worklog.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Worklog"></a>
# **Update-Worklog**
> Worklog Update-Worklog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Worklog] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotifyUsers] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AdjustEstimate] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NewEstimate] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OverrideEditableFlag] <System.Nullable[Boolean]><br>

Update worklog

Updates a worklog.  Time tracking must be enabled in Jira, otherwise this operation returns an error. For more information, see [Configuring time tracking](https://confluence.atlassian.com/x/qoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  *Edit all worklogs*[ project permission](https://confluence.atlassian.com/x/yodKLg) to update any worklog or *Edit own worklogs* to update worklogs created by the user.  *  If the worklog has visibility restrictions, belongs to the group or has the role visibility is restricted to.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "MyIssueIdOrKey" # String | The ID or key the issue.
$Id = "MyId" # String | The ID of the worklog.
$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$WorklogAuthor = Initialize-WorklogAuthor -AccountId "MyAccountId" -AccountType "MyAccountType" -Active $false -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Key "MyKey" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$EntityProperty = Initialize-EntityProperty -Key "MyKey" -Value 

$WorklogUpdateAuthor = Initialize-WorklogUpdateAuthor -AccountId "MyAccountId" -AccountType "MyAccountType" -Active $false -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Key "MyKey" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$Worklog = Initialize-Worklog -Author $WorklogAuthor -Comment  -Created (Get-Date) -Id "MyId" -IssueId "MyIssueId" -Properties $EntityProperty -Self "MySelf" -Started (Get-Date) -TimeSpent "MyTimeSpent" -TimeSpentSeconds 0 -UpdateAuthor $WorklogUpdateAuthor -Updated (Get-Date) -Visibility # Worklog | 
$NotifyUsers = $true # Boolean | Whether users watching the issue are notified by email. (optional) (default to $true)
$AdjustEstimate = "new" # String | Defines how to update the issue's time estimate, the options are:   *  `new` Sets the estimate to a specific value, defined in `newEstimate`.  *  `leave` Leaves the estimate unchanged.  *  `auto` Updates the estimate by the difference between the original and updated value of `timeSpent` or `timeSpentSeconds`. (optional) (default to "auto")
$NewEstimate = "MyNewEstimate" # String | The value to set as the issue's remaining time estimate, as days (\#d), hours (\#h), or minutes (\#m or \#). For example, *2d*. Required when `adjustEstimate` is `new`. (optional)
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about worklogs in the response. This parameter accepts `properties`, which returns worklog properties. (optional) (default to "")
$OverrideEditableFlag = $true # Boolean | Whether the worklog should be added to the issue even if the issue is not editable. For example, because the issue is closed. Connect and Forge app users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) can use this flag. (optional) (default to $false)

# Update worklog
try {
    $Result = Update-Worklog -IssueIdOrKey $IssueIdOrKey -Id $Id -Worklog $Worklog -NotifyUsers $NotifyUsers -AdjustEstimate $AdjustEstimate -NewEstimate $NewEstimate -Expand $Expand -OverrideEditableFlag $OverrideEditableFlag
} catch {
    Write-Host ("Exception occurred when calling Update-Worklog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key the issue. | 
 **Id** | **String**| The ID of the worklog. | 
 **Worklog** | [**Worklog**](Worklog.md)|  | 
 **NotifyUsers** | **Boolean**| Whether users watching the issue are notified by email. | [optional] [default to $true]
 **AdjustEstimate** | **String**| Defines how to update the issue&#39;s time estimate, the options are:   *  &#x60;new&#x60; Sets the estimate to a specific value, defined in &#x60;newEstimate&#x60;.  *  &#x60;leave&#x60; Leaves the estimate unchanged.  *  &#x60;auto&#x60; Updates the estimate by the difference between the original and updated value of &#x60;timeSpent&#x60; or &#x60;timeSpentSeconds&#x60;. | [optional] [default to &quot;auto&quot;]
 **NewEstimate** | **String**| The value to set as the issue&#39;s remaining time estimate, as days (\#d), hours (\#h), or minutes (\#m or \#). For example, *2d*. Required when &#x60;adjustEstimate&#x60; is &#x60;new&#x60;. | [optional] 
 **Expand** | **String**| Use [expand](#expansion) to include additional information about worklogs in the response. This parameter accepts &#x60;properties&#x60;, which returns worklog properties. | [optional] [default to &quot;&quot;]
 **OverrideEditableFlag** | **Boolean**| Whether the worklog should be added to the issue even if the issue is not editable. For example, because the issue is closed. Connect and Forge app users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) can use this flag. | [optional] [default to $false]

### Return type

[**Worklog**](Worklog.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

