# PSJira.PSJira\Api.ProjectComponentsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Component**](ProjectComponentsApi.md#New-Component) | **POST** /rest/api/3/component | Create component
[**Invoke-DeleteComponent**](ProjectComponentsApi.md#Invoke-DeleteComponent) | **DELETE** /rest/api/3/component/{id} | Delete component
[**Find-ComponentsForProjects**](ProjectComponentsApi.md#Find-ComponentsForProjects) | **GET** /rest/api/3/component | Find components for projects
[**Get-Component**](ProjectComponentsApi.md#Get-Component) | **GET** /rest/api/3/component/{id} | Get component
[**Get-ComponentRelatedIssues**](ProjectComponentsApi.md#Get-ComponentRelatedIssues) | **GET** /rest/api/3/component/{id}/relatedIssueCounts | Get component issues count
[**Get-ProjectComponents**](ProjectComponentsApi.md#Get-ProjectComponents) | **GET** /rest/api/3/project/{projectIdOrKey}/components | Get project components
[**Get-ProjectComponentsPaginated**](ProjectComponentsApi.md#Get-ProjectComponentsPaginated) | **GET** /rest/api/3/project/{projectIdOrKey}/component | Get project components paginated
[**Update-Component**](ProjectComponentsApi.md#Update-Component) | **PUT** /rest/api/3/component/{id} | Update component


<a id="New-Component"></a>
# **New-Component**
> ProjectComponent New-Component<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectComponent] <PSCustomObject><br>

Create component

Creates a component. Use components to provide containers for issues within a project. Use components to provide containers for issues within a project.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project in which the component is created or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$GroupName = Initialize-GroupName -GroupId "MyGroupId" -Name "MyName" -Self "MySelf"
$ApplicationRole = Initialize-ApplicationRole -DefaultGroups "MyDefaultGroups" -DefaultGroupsDetails $GroupName -Defined $false -GroupDetails $GroupName -Groups "MyGroups" -HasUnlimitedSeats $false -Key "MyKey" -Name "MyName" -NumberOfSeats 0 -Platform $false -RemainingSeats 0 -SelectedByDefault $false -UserCount 0 -UserCountDescription "MyUserCountDescription"

$UserApplicationRoles = Initialize-UserApplicationRoles -Callback  -Items $ApplicationRole -MaxResults 0 -PagingCallback  -Size 0

$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"

$UserGroups = Initialize-UserGroups -Callback  -Items $GroupName -MaxResults 0 -PagingCallback  -Size 0

$ProjectComponentAssignee = Initialize-ProjectComponentAssignee -AccountId "MyAccountId" -AccountType "atlassian" -Active $false -ApplicationRoles $UserApplicationRoles -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Expand "MyExpand" -Groups $UserGroups -Key "MyKey" -Locale "MyLocale" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$ProjectComponentLead = Initialize-ProjectComponentLead -AccountId "MyAccountId" -AccountType "atlassian" -Active $false -ApplicationRoles $UserApplicationRoles -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Expand "MyExpand" -Groups $UserGroups -Key "MyKey" -Locale "MyLocale" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$ProjectComponentRealAssignee = Initialize-ProjectComponentRealAssignee -AccountId "MyAccountId" -AccountType "atlassian" -Active $false -ApplicationRoles $UserApplicationRoles -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Expand "MyExpand" -Groups $UserGroups -Key "MyKey" -Locale "MyLocale" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$ProjectComponent = Initialize-ProjectComponent -Ari "MyAri" -Assignee $ProjectComponentAssignee -AssigneeType "PROJECT_DEFAULT" -Description "MyDescription" -Id "MyId" -IsAssigneeTypeValid $false -Lead $ProjectComponentLead -LeadAccountId "MyLeadAccountId" -LeadUserName "MyLeadUserName" -Metadata @{ key_example = "MyInner" } -Name "MyName" -Project "MyProject" -ProjectId 0 -RealAssignee $ProjectComponentRealAssignee -RealAssigneeType "PROJECT_DEFAULT" -Self "MySelf" # ProjectComponent | 

# Create component
try {
    $Result = New-Component -ProjectComponent $ProjectComponent
} catch {
    Write-Host ("Exception occurred when calling New-Component: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectComponent** | [**ProjectComponent**](ProjectComponent.md)|  | 

### Return type

[**ProjectComponent**](ProjectComponent.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteComponent"></a>
# **Invoke-DeleteComponent**
> void Invoke-DeleteComponent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MoveIssuesTo] <String><br>

Delete component

Deletes a component.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the component or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the component.
$MoveIssuesTo = "MyMoveIssuesTo" # String | The ID of the component to replace the deleted component. If this value is null no replacement is made. (optional)

# Delete component
try {
    $Result = Invoke-DeleteComponent -Id $Id -MoveIssuesTo $MoveIssuesTo
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteComponent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the component. | 
 **MoveIssuesTo** | **String**| The ID of the component to replace the deleted component. If this value is null no replacement is made. | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Find-ComponentsForProjects"></a>
# **Find-ComponentsForProjects**
> PageBean2ComponentJsonBean Find-ComponentsForProjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectIdsOrKeys] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>

Find components for projects

Returns a [paginated](#pagination) list of all components in a project, including global (Compass) components when applicable.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectIdsOrKeys = "MyProjectIdsOrKeys" # String[] | The project IDs and/or project keys (case sensitive).
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)
$OrderBy = "description" # String | [Order](#ordering) the results by a field:   *  `description` Sorts by the component description.  *  `name` Sorts by component name. (optional)
$Query = "MyQuery" # String | Filter the results using a literal string. Components with a matching `name` or `description` are returned (case insensitive). (optional)

# Find components for projects
try {
    $Result = Find-ComponentsForProjects -ProjectIdsOrKeys $ProjectIdsOrKeys -StartAt $StartAt -MaxResults $MaxResults -OrderBy $OrderBy -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Find-ComponentsForProjects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectIdsOrKeys** | [**String[]**](String.md)| The project IDs and/or project keys (case sensitive). | 
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **OrderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;description&#x60; Sorts by the component description.  *  &#x60;name&#x60; Sorts by component name. | [optional] 
 **Query** | **String**| Filter the results using a literal string. Components with a matching &#x60;name&#x60; or &#x60;description&#x60; are returned (case insensitive). | [optional] 

### Return type

[**PageBean2ComponentJsonBean**](PageBean2ComponentJsonBean.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Component"></a>
# **Get-Component**
> ProjectComponent Get-Component<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get component

Returns a component.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for project containing the component.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the component.

# Get component
try {
    $Result = Get-Component -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Component: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the component. | 

### Return type

[**ProjectComponent**](ProjectComponent.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ComponentRelatedIssues"></a>
# **Get-ComponentRelatedIssues**
> ComponentIssuesCount Get-ComponentRelatedIssues<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get component issues count

Returns the counts of issues assigned to the component.  This operation can be accessed anonymously.  **Deprecation notice:** The required OAuth 2.0 scopes will be updated on June 15, 2024.   *  **Classic**: `read:jira-work`  *  **Granular**: `read:field:jira`, `read:project.component:jira`  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the component.

# Get component issues count
try {
    $Result = Get-ComponentRelatedIssues -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ComponentRelatedIssues: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the component. | 

### Return type

[**ComponentIssuesCount**](ComponentIssuesCount.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProjectComponents"></a>
# **Get-ProjectComponents**
> ProjectComponent[] Get-ProjectComponents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ComponentSource] <String><br>

Get project components

Returns all components in a project. See the [Get project components paginated](#api-rest-api-3-project-projectIdOrKey-component-get) resource if you want to get a full list of components with pagination.  If your project uses Compass components, this API will return a paginated list of Compass components that are linked to issues in that project.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectIdOrKey = "MyProjectIdOrKey" # String | The project ID or project key (case sensitive).
$ComponentSource = "jira" # String | The source of the components to return. Can be `jira` (default), `compass` or `auto`. When `auto` is specified, the API will return connected Compass components if the project is opted into Compass, otherwise it will return Jira components. Defaults to `jira`. (optional) (default to "jira")

# Get project components
try {
    $Result = Get-ProjectComponents -ProjectIdOrKey $ProjectIdOrKey -ComponentSource $ComponentSource
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectComponents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectIdOrKey** | **String**| The project ID or project key (case sensitive). | 
 **ComponentSource** | **String**| The source of the components to return. Can be &#x60;jira&#x60; (default), &#x60;compass&#x60; or &#x60;auto&#x60;. When &#x60;auto&#x60; is specified, the API will return connected Compass components if the project is opted into Compass, otherwise it will return Jira components. Defaults to &#x60;jira&#x60;. | [optional] [default to &quot;jira&quot;]

### Return type

[**ProjectComponent[]**](ProjectComponent.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProjectComponentsPaginated"></a>
# **Get-ProjectComponentsPaginated**
> PageBeanComponentWithIssueCount Get-ProjectComponentsPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ComponentSource] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>

Get project components paginated

Returns a [paginated](#pagination) list of all components in a project. See the [Get project components](#api-rest-api-3-project-projectIdOrKey-components-get) resource if you want to get a full list of versions without pagination.  If your project uses Compass components, this API will return a list of Compass components that are linked to issues in that project.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectIdOrKey = "MyProjectIdOrKey" # String | The project ID or project key (case sensitive).
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)
$OrderBy = "description" # String | [Order](#ordering) the results by a field:   *  `description` Sorts by the component description.  *  `issueCount` Sorts by the count of issues associated with the component.  *  `lead` Sorts by the user key of the component's project lead.  *  `name` Sorts by component name. (optional)
$ComponentSource = "jira" # String | The source of the components to return. Can be `jira` (default), `compass` or `auto`. When `auto` is specified, the API will return connected Compass components if the project is opted into Compass, otherwise it will return Jira components. Defaults to `jira`. (optional) (default to "jira")
$Query = "MyQuery" # String | Filter the results using a literal string. Components with a matching `name` or `description` are returned (case insensitive). (optional)

# Get project components paginated
try {
    $Result = Get-ProjectComponentsPaginated -ProjectIdOrKey $ProjectIdOrKey -StartAt $StartAt -MaxResults $MaxResults -OrderBy $OrderBy -ComponentSource $ComponentSource -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectComponentsPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectIdOrKey** | **String**| The project ID or project key (case sensitive). | 
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **OrderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;description&#x60; Sorts by the component description.  *  &#x60;issueCount&#x60; Sorts by the count of issues associated with the component.  *  &#x60;lead&#x60; Sorts by the user key of the component&#39;s project lead.  *  &#x60;name&#x60; Sorts by component name. | [optional] 
 **ComponentSource** | **String**| The source of the components to return. Can be &#x60;jira&#x60; (default), &#x60;compass&#x60; or &#x60;auto&#x60;. When &#x60;auto&#x60; is specified, the API will return connected Compass components if the project is opted into Compass, otherwise it will return Jira components. Defaults to &#x60;jira&#x60;. | [optional] [default to &quot;jira&quot;]
 **Query** | **String**| Filter the results using a literal string. Components with a matching &#x60;name&#x60; or &#x60;description&#x60; are returned (case insensitive). | [optional] 

### Return type

[**PageBeanComponentWithIssueCount**](PageBeanComponentWithIssueCount.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Component"></a>
# **Update-Component**
> ProjectComponent Update-Component<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectComponent] <PSCustomObject><br>

Update component

Updates a component. Any fields included in the request are overwritten. If `leadAccountId` is an empty string ("""") the component lead is removed.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the component or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the component.
$GroupName = Initialize-GroupName -GroupId "MyGroupId" -Name "MyName" -Self "MySelf"
$ApplicationRole = Initialize-ApplicationRole -DefaultGroups "MyDefaultGroups" -DefaultGroupsDetails $GroupName -Defined $false -GroupDetails $GroupName -Groups "MyGroups" -HasUnlimitedSeats $false -Key "MyKey" -Name "MyName" -NumberOfSeats 0 -Platform $false -RemainingSeats 0 -SelectedByDefault $false -UserCount 0 -UserCountDescription "MyUserCountDescription"

$UserApplicationRoles = Initialize-UserApplicationRoles -Callback  -Items $ApplicationRole -MaxResults 0 -PagingCallback  -Size 0

$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"

$UserGroups = Initialize-UserGroups -Callback  -Items $GroupName -MaxResults 0 -PagingCallback  -Size 0

$ProjectComponentAssignee = Initialize-ProjectComponentAssignee -AccountId "MyAccountId" -AccountType "atlassian" -Active $false -ApplicationRoles $UserApplicationRoles -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Expand "MyExpand" -Groups $UserGroups -Key "MyKey" -Locale "MyLocale" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$ProjectComponentLead = Initialize-ProjectComponentLead -AccountId "MyAccountId" -AccountType "atlassian" -Active $false -ApplicationRoles $UserApplicationRoles -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Expand "MyExpand" -Groups $UserGroups -Key "MyKey" -Locale "MyLocale" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$ProjectComponentRealAssignee = Initialize-ProjectComponentRealAssignee -AccountId "MyAccountId" -AccountType "atlassian" -Active $false -ApplicationRoles $UserApplicationRoles -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Expand "MyExpand" -Groups $UserGroups -Key "MyKey" -Locale "MyLocale" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$ProjectComponent = Initialize-ProjectComponent -Ari "MyAri" -Assignee $ProjectComponentAssignee -AssigneeType "PROJECT_DEFAULT" -Description "MyDescription" -Id "MyId" -IsAssigneeTypeValid $false -Lead $ProjectComponentLead -LeadAccountId "MyLeadAccountId" -LeadUserName "MyLeadUserName" -Metadata @{ key_example = "MyInner" } -Name "MyName" -Project "MyProject" -ProjectId 0 -RealAssignee $ProjectComponentRealAssignee -RealAssigneeType "PROJECT_DEFAULT" -Self "MySelf" # ProjectComponent | 

# Update component
try {
    $Result = Update-Component -Id $Id -ProjectComponent $ProjectComponent
} catch {
    Write-Host ("Exception occurred when calling Update-Component: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the component. | 
 **ProjectComponent** | [**ProjectComponent**](ProjectComponent.md)|  | 

### Return type

[**ProjectComponent**](ProjectComponent.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

