# PSJira.PSJira\Api.IssueTypeScreenSchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-MappingsForIssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#Add-MappingsForIssueTypeScreenScheme) | **PUT** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId}/mapping | Append mappings to issue type screen scheme
[**Set-IssueTypeScreenSchemeToProject**](IssueTypeScreenSchemesApi.md#Set-IssueTypeScreenSchemeToProject) | **PUT** /rest/api/3/issuetypescreenscheme/project | Assign issue type screen scheme to project
[**New-IssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#New-IssueTypeScreenScheme) | **POST** /rest/api/3/issuetypescreenscheme | Create issue type screen scheme
[**Invoke-DeleteIssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#Invoke-DeleteIssueTypeScreenScheme) | **DELETE** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId} | Delete issue type screen scheme
[**Get-IssueTypeScreenSchemeMappings**](IssueTypeScreenSchemesApi.md#Get-IssueTypeScreenSchemeMappings) | **GET** /rest/api/3/issuetypescreenscheme/mapping | Get issue type screen scheme items
[**Get-IssueTypeScreenSchemeProjectAssociations**](IssueTypeScreenSchemesApi.md#Get-IssueTypeScreenSchemeProjectAssociations) | **GET** /rest/api/3/issuetypescreenscheme/project | Get issue type screen schemes for projects
[**Get-IssueTypeScreenSchemes**](IssueTypeScreenSchemesApi.md#Get-IssueTypeScreenSchemes) | **GET** /rest/api/3/issuetypescreenscheme | Get issue type screen schemes
[**Get-ProjectsForIssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#Get-ProjectsForIssueTypeScreenScheme) | **GET** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId}/project | Get issue type screen scheme projects
[**Remove-MappingsFromIssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#Remove-MappingsFromIssueTypeScreenScheme) | **POST** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId}/mapping/remove | Remove mappings from issue type screen scheme
[**Update-DefaultScreenScheme**](IssueTypeScreenSchemesApi.md#Update-DefaultScreenScheme) | **PUT** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId}/mapping/default | Update issue type screen scheme default screen scheme
[**Update-IssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#Update-IssueTypeScreenScheme) | **PUT** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId} | Update issue type screen scheme


<a id="Add-MappingsForIssueTypeScreenScheme"></a>
# **Add-MappingsForIssueTypeScreenScheme**
> AnyType Add-MappingsForIssueTypeScreenScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeScreenSchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeScreenSchemeMappingDetails] <PSCustomObject><br>

Append mappings to issue type screen scheme

Appends issue type to screen scheme mappings to an issue type screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueTypeScreenSchemeId = "MyIssueTypeScreenSchemeId" # String | The ID of the issue type screen scheme.
$IssueTypeScreenSchemeMapping = Initialize-IssueTypeScreenSchemeMapping -IssueTypeId "MyIssueTypeId" -ScreenSchemeId "MyScreenSchemeId"
$IssueTypeScreenSchemeMappingDetails = Initialize-IssueTypeScreenSchemeMappingDetails -IssueTypeMappings $IssueTypeScreenSchemeMapping # IssueTypeScreenSchemeMappingDetails | 

# Append mappings to issue type screen scheme
try {
    $Result = Add-MappingsForIssueTypeScreenScheme -IssueTypeScreenSchemeId $IssueTypeScreenSchemeId -IssueTypeScreenSchemeMappingDetails $IssueTypeScreenSchemeMappingDetails
} catch {
    Write-Host ("Exception occurred when calling Add-MappingsForIssueTypeScreenScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueTypeScreenSchemeId** | **String**| The ID of the issue type screen scheme. | 
 **IssueTypeScreenSchemeMappingDetails** | [**IssueTypeScreenSchemeMappingDetails**](IssueTypeScreenSchemeMappingDetails.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-IssueTypeScreenSchemeToProject"></a>
# **Set-IssueTypeScreenSchemeToProject**
> AnyType Set-IssueTypeScreenSchemeToProject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeScreenSchemeProjectAssociation] <PSCustomObject><br>

Assign issue type screen scheme to project

Assigns an issue type screen scheme to a project.  Issue type screen schemes can only be assigned to classic projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueTypeScreenSchemeProjectAssociation = Initialize-IssueTypeScreenSchemeProjectAssociation -IssueTypeScreenSchemeId "MyIssueTypeScreenSchemeId" -ProjectId "MyProjectId" # IssueTypeScreenSchemeProjectAssociation | 

# Assign issue type screen scheme to project
try {
    $Result = Set-IssueTypeScreenSchemeToProject -IssueTypeScreenSchemeProjectAssociation $IssueTypeScreenSchemeProjectAssociation
} catch {
    Write-Host ("Exception occurred when calling Set-IssueTypeScreenSchemeToProject: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueTypeScreenSchemeProjectAssociation** | [**IssueTypeScreenSchemeProjectAssociation**](IssueTypeScreenSchemeProjectAssociation.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-IssueTypeScreenScheme"></a>
# **New-IssueTypeScreenScheme**
> IssueTypeScreenSchemeId New-IssueTypeScreenScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeScreenSchemeDetails] <PSCustomObject><br>

Create issue type screen scheme

Creates an issue type screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueTypeScreenSchemeMapping = Initialize-IssueTypeScreenSchemeMapping -IssueTypeId "MyIssueTypeId" -ScreenSchemeId "MyScreenSchemeId"
$IssueTypeScreenSchemeDetails = Initialize-IssueTypeScreenSchemeDetails -Description "MyDescription" -IssueTypeMappings $IssueTypeScreenSchemeMapping -Name "MyName" # IssueTypeScreenSchemeDetails | An issue type screen scheme bean.

# Create issue type screen scheme
try {
    $Result = New-IssueTypeScreenScheme -IssueTypeScreenSchemeDetails $IssueTypeScreenSchemeDetails
} catch {
    Write-Host ("Exception occurred when calling New-IssueTypeScreenScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueTypeScreenSchemeDetails** | [**IssueTypeScreenSchemeDetails**](IssueTypeScreenSchemeDetails.md)| An issue type screen scheme bean. | 

### Return type

[**IssueTypeScreenSchemeId**](IssueTypeScreenSchemeId.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteIssueTypeScreenScheme"></a>
# **Invoke-DeleteIssueTypeScreenScheme**
> AnyType Invoke-DeleteIssueTypeScreenScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeScreenSchemeId] <String><br>

Delete issue type screen scheme

Deletes an issue type screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueTypeScreenSchemeId = "MyIssueTypeScreenSchemeId" # String | The ID of the issue type screen scheme.

# Delete issue type screen scheme
try {
    $Result = Invoke-DeleteIssueTypeScreenScheme -IssueTypeScreenSchemeId $IssueTypeScreenSchemeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteIssueTypeScreenScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueTypeScreenSchemeId** | **String**| The ID of the issue type screen scheme. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IssueTypeScreenSchemeMappings"></a>
# **Get-IssueTypeScreenSchemeMappings**
> PageBeanIssueTypeScreenSchemeItem Get-IssueTypeScreenSchemeMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeScreenSchemeId] <System.Nullable[Int64][]><br>

Get issue type screen scheme items

Returns a [paginated](#pagination) list of issue type screen scheme items.  Only issue type screen schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)
$IssueTypeScreenSchemeId = 0 # Int64[] | The list of issue type screen scheme IDs. To include multiple issue type screen schemes, separate IDs with ampersand: `issueTypeScreenSchemeId=10000&issueTypeScreenSchemeId=10001`. (optional)

# Get issue type screen scheme items
try {
    $Result = Get-IssueTypeScreenSchemeMappings -StartAt $StartAt -MaxResults $MaxResults -IssueTypeScreenSchemeId $IssueTypeScreenSchemeId
} catch {
    Write-Host ("Exception occurred when calling Get-IssueTypeScreenSchemeMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **IssueTypeScreenSchemeId** | [**Int64[]**](Int64.md)| The list of issue type screen scheme IDs. To include multiple issue type screen schemes, separate IDs with ampersand: &#x60;issueTypeScreenSchemeId&#x3D;10000&amp;issueTypeScreenSchemeId&#x3D;10001&#x60;. | [optional] 

### Return type

[**PageBeanIssueTypeScreenSchemeItem**](PageBeanIssueTypeScreenSchemeItem.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IssueTypeScreenSchemeProjectAssociations"></a>
# **Get-IssueTypeScreenSchemeProjectAssociations**
> PageBeanIssueTypeScreenSchemesProjects Get-IssueTypeScreenSchemeProjectAssociations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get issue type screen schemes for projects

Returns a [paginated](#pagination) list of issue type screen schemes and, for each issue type screen scheme, a list of the projects that use it.  Only issue type screen schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectId = 0 # Int64[] | The list of project IDs. To include multiple projects, separate IDs with ampersand: `projectId=10000&projectId=10001`.
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)

# Get issue type screen schemes for projects
try {
    $Result = Get-IssueTypeScreenSchemeProjectAssociations -ProjectId $ProjectId -StartAt $StartAt -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-IssueTypeScreenSchemeProjectAssociations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | [**Int64[]**](Int64.md)| The list of project IDs. To include multiple projects, separate IDs with ampersand: &#x60;projectId&#x3D;10000&amp;projectId&#x3D;10001&#x60;. | 
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]

### Return type

[**PageBeanIssueTypeScreenSchemesProjects**](PageBeanIssueTypeScreenSchemesProjects.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IssueTypeScreenSchemes"></a>
# **Get-IssueTypeScreenSchemes**
> PageBeanIssueTypeScreenScheme Get-IssueTypeScreenSchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryString] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get issue type screen schemes

Returns a [paginated](#pagination) list of issue type screen schemes.  Only issue type screen schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)
$Id = 0 # Int64[] | The list of issue type screen scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, `id=10000&id=10001`. (optional)
$QueryString = "MyQueryString" # String | String used to perform a case-insensitive partial match with issue type screen scheme name. (optional) (default to "")
$OrderBy = "name" # String | [Order](#ordering) the results by a field:   *  `name` Sorts by issue type screen scheme name.  *  `id` Sorts by issue type screen scheme ID. (optional) (default to "id")
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information in the response. This parameter accepts `projects` that, for each issue type screen schemes, returns information about the projects the issue type screen scheme is assigned to. (optional) (default to "")

# Get issue type screen schemes
try {
    $Result = Get-IssueTypeScreenSchemes -StartAt $StartAt -MaxResults $MaxResults -Id $Id -QueryString $QueryString -OrderBy $OrderBy -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-IssueTypeScreenSchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **Id** | [**Int64[]**](Int64.md)| The list of issue type screen scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] 
 **QueryString** | **String**| String used to perform a case-insensitive partial match with issue type screen scheme name. | [optional] [default to &quot;&quot;]
 **OrderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;name&#x60; Sorts by issue type screen scheme name.  *  &#x60;id&#x60; Sorts by issue type screen scheme ID. | [optional] [default to &quot;id&quot;]
 **Expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts &#x60;projects&#x60; that, for each issue type screen schemes, returns information about the projects the issue type screen scheme is assigned to. | [optional] [default to &quot;&quot;]

### Return type

[**PageBeanIssueTypeScreenScheme**](PageBeanIssueTypeScreenScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProjectsForIssueTypeScreenScheme"></a>
# **Get-ProjectsForIssueTypeScreenScheme**
> PageBeanProjectDetails Get-ProjectsForIssueTypeScreenScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeScreenSchemeId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>

Get issue type screen scheme projects

Returns a [paginated](#pagination) list of projects associated with an issue type screen scheme.  Only company-managed projects associated with an issue type screen scheme are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueTypeScreenSchemeId = 789 # Int64 | The ID of the issue type screen scheme.
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)
$Query = "MyQuery" # String |  (optional) (default to "")

# Get issue type screen scheme projects
try {
    $Result = Get-ProjectsForIssueTypeScreenScheme -IssueTypeScreenSchemeId $IssueTypeScreenSchemeId -StartAt $StartAt -MaxResults $MaxResults -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectsForIssueTypeScreenScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueTypeScreenSchemeId** | **Int64**| The ID of the issue type screen scheme. | 
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **Query** | **String**|  | [optional] [default to &quot;&quot;]

### Return type

[**PageBeanProjectDetails**](PageBeanProjectDetails.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-MappingsFromIssueTypeScreenScheme"></a>
# **Remove-MappingsFromIssueTypeScreenScheme**
> AnyType Remove-MappingsFromIssueTypeScreenScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeScreenSchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeIds] <PSCustomObject><br>

Remove mappings from issue type screen scheme

Removes issue type to screen scheme mappings from an issue type screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueTypeScreenSchemeId = "MyIssueTypeScreenSchemeId" # String | The ID of the issue type screen scheme.
$IssueTypeIds = Initialize-IssueTypeIds -IssueTypeIds "MyIssueTypeIds" # IssueTypeIds | 

# Remove mappings from issue type screen scheme
try {
    $Result = Remove-MappingsFromIssueTypeScreenScheme -IssueTypeScreenSchemeId $IssueTypeScreenSchemeId -IssueTypeIds $IssueTypeIds
} catch {
    Write-Host ("Exception occurred when calling Remove-MappingsFromIssueTypeScreenScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueTypeScreenSchemeId** | **String**| The ID of the issue type screen scheme. | 
 **IssueTypeIds** | [**IssueTypeIds**](IssueTypeIds.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DefaultScreenScheme"></a>
# **Update-DefaultScreenScheme**
> AnyType Update-DefaultScreenScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeScreenSchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDefaultScreenScheme] <PSCustomObject><br>

Update issue type screen scheme default screen scheme

Updates the default screen scheme of an issue type screen scheme. The default screen scheme is used for all unmapped issue types.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueTypeScreenSchemeId = "MyIssueTypeScreenSchemeId" # String | The ID of the issue type screen scheme.
$UpdateDefaultScreenScheme = Initialize-UpdateDefaultScreenScheme -ScreenSchemeId "MyScreenSchemeId" # UpdateDefaultScreenScheme | 

# Update issue type screen scheme default screen scheme
try {
    $Result = Update-DefaultScreenScheme -IssueTypeScreenSchemeId $IssueTypeScreenSchemeId -UpdateDefaultScreenScheme $UpdateDefaultScreenScheme
} catch {
    Write-Host ("Exception occurred when calling Update-DefaultScreenScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueTypeScreenSchemeId** | **String**| The ID of the issue type screen scheme. | 
 **UpdateDefaultScreenScheme** | [**UpdateDefaultScreenScheme**](UpdateDefaultScreenScheme.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-IssueTypeScreenScheme"></a>
# **Update-IssueTypeScreenScheme**
> AnyType Update-IssueTypeScreenScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeScreenSchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeScreenSchemeUpdateDetails] <PSCustomObject><br>

Update issue type screen scheme

Updates an issue type screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueTypeScreenSchemeId = "MyIssueTypeScreenSchemeId" # String | The ID of the issue type screen scheme.
$IssueTypeScreenSchemeUpdateDetails = Initialize-IssueTypeScreenSchemeUpdateDetails -Description "MyDescription" -Name "MyName" # IssueTypeScreenSchemeUpdateDetails | The issue type screen scheme update details.

# Update issue type screen scheme
try {
    $Result = Update-IssueTypeScreenScheme -IssueTypeScreenSchemeId $IssueTypeScreenSchemeId -IssueTypeScreenSchemeUpdateDetails $IssueTypeScreenSchemeUpdateDetails
} catch {
    Write-Host ("Exception occurred when calling Update-IssueTypeScreenScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueTypeScreenSchemeId** | **String**| The ID of the issue type screen scheme. | 
 **IssueTypeScreenSchemeUpdateDetails** | [**IssueTypeScreenSchemeUpdateDetails**](IssueTypeScreenSchemeUpdateDetails.md)| The issue type screen scheme update details. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

