# PSJira.PSJira\Api.TimeTrackingApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AvailableTimeTrackingImplementations**](TimeTrackingApi.md#Get-AvailableTimeTrackingImplementations) | **GET** /rest/api/3/configuration/timetracking/list | Get all time tracking providers
[**Get-SelectedTimeTrackingImplementation**](TimeTrackingApi.md#Get-SelectedTimeTrackingImplementation) | **GET** /rest/api/3/configuration/timetracking | Get selected time tracking provider
[**Get-SharedTimeTrackingConfiguration**](TimeTrackingApi.md#Get-SharedTimeTrackingConfiguration) | **GET** /rest/api/3/configuration/timetracking/options | Get time tracking settings
[**Select-TimeTrackingImplementation**](TimeTrackingApi.md#Select-TimeTrackingImplementation) | **PUT** /rest/api/3/configuration/timetracking | Select time tracking provider
[**Set-SharedTimeTrackingConfiguration**](TimeTrackingApi.md#Set-SharedTimeTrackingConfiguration) | **PUT** /rest/api/3/configuration/timetracking/options | Set time tracking settings


<a id="Get-AvailableTimeTrackingImplementations"></a>
# **Get-AvailableTimeTrackingImplementations**
> TimeTrackingProvider[] Get-AvailableTimeTrackingImplementations<br>

Get all time tracking providers

Returns all time tracking providers. By default, Jira only has one time tracking provider: *JIRA provided time tracking*. However, you can install other time tracking providers via apps from the Atlassian Marketplace. For more information on time tracking providers, see the documentation for the [ Time Tracking Provider](https://developer.atlassian.com/cloud/jira/platform/modules/time-tracking-provider/) module.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get all time tracking providers
try {
    $Result = Get-AvailableTimeTrackingImplementations
} catch {
    Write-Host ("Exception occurred when calling Get-AvailableTimeTrackingImplementations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TimeTrackingProvider[]**](TimeTrackingProvider.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SelectedTimeTrackingImplementation"></a>
# **Get-SelectedTimeTrackingImplementation**
> TimeTrackingProvider Get-SelectedTimeTrackingImplementation<br>

Get selected time tracking provider

Returns the time tracking provider that is currently selected. Note that if time tracking is disabled, then a successful but empty response is returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get selected time tracking provider
try {
    $Result = Get-SelectedTimeTrackingImplementation
} catch {
    Write-Host ("Exception occurred when calling Get-SelectedTimeTrackingImplementation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TimeTrackingProvider**](TimeTrackingProvider.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SharedTimeTrackingConfiguration"></a>
# **Get-SharedTimeTrackingConfiguration**
> TimeTrackingConfiguration Get-SharedTimeTrackingConfiguration<br>

Get time tracking settings

Returns the time tracking settings. This includes settings such as the time format, default time unit, and others. For more information, see [Configuring time tracking](https://confluence.atlassian.com/x/qoXKM).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get time tracking settings
try {
    $Result = Get-SharedTimeTrackingConfiguration
} catch {
    Write-Host ("Exception occurred when calling Get-SharedTimeTrackingConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TimeTrackingConfiguration**](TimeTrackingConfiguration.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Select-TimeTrackingImplementation"></a>
# **Select-TimeTrackingImplementation**
> AnyType Select-TimeTrackingImplementation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeTrackingProvider] <PSCustomObject><br>

Select time tracking provider

Selects a time tracking provider.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$TimeTrackingProvider = Initialize-TimeTrackingProvider -Key "MyKey" -Name "MyName" -Url "MyUrl" # TimeTrackingProvider | 

# Select time tracking provider
try {
    $Result = Select-TimeTrackingImplementation -TimeTrackingProvider $TimeTrackingProvider
} catch {
    Write-Host ("Exception occurred when calling Select-TimeTrackingImplementation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TimeTrackingProvider** | [**TimeTrackingProvider**](TimeTrackingProvider.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-SharedTimeTrackingConfiguration"></a>
# **Set-SharedTimeTrackingConfiguration**
> TimeTrackingConfiguration Set-SharedTimeTrackingConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeTrackingConfiguration] <PSCustomObject><br>

Set time tracking settings

Sets the time tracking settings.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$TimeTrackingConfiguration = Initialize-TimeTrackingConfiguration -DefaultUnit "minute" -TimeFormat "pretty" -WorkingDaysPerWeek 0 -WorkingHoursPerDay 0 # TimeTrackingConfiguration | 

# Set time tracking settings
try {
    $Result = Set-SharedTimeTrackingConfiguration -TimeTrackingConfiguration $TimeTrackingConfiguration
} catch {
    Write-Host ("Exception occurred when calling Set-SharedTimeTrackingConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TimeTrackingConfiguration** | [**TimeTrackingConfiguration**](TimeTrackingConfiguration.md)|  | 

### Return type

[**TimeTrackingConfiguration**](TimeTrackingConfiguration.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

