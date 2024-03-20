# PSJira.PSJira\Api.WorkflowTransitionPropertiesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-WorkflowTransitionProperty**](WorkflowTransitionPropertiesApi.md#New-WorkflowTransitionProperty) | **POST** /rest/api/3/workflow/transitions/{transitionId}/properties | Create workflow transition property
[**Invoke-DeleteWorkflowTransitionProperty**](WorkflowTransitionPropertiesApi.md#Invoke-DeleteWorkflowTransitionProperty) | **DELETE** /rest/api/3/workflow/transitions/{transitionId}/properties | Delete workflow transition property
[**Get-WorkflowTransitionProperties**](WorkflowTransitionPropertiesApi.md#Get-WorkflowTransitionProperties) | **GET** /rest/api/3/workflow/transitions/{transitionId}/properties | Get workflow transition properties
[**Update-WorkflowTransitionProperty**](WorkflowTransitionPropertiesApi.md#Update-WorkflowTransitionProperty) | **PUT** /rest/api/3/workflow/transitions/{transitionId}/properties | Update workflow transition property


<a id="New-WorkflowTransitionProperty"></a>
# **New-WorkflowTransitionProperty**
> WorkflowTransitionProperty New-WorkflowTransitionProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TransitionId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowTransitionProperty] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowMode] <String><br>

Create workflow transition property

Adds a property to a workflow transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$TransitionId = 789 # Int64 | The ID of the transition. To get the ID, view the workflow in text mode in the Jira admin settings. The ID is shown next to the transition.
$Key = "MyKey" # String | The key of the property being added, also known as the name of the property. Set this to the same value as the `key` defined in the request body.
$WorkflowName = "MyWorkflowName" # String | The name of the workflow that the transition belongs to.
$WorkflowTransitionProperty = Initialize-WorkflowTransitionProperty -Id "MyId" -Key "MyKey" -Value "MyValue" # WorkflowTransitionProperty | 
$WorkflowMode = "live" # String | The workflow status. Set to *live* for inactive workflows or *draft* for draft workflows. Active workflows cannot be edited. (optional) (default to "live")

# Create workflow transition property
try {
    $Result = New-WorkflowTransitionProperty -TransitionId $TransitionId -Key $Key -WorkflowName $WorkflowName -WorkflowTransitionProperty $WorkflowTransitionProperty -WorkflowMode $WorkflowMode
} catch {
    Write-Host ("Exception occurred when calling New-WorkflowTransitionProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TransitionId** | **Int64**| The ID of the transition. To get the ID, view the workflow in text mode in the Jira admin settings. The ID is shown next to the transition. | 
 **Key** | **String**| The key of the property being added, also known as the name of the property. Set this to the same value as the &#x60;key&#x60; defined in the request body. | 
 **WorkflowName** | **String**| The name of the workflow that the transition belongs to. | 
 **WorkflowTransitionProperty** | [**WorkflowTransitionProperty**](WorkflowTransitionProperty.md)|  | 
 **WorkflowMode** | **String**| The workflow status. Set to *live* for inactive workflows or *draft* for draft workflows. Active workflows cannot be edited. | [optional] [default to &quot;live&quot;]

### Return type

[**WorkflowTransitionProperty**](WorkflowTransitionProperty.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteWorkflowTransitionProperty"></a>
# **Invoke-DeleteWorkflowTransitionProperty**
> void Invoke-DeleteWorkflowTransitionProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TransitionId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowMode] <String><br>

Delete workflow transition property

Deletes a property from a workflow transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$TransitionId = 789 # Int64 | The ID of the transition. To get the ID, view the workflow in text mode in the Jira admin settings. The ID is shown next to the transition.
$Key = "MyKey" # String | The name of the transition property to delete, also known as the name of the property.
$WorkflowName = "MyWorkflowName" # String | The name of the workflow that the transition belongs to.
$WorkflowMode = "live" # String | The workflow status. Set to `live` for inactive workflows or `draft` for draft workflows. Active workflows cannot be edited. (optional)

# Delete workflow transition property
try {
    $Result = Invoke-DeleteWorkflowTransitionProperty -TransitionId $TransitionId -Key $Key -WorkflowName $WorkflowName -WorkflowMode $WorkflowMode
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteWorkflowTransitionProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TransitionId** | **Int64**| The ID of the transition. To get the ID, view the workflow in text mode in the Jira admin settings. The ID is shown next to the transition. | 
 **Key** | **String**| The name of the transition property to delete, also known as the name of the property. | 
 **WorkflowName** | **String**| The name of the workflow that the transition belongs to. | 
 **WorkflowMode** | **String**| The workflow status. Set to &#x60;live&#x60; for inactive workflows or &#x60;draft&#x60; for draft workflows. Active workflows cannot be edited. | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowTransitionProperties"></a>
# **Get-WorkflowTransitionProperties**
> WorkflowTransitionProperty Get-WorkflowTransitionProperties<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TransitionId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeReservedKeys] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowMode] <String><br>

Get workflow transition properties

Returns the properties on a workflow transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$TransitionId = 789 # Int64 | The ID of the transition. To get the ID, view the workflow in text mode in the Jira administration console. The ID is shown next to the transition.
$WorkflowName = "MyWorkflowName" # String | The name of the workflow that the transition belongs to.
$IncludeReservedKeys = $true # Boolean | Some properties with keys that have the *jira.* prefix are reserved, which means they are not editable. To include these properties in the results, set this parameter to *true*. (optional) (default to $false)
$Key = "MyKey" # String | The key of the property being returned, also known as the name of the property. If this parameter is not specified, all properties on the transition are returned. (optional)
$WorkflowMode = "live" # String | The workflow status. Set to *live* for active and inactive workflows, or *draft* for draft workflows. (optional) (default to "live")

# Get workflow transition properties
try {
    $Result = Get-WorkflowTransitionProperties -TransitionId $TransitionId -WorkflowName $WorkflowName -IncludeReservedKeys $IncludeReservedKeys -Key $Key -WorkflowMode $WorkflowMode
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowTransitionProperties: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TransitionId** | **Int64**| The ID of the transition. To get the ID, view the workflow in text mode in the Jira administration console. The ID is shown next to the transition. | 
 **WorkflowName** | **String**| The name of the workflow that the transition belongs to. | 
 **IncludeReservedKeys** | **Boolean**| Some properties with keys that have the *jira.* prefix are reserved, which means they are not editable. To include these properties in the results, set this parameter to *true*. | [optional] [default to $false]
 **Key** | **String**| The key of the property being returned, also known as the name of the property. If this parameter is not specified, all properties on the transition are returned. | [optional] 
 **WorkflowMode** | **String**| The workflow status. Set to *live* for active and inactive workflows, or *draft* for draft workflows. | [optional] [default to &quot;live&quot;]

### Return type

[**WorkflowTransitionProperty**](WorkflowTransitionProperty.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-WorkflowTransitionProperty"></a>
# **Update-WorkflowTransitionProperty**
> WorkflowTransitionProperty Update-WorkflowTransitionProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TransitionId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowTransitionProperty] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowMode] <String><br>

Update workflow transition property

Updates a workflow transition by changing the property value. Trying to update a property that does not exist results in a new property being added to the transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$TransitionId = 789 # Int64 | The ID of the transition. To get the ID, view the workflow in text mode in the Jira admin settings. The ID is shown next to the transition.
$Key = "MyKey" # String | The key of the property being updated, also known as the name of the property. Set this to the same value as the `key` defined in the request body.
$WorkflowName = "MyWorkflowName" # String | The name of the workflow that the transition belongs to.
$WorkflowTransitionProperty = Initialize-WorkflowTransitionProperty -Id "MyId" -Key "MyKey" -Value "MyValue" # WorkflowTransitionProperty | 
$WorkflowMode = "live" # String | The workflow status. Set to `live` for inactive workflows or `draft` for draft workflows. Active workflows cannot be edited. (optional)

# Update workflow transition property
try {
    $Result = Update-WorkflowTransitionProperty -TransitionId $TransitionId -Key $Key -WorkflowName $WorkflowName -WorkflowTransitionProperty $WorkflowTransitionProperty -WorkflowMode $WorkflowMode
} catch {
    Write-Host ("Exception occurred when calling Update-WorkflowTransitionProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TransitionId** | **Int64**| The ID of the transition. To get the ID, view the workflow in text mode in the Jira admin settings. The ID is shown next to the transition. | 
 **Key** | **String**| The key of the property being updated, also known as the name of the property. Set this to the same value as the &#x60;key&#x60; defined in the request body. | 
 **WorkflowName** | **String**| The name of the workflow that the transition belongs to. | 
 **WorkflowTransitionProperty** | [**WorkflowTransitionProperty**](WorkflowTransitionProperty.md)|  | 
 **WorkflowMode** | **String**| The workflow status. Set to &#x60;live&#x60; for inactive workflows or &#x60;draft&#x60; for draft workflows. Active workflows cannot be edited. | [optional] 

### Return type

[**WorkflowTransitionProperty**](WorkflowTransitionProperty.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

