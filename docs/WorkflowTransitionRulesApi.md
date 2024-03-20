# PSJira.PSJira\Api.WorkflowTransitionRulesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeleteWorkflowTransitionRuleConfigurations**](WorkflowTransitionRulesApi.md#Invoke-DeleteWorkflowTransitionRuleConfigurations) | **PUT** /rest/api/3/workflow/rule/config/delete | Delete workflow transition rule configurations
[**Get-WorkflowTransitionRuleConfigurations**](WorkflowTransitionRulesApi.md#Get-WorkflowTransitionRuleConfigurations) | **GET** /rest/api/3/workflow/rule/config | Get workflow transition rule configurations
[**Update-WorkflowTransitionRuleConfigurations**](WorkflowTransitionRulesApi.md#Update-WorkflowTransitionRuleConfigurations) | **PUT** /rest/api/3/workflow/rule/config | Update workflow transition rule configurations


<a id="Invoke-DeleteWorkflowTransitionRuleConfigurations"></a>
# **Invoke-DeleteWorkflowTransitionRuleConfigurations**
> WorkflowTransitionRulesUpdateErrors Invoke-DeleteWorkflowTransitionRuleConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowsWithTransitionRulesDetails] <PSCustomObject><br>

Delete workflow transition rule configurations

Deletes workflow transition rules from one or more workflows. These rule types are supported:   *  [post functions](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-post-function/)  *  [conditions](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-condition/)  *  [validators](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-validator/)  Only rules created by the calling Connect app can be deleted.  **[Permissions](#permissions) required:** Only Connect apps can use this operation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowId = Initialize-WorkflowId -Draft $false -Name "MyName"
$WorkflowTransitionRulesDetails = Initialize-WorkflowTransitionRulesDetails -WorkflowId $WorkflowId -WorkflowRuleIds "MyWorkflowRuleIds"

$WorkflowsWithTransitionRulesDetails = Initialize-WorkflowsWithTransitionRulesDetails -Workflows $WorkflowTransitionRulesDetails # WorkflowsWithTransitionRulesDetails | 

# Delete workflow transition rule configurations
try {
    $Result = Invoke-DeleteWorkflowTransitionRuleConfigurations -WorkflowsWithTransitionRulesDetails $WorkflowsWithTransitionRulesDetails
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteWorkflowTransitionRuleConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowsWithTransitionRulesDetails** | [**WorkflowsWithTransitionRulesDetails**](WorkflowsWithTransitionRulesDetails.md)|  | 

### Return type

[**WorkflowTransitionRulesUpdateErrors**](WorkflowTransitionRulesUpdateErrors.md) (PSCustomObject)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowTransitionRuleConfigurations"></a>
# **Get-WorkflowTransitionRuleConfigurations**
> PageBeanWorkflowTransitionRules Get-WorkflowTransitionRuleConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Types] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Keys] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowNames] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithTags] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Draft] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get workflow transition rule configurations

Returns a [paginated](#pagination) list of workflows with transition rules. The workflows can be filtered to return only those containing workflow transition rules:   *  of one or more transition rule types, such as [workflow post functions](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-post-function/).  *  matching one or more transition rule keys.  Only workflows containing transition rules created by the calling [Connect](https://developer.atlassian.com/cloud/jira/platform/index/#connect-apps) or [Forge](https://developer.atlassian.com/cloud/jira/platform/index/#forge-apps) app are returned.  Due to server-side optimizations, workflows with an empty list of rules may be returned; these workflows can be ignored.  **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/index/#connect-apps) or [Forge](https://developer.atlassian.com/cloud/jira/platform/index/#forge-apps) apps can use this operation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Types = "postfunction" # String[] | The types of the transition rules to return.
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 10)
$Keys = "MyKeys" # String[] | The transition rule class keys, as defined in the Connect or the Forge app descriptor, of the transition rules to return. (optional)
$WorkflowNames = "MyWorkflowNames" # String[] | The list of workflow names to filter by. (optional)
$WithTags = "MyWithTags" # String[] | The list of `tags` to filter by. (optional)
$Draft = $true # Boolean | Whether draft or published workflows are returned. If not provided, both workflow types are returned. (optional)
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information in the response. This parameter accepts `transition`, which, for each rule, returns information about the transition the rule is assigned to. (optional)

# Get workflow transition rule configurations
try {
    $Result = Get-WorkflowTransitionRuleConfigurations -Types $Types -StartAt $StartAt -MaxResults $MaxResults -Keys $Keys -WorkflowNames $WorkflowNames -WithTags $WithTags -Draft $Draft -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowTransitionRuleConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Types** | [**String[]**](String.md)| The types of the transition rules to return. | 
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 10]
 **Keys** | [**String[]**](String.md)| The transition rule class keys, as defined in the Connect or the Forge app descriptor, of the transition rules to return. | [optional] 
 **WorkflowNames** | [**String[]**](String.md)| The list of workflow names to filter by. | [optional] 
 **WithTags** | [**String[]**](String.md)| The list of &#x60;tags&#x60; to filter by. | [optional] 
 **Draft** | **Boolean**| Whether draft or published workflows are returned. If not provided, both workflow types are returned. | [optional] 
 **Expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts &#x60;transition&#x60;, which, for each rule, returns information about the transition the rule is assigned to. | [optional] 

### Return type

[**PageBeanWorkflowTransitionRules**](PageBeanWorkflowTransitionRules.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-WorkflowTransitionRuleConfigurations"></a>
# **Update-WorkflowTransitionRuleConfigurations**
> WorkflowTransitionRulesUpdateErrors Update-WorkflowTransitionRuleConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowTransitionRulesUpdate] <PSCustomObject><br>

Update workflow transition rule configurations

Updates configuration of workflow transition rules. The following rule types are supported:   *  [post functions](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-post-function/)  *  [conditions](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-condition/)  *  [validators](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-validator/)  Only rules created by the calling [Connect](https://developer.atlassian.com/cloud/jira/platform/index/#connect-apps) or [Forge](https://developer.atlassian.com/cloud/jira/platform/index/#forge-apps) app can be updated.  To assist with app migration, this operation can be used to:   *  Disable a rule.  *  Add a `tag`. Use this to filter rules in the [Get workflow transition rule configurations](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-workflow-transition-rules/#api-rest-api-3-workflow-rule-config-get).  Rules are enabled if the `disabled` parameter is not provided.  **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/index/#connect-apps) or [Forge](https://developer.atlassian.com/cloud/jira/platform/index/#forge-apps) apps can use this operation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$RuleConfiguration = Initialize-RuleConfiguration -Disabled $false -Tag "MyTag" -Value "MyValue"
$WorkflowTransition = Initialize-WorkflowTransition -Id 0 -Name "MyName"
$AppWorkflowTransitionRule = Initialize-AppWorkflowTransitionRule -Configuration $RuleConfiguration -Id "MyId" -Key "MyKey" -Transition $WorkflowTransition

$WorkflowId = Initialize-WorkflowId -Draft $false -Name "MyName"
$WorkflowTransitionRules = Initialize-WorkflowTransitionRules -Conditions $AppWorkflowTransitionRule -PostFunctions $AppWorkflowTransitionRule -Validators $AppWorkflowTransitionRule -WorkflowId $WorkflowId

$WorkflowTransitionRulesUpdate = Initialize-WorkflowTransitionRulesUpdate -Workflows $WorkflowTransitionRules # WorkflowTransitionRulesUpdate | 

# Update workflow transition rule configurations
try {
    $Result = Update-WorkflowTransitionRuleConfigurations -WorkflowTransitionRulesUpdate $WorkflowTransitionRulesUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-WorkflowTransitionRuleConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowTransitionRulesUpdate** | [**WorkflowTransitionRulesUpdate**](WorkflowTransitionRulesUpdate.md)|  | 

### Return type

[**WorkflowTransitionRulesUpdateErrors**](WorkflowTransitionRulesUpdateErrors.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

