# PSJira.PSJira\Api.IssueFieldConfigurationsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Set-FieldConfigurationSchemeToProject**](IssueFieldConfigurationsApi.md#Set-FieldConfigurationSchemeToProject) | **PUT** /rest/api/3/fieldconfigurationscheme/project | Assign field configuration scheme to project
[**New-FieldConfiguration**](IssueFieldConfigurationsApi.md#New-FieldConfiguration) | **POST** /rest/api/3/fieldconfiguration | Create field configuration
[**New-FieldConfigurationScheme**](IssueFieldConfigurationsApi.md#New-FieldConfigurationScheme) | **POST** /rest/api/3/fieldconfigurationscheme | Create field configuration scheme
[**Invoke-DeleteFieldConfiguration**](IssueFieldConfigurationsApi.md#Invoke-DeleteFieldConfiguration) | **DELETE** /rest/api/3/fieldconfiguration/{id} | Delete field configuration
[**Invoke-DeleteFieldConfigurationScheme**](IssueFieldConfigurationsApi.md#Invoke-DeleteFieldConfigurationScheme) | **DELETE** /rest/api/3/fieldconfigurationscheme/{id} | Delete field configuration scheme
[**Get-AllFieldConfigurationSchemes**](IssueFieldConfigurationsApi.md#Get-AllFieldConfigurationSchemes) | **GET** /rest/api/3/fieldconfigurationscheme | Get all field configuration schemes
[**Get-AllFieldConfigurations**](IssueFieldConfigurationsApi.md#Get-AllFieldConfigurations) | **GET** /rest/api/3/fieldconfiguration | Get all field configurations
[**Get-FieldConfigurationItems**](IssueFieldConfigurationsApi.md#Get-FieldConfigurationItems) | **GET** /rest/api/3/fieldconfiguration/{id}/fields | Get field configuration items
[**Get-FieldConfigurationSchemeMappings**](IssueFieldConfigurationsApi.md#Get-FieldConfigurationSchemeMappings) | **GET** /rest/api/3/fieldconfigurationscheme/mapping | Get field configuration issue type items
[**Get-FieldConfigurationSchemeProjectMapping**](IssueFieldConfigurationsApi.md#Get-FieldConfigurationSchemeProjectMapping) | **GET** /rest/api/3/fieldconfigurationscheme/project | Get field configuration schemes for projects
[**Remove-IssueTypesFromGlobalFieldConfigurationScheme**](IssueFieldConfigurationsApi.md#Remove-IssueTypesFromGlobalFieldConfigurationScheme) | **POST** /rest/api/3/fieldconfigurationscheme/{id}/mapping/delete | Remove issue types from field configuration scheme
[**Set-FieldConfigurationSchemeMapping**](IssueFieldConfigurationsApi.md#Set-FieldConfigurationSchemeMapping) | **PUT** /rest/api/3/fieldconfigurationscheme/{id}/mapping | Assign issue types to field configurations
[**Update-FieldConfiguration**](IssueFieldConfigurationsApi.md#Update-FieldConfiguration) | **PUT** /rest/api/3/fieldconfiguration/{id} | Update field configuration
[**Update-FieldConfigurationItems**](IssueFieldConfigurationsApi.md#Update-FieldConfigurationItems) | **PUT** /rest/api/3/fieldconfiguration/{id}/fields | Update field configuration items
[**Update-FieldConfigurationScheme**](IssueFieldConfigurationsApi.md#Update-FieldConfigurationScheme) | **PUT** /rest/api/3/fieldconfigurationscheme/{id} | Update field configuration scheme


<a id="Set-FieldConfigurationSchemeToProject"></a>
# **Set-FieldConfigurationSchemeToProject**
> AnyType Set-FieldConfigurationSchemeToProject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldConfigurationSchemeProjectAssociation] <PSCustomObject><br>

Assign field configuration scheme to project

Assigns a field configuration scheme to a project. If the field configuration scheme ID is `null`, the operation assigns the default field configuration scheme.  Field configuration schemes can only be assigned to classic projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$FieldConfigurationSchemeProjectAssociation = Initialize-FieldConfigurationSchemeProjectAssociation -FieldConfigurationSchemeId "MyFieldConfigurationSchemeId" -ProjectId "MyProjectId" # FieldConfigurationSchemeProjectAssociation | 

# Assign field configuration scheme to project
try {
    $Result = Set-FieldConfigurationSchemeToProject -FieldConfigurationSchemeProjectAssociation $FieldConfigurationSchemeProjectAssociation
} catch {
    Write-Host ("Exception occurred when calling Set-FieldConfigurationSchemeToProject: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FieldConfigurationSchemeProjectAssociation** | [**FieldConfigurationSchemeProjectAssociation**](FieldConfigurationSchemeProjectAssociation.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-FieldConfiguration"></a>
# **New-FieldConfiguration**
> FieldConfiguration New-FieldConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldConfigurationDetails] <PSCustomObject><br>

Create field configuration

Creates a field configuration. The field configuration is created with the same field properties as the default configuration, with all the fields being optional.  This operation can only create configurations for use in company-managed (classic) projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$FieldConfigurationDetails = Initialize-FieldConfigurationDetails -Description "MyDescription" -Name "MyName" # FieldConfigurationDetails | 

# Create field configuration
try {
    $Result = New-FieldConfiguration -FieldConfigurationDetails $FieldConfigurationDetails
} catch {
    Write-Host ("Exception occurred when calling New-FieldConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FieldConfigurationDetails** | [**FieldConfigurationDetails**](FieldConfigurationDetails.md)|  | 

### Return type

[**FieldConfiguration**](FieldConfiguration.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-FieldConfigurationScheme"></a>
# **New-FieldConfigurationScheme**
> FieldConfigurationScheme New-FieldConfigurationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateFieldConfigurationSchemeDetails] <PSCustomObject><br>

Create field configuration scheme

Creates a field configuration scheme.  This operation can only create field configuration schemes used in company-managed (classic) projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$UpdateFieldConfigurationSchemeDetails = Initialize-UpdateFieldConfigurationSchemeDetails -Description "MyDescription" -Name "MyName" # UpdateFieldConfigurationSchemeDetails | The details of the field configuration scheme.

# Create field configuration scheme
try {
    $Result = New-FieldConfigurationScheme -UpdateFieldConfigurationSchemeDetails $UpdateFieldConfigurationSchemeDetails
} catch {
    Write-Host ("Exception occurred when calling New-FieldConfigurationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateFieldConfigurationSchemeDetails** | [**UpdateFieldConfigurationSchemeDetails**](UpdateFieldConfigurationSchemeDetails.md)| The details of the field configuration scheme. | 

### Return type

[**FieldConfigurationScheme**](FieldConfigurationScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteFieldConfiguration"></a>
# **Invoke-DeleteFieldConfiguration**
> AnyType Invoke-DeleteFieldConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Delete field configuration

Deletes a field configuration.  This operation can only delete configurations used in company-managed (classic) projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the field configuration.

# Delete field configuration
try {
    $Result = Invoke-DeleteFieldConfiguration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteFieldConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the field configuration. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteFieldConfigurationScheme"></a>
# **Invoke-DeleteFieldConfigurationScheme**
> AnyType Invoke-DeleteFieldConfigurationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Delete field configuration scheme

Deletes a field configuration scheme.  This operation can only delete field configuration schemes used in company-managed (classic) projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the field configuration scheme.

# Delete field configuration scheme
try {
    $Result = Invoke-DeleteFieldConfigurationScheme -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteFieldConfigurationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the field configuration scheme. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllFieldConfigurationSchemes"></a>
# **Get-AllFieldConfigurationSchemes**
> PageBeanFieldConfigurationScheme Get-AllFieldConfigurationSchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <System.Nullable[Int64][]><br>

Get all field configuration schemes

Returns a [paginated](#pagination) list of field configuration schemes.  Only field configuration schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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
$Id = 0 # Int64[] | The list of field configuration scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, `id=10000&id=10001`. (optional)

# Get all field configuration schemes
try {
    $Result = Get-AllFieldConfigurationSchemes -StartAt $StartAt -MaxResults $MaxResults -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AllFieldConfigurationSchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **Id** | [**Int64[]**](Int64.md)| The list of field configuration scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] 

### Return type

[**PageBeanFieldConfigurationScheme**](PageBeanFieldConfigurationScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllFieldConfigurations"></a>
# **Get-AllFieldConfigurations**
> PageBeanFieldConfigurationDetails Get-AllFieldConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IsDefault] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>

Get all field configurations

Returns a [paginated](#pagination) list of field configurations. The list can be for all field configurations or a subset determined by any combination of these criteria:   *  a list of field configuration item IDs.  *  whether the field configuration is a default.  *  whether the field configuration name or description contains a query string.  Only field configurations used in company-managed (classic) projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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
$Id = 0 # Int64[] | The list of field configuration IDs. To include multiple IDs, provide an ampersand-separated list. For example, `id=10000&id=10001`. (optional)
$IsDefault = $true # Boolean | If *true* returns default field configurations only. (optional) (default to $false)
$Query = "MyQuery" # String | The query string used to match against field configuration names and descriptions. (optional) (default to "")

# Get all field configurations
try {
    $Result = Get-AllFieldConfigurations -StartAt $StartAt -MaxResults $MaxResults -Id $Id -IsDefault $IsDefault -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Get-AllFieldConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **Id** | [**Int64[]**](Int64.md)| The list of field configuration IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] 
 **IsDefault** | **Boolean**| If *true* returns default field configurations only. | [optional] [default to $false]
 **Query** | **String**| The query string used to match against field configuration names and descriptions. | [optional] [default to &quot;&quot;]

### Return type

[**PageBeanFieldConfigurationDetails**](PageBeanFieldConfigurationDetails.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-FieldConfigurationItems"></a>
# **Get-FieldConfigurationItems**
> PageBeanFieldConfigurationItem Get-FieldConfigurationItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get field configuration items

Returns a [paginated](#pagination) list of all fields for a configuration.  Only the fields from configurations used in company-managed (classic) projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the field configuration.
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)

# Get field configuration items
try {
    $Result = Get-FieldConfigurationItems -Id $Id -StartAt $StartAt -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-FieldConfigurationItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the field configuration. | 
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]

### Return type

[**PageBeanFieldConfigurationItem**](PageBeanFieldConfigurationItem.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-FieldConfigurationSchemeMappings"></a>
# **Get-FieldConfigurationSchemeMappings**
> PageBeanFieldConfigurationIssueTypeItem Get-FieldConfigurationSchemeMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldConfigurationSchemeId] <System.Nullable[Int64][]><br>

Get field configuration issue type items

Returns a [paginated](#pagination) list of field configuration issue type items.  Only items used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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
$FieldConfigurationSchemeId = 10020 # Int64[] | The list of field configuration scheme IDs. To include multiple field configuration schemes separate IDs with ampersand: `fieldConfigurationSchemeId=10000&fieldConfigurationSchemeId=10001`. (optional)

# Get field configuration issue type items
try {
    $Result = Get-FieldConfigurationSchemeMappings -StartAt $StartAt -MaxResults $MaxResults -FieldConfigurationSchemeId $FieldConfigurationSchemeId
} catch {
    Write-Host ("Exception occurred when calling Get-FieldConfigurationSchemeMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **FieldConfigurationSchemeId** | [**Int64[]**](Int64.md)| The list of field configuration scheme IDs. To include multiple field configuration schemes separate IDs with ampersand: &#x60;fieldConfigurationSchemeId&#x3D;10000&amp;fieldConfigurationSchemeId&#x3D;10001&#x60;. | [optional] 

### Return type

[**PageBeanFieldConfigurationIssueTypeItem**](PageBeanFieldConfigurationIssueTypeItem.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-FieldConfigurationSchemeProjectMapping"></a>
# **Get-FieldConfigurationSchemeProjectMapping**
> PageBeanFieldConfigurationSchemeProjects Get-FieldConfigurationSchemeProjectMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get field configuration schemes for projects

Returns a [paginated](#pagination) list of field configuration schemes and, for each scheme, a list of the projects that use it.  The list is sorted by field configuration scheme ID. The first item contains the list of project IDs assigned to the default field configuration scheme.  Only field configuration schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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

# Get field configuration schemes for projects
try {
    $Result = Get-FieldConfigurationSchemeProjectMapping -ProjectId $ProjectId -StartAt $StartAt -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-FieldConfigurationSchemeProjectMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**PageBeanFieldConfigurationSchemeProjects**](PageBeanFieldConfigurationSchemeProjects.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-IssueTypesFromGlobalFieldConfigurationScheme"></a>
# **Remove-IssueTypesFromGlobalFieldConfigurationScheme**
> AnyType Remove-IssueTypesFromGlobalFieldConfigurationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeIdsToRemove] <PSCustomObject><br>

Remove issue types from field configuration scheme

Removes issue types from the field configuration scheme.  This operation can only modify field configuration schemes used in company-managed (classic) projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the field configuration scheme.
$IssueTypeIdsToRemove = Initialize-IssueTypeIdsToRemove -IssueTypeIds "MyIssueTypeIds" # IssueTypeIdsToRemove | The issue type IDs to remove.

# Remove issue types from field configuration scheme
try {
    $Result = Remove-IssueTypesFromGlobalFieldConfigurationScheme -Id $Id -IssueTypeIdsToRemove $IssueTypeIdsToRemove
} catch {
    Write-Host ("Exception occurred when calling Remove-IssueTypesFromGlobalFieldConfigurationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the field configuration scheme. | 
 **IssueTypeIdsToRemove** | [**IssueTypeIdsToRemove**](IssueTypeIdsToRemove.md)| The issue type IDs to remove. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-FieldConfigurationSchemeMapping"></a>
# **Set-FieldConfigurationSchemeMapping**
> AnyType Set-FieldConfigurationSchemeMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssociateFieldConfigurationsWithIssueTypesRequest] <PSCustomObject><br>

Assign issue types to field configurations

Assigns issue types to field configurations on field configuration scheme.  This operation can only modify field configuration schemes used in company-managed (classic) projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the field configuration scheme.
$FieldConfigurationToIssueTypeMapping = Initialize-FieldConfigurationToIssueTypeMapping -FieldConfigurationId "MyFieldConfigurationId" -IssueTypeId "MyIssueTypeId"
$AssociateFieldConfigurationsWithIssueTypesRequest = Initialize-AssociateFieldConfigurationsWithIssueTypesRequest -Mappings $FieldConfigurationToIssueTypeMapping # AssociateFieldConfigurationsWithIssueTypesRequest | 

# Assign issue types to field configurations
try {
    $Result = Set-FieldConfigurationSchemeMapping -Id $Id -AssociateFieldConfigurationsWithIssueTypesRequest $AssociateFieldConfigurationsWithIssueTypesRequest
} catch {
    Write-Host ("Exception occurred when calling Set-FieldConfigurationSchemeMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the field configuration scheme. | 
 **AssociateFieldConfigurationsWithIssueTypesRequest** | [**AssociateFieldConfigurationsWithIssueTypesRequest**](AssociateFieldConfigurationsWithIssueTypesRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-FieldConfiguration"></a>
# **Update-FieldConfiguration**
> AnyType Update-FieldConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldConfigurationDetails] <PSCustomObject><br>

Update field configuration

Updates a field configuration. The name and the description provided in the request override the existing values.  This operation can only update configurations used in company-managed (classic) projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the field configuration.
$FieldConfigurationDetails = Initialize-FieldConfigurationDetails -Description "MyDescription" -Name "MyName" # FieldConfigurationDetails | 

# Update field configuration
try {
    $Result = Update-FieldConfiguration -Id $Id -FieldConfigurationDetails $FieldConfigurationDetails
} catch {
    Write-Host ("Exception occurred when calling Update-FieldConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the field configuration. | 
 **FieldConfigurationDetails** | [**FieldConfigurationDetails**](FieldConfigurationDetails.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-FieldConfigurationItems"></a>
# **Update-FieldConfigurationItems**
> AnyType Update-FieldConfigurationItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldConfigurationItemsDetails] <PSCustomObject><br>

Update field configuration items

Updates fields in a field configuration. The properties of the field configuration fields provided override the existing values.  This operation can only update field configurations used in company-managed (classic) projects.  The operation can set the renderer for text fields to the default text renderer (`text-renderer`) or wiki style renderer (`wiki-renderer`). However, the renderer cannot be updated for fields using the autocomplete renderer (`autocomplete-renderer`).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the field configuration.
$FieldConfigurationItem = Initialize-FieldConfigurationItem -Description "MyDescription" -Id "MyId" -IsHidden $false -IsRequired $false -Renderer "MyRenderer"
$FieldConfigurationItemsDetails = Initialize-FieldConfigurationItemsDetails -FieldConfigurationItems $FieldConfigurationItem # FieldConfigurationItemsDetails | 

# Update field configuration items
try {
    $Result = Update-FieldConfigurationItems -Id $Id -FieldConfigurationItemsDetails $FieldConfigurationItemsDetails
} catch {
    Write-Host ("Exception occurred when calling Update-FieldConfigurationItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the field configuration. | 
 **FieldConfigurationItemsDetails** | [**FieldConfigurationItemsDetails**](FieldConfigurationItemsDetails.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-FieldConfigurationScheme"></a>
# **Update-FieldConfigurationScheme**
> AnyType Update-FieldConfigurationScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateFieldConfigurationSchemeDetails] <PSCustomObject><br>

Update field configuration scheme

Updates a field configuration scheme.  This operation can only update field configuration schemes used in company-managed (classic) projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the field configuration scheme.
$UpdateFieldConfigurationSchemeDetails = Initialize-UpdateFieldConfigurationSchemeDetails -Description "MyDescription" -Name "MyName" # UpdateFieldConfigurationSchemeDetails | The details of the field configuration scheme.

# Update field configuration scheme
try {
    $Result = Update-FieldConfigurationScheme -Id $Id -UpdateFieldConfigurationSchemeDetails $UpdateFieldConfigurationSchemeDetails
} catch {
    Write-Host ("Exception occurred when calling Update-FieldConfigurationScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the field configuration scheme. | 
 **UpdateFieldConfigurationSchemeDetails** | [**UpdateFieldConfigurationSchemeDetails**](UpdateFieldConfigurationSchemeDetails.md)| The details of the field configuration scheme. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

