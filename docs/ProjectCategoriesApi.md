# PSJira.PSJira\Api.ProjectCategoriesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ProjectCategory**](ProjectCategoriesApi.md#New-ProjectCategory) | **POST** /rest/api/3/projectCategory | Create project category
[**Get-AllProjectCategories**](ProjectCategoriesApi.md#Get-AllProjectCategories) | **GET** /rest/api/3/projectCategory | Get all project categories
[**Get-ProjectCategoryById**](ProjectCategoriesApi.md#Get-ProjectCategoryById) | **GET** /rest/api/3/projectCategory/{id} | Get project category by ID
[**Remove-ProjectCategory**](ProjectCategoriesApi.md#Remove-ProjectCategory) | **DELETE** /rest/api/3/projectCategory/{id} | Delete project category
[**Update-ProjectCategory**](ProjectCategoriesApi.md#Update-ProjectCategory) | **PUT** /rest/api/3/projectCategory/{id} | Update project category


<a id="New-ProjectCategory"></a>
# **New-ProjectCategory**
> ProjectCategory New-ProjectCategory<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectCategory] <PSCustomObject><br>

Create project category

Creates a project category.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectCategory = Initialize-ProjectCategory -Description "MyDescription" -Id "MyId" -Name "MyName" -Self "MySelf" # ProjectCategory | 

# Create project category
try {
    $Result = New-ProjectCategory -ProjectCategory $ProjectCategory
} catch {
    Write-Host ("Exception occurred when calling New-ProjectCategory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectCategory** | [**ProjectCategory**](ProjectCategory.md)|  | 

### Return type

[**ProjectCategory**](ProjectCategory.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllProjectCategories"></a>
# **Get-AllProjectCategories**
> ProjectCategory[] Get-AllProjectCategories<br>

Get all project categories

Returns all project categories.  **[Permissions](#permissions) required:** Permission to access Jira.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get all project categories
try {
    $Result = Get-AllProjectCategories
} catch {
    Write-Host ("Exception occurred when calling Get-AllProjectCategories: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProjectCategory[]**](ProjectCategory.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProjectCategoryById"></a>
# **Get-ProjectCategoryById**
> ProjectCategory Get-ProjectCategoryById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Get project category by ID

Returns a project category.  **[Permissions](#permissions) required:** Permission to access Jira.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the project category.

# Get project category by ID
try {
    $Result = Get-ProjectCategoryById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectCategoryById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the project category. | 

### Return type

[**ProjectCategory**](ProjectCategory.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-ProjectCategory"></a>
# **Remove-ProjectCategory**
> void Remove-ProjectCategory<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Delete project category

Deletes a project category.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | ID of the project category to delete.

# Delete project category
try {
    $Result = Remove-ProjectCategory -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-ProjectCategory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| ID of the project category to delete. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ProjectCategory"></a>
# **Update-ProjectCategory**
> UpdatedProjectCategory Update-ProjectCategory<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectCategory] <PSCustomObject><br>

Update project category

Updates a project category.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | 
$ProjectCategory = Initialize-ProjectCategory -Description "MyDescription" -Id "MyId" -Name "MyName" -Self "MySelf" # ProjectCategory | 

# Update project category
try {
    $Result = Update-ProjectCategory -Id $Id -ProjectCategory $ProjectCategory
} catch {
    Write-Host ("Exception occurred when calling Update-ProjectCategory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**|  | 
 **ProjectCategory** | [**ProjectCategory**](ProjectCategory.md)|  | 

### Return type

[**UpdatedProjectCategory**](UpdatedProjectCategory.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

