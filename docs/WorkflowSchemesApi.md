# PSJira.PSJira\Api.WorkflowSchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-WorkflowScheme**](WorkflowSchemesApi.md#New-WorkflowScheme) | **POST** /rest/api/3/workflowscheme | Create workflow scheme
[**Invoke-DeleteDefaultWorkflow**](WorkflowSchemesApi.md#Invoke-DeleteDefaultWorkflow) | **DELETE** /rest/api/3/workflowscheme/{id}/default | Delete default workflow
[**Invoke-DeleteWorkflowMapping**](WorkflowSchemesApi.md#Invoke-DeleteWorkflowMapping) | **DELETE** /rest/api/3/workflowscheme/{id}/workflow | Delete issue types for workflow in workflow scheme
[**Invoke-DeleteWorkflowScheme**](WorkflowSchemesApi.md#Invoke-DeleteWorkflowScheme) | **DELETE** /rest/api/3/workflowscheme/{id} | Delete workflow scheme
[**Invoke-DeleteWorkflowSchemeIssueType**](WorkflowSchemesApi.md#Invoke-DeleteWorkflowSchemeIssueType) | **DELETE** /rest/api/3/workflowscheme/{id}/issuetype/{issueType} | Delete workflow for issue type in workflow scheme
[**Get-AllWorkflowSchemes**](WorkflowSchemesApi.md#Get-AllWorkflowSchemes) | **GET** /rest/api/3/workflowscheme | Get all workflow schemes
[**Get-DefaultWorkflow**](WorkflowSchemesApi.md#Get-DefaultWorkflow) | **GET** /rest/api/3/workflowscheme/{id}/default | Get default workflow
[**Get-Workflow**](WorkflowSchemesApi.md#Get-Workflow) | **GET** /rest/api/3/workflowscheme/{id}/workflow | Get issue types for workflows in workflow scheme
[**Get-WorkflowScheme**](WorkflowSchemesApi.md#Get-WorkflowScheme) | **GET** /rest/api/3/workflowscheme/{id} | Get workflow scheme
[**Get-WorkflowSchemeIssueType**](WorkflowSchemesApi.md#Get-WorkflowSchemeIssueType) | **GET** /rest/api/3/workflowscheme/{id}/issuetype/{issueType} | Get workflow for issue type in workflow scheme
[**Read-WorkflowSchemes**](WorkflowSchemesApi.md#Read-WorkflowSchemes) | **POST** /rest/api/3/workflowscheme/read | Bulk get workflow schemes
[**Set-WorkflowSchemeIssueType**](WorkflowSchemesApi.md#Set-WorkflowSchemeIssueType) | **PUT** /rest/api/3/workflowscheme/{id}/issuetype/{issueType} | Set workflow for issue type in workflow scheme
[**Update-DefaultWorkflow**](WorkflowSchemesApi.md#Update-DefaultWorkflow) | **PUT** /rest/api/3/workflowscheme/{id}/default | Update default workflow
[**Update-Schemes**](WorkflowSchemesApi.md#Update-Schemes) | **POST** /rest/api/3/workflowscheme/update | Update workflow scheme
[**Update-WorkflowMapping**](WorkflowSchemesApi.md#Update-WorkflowMapping) | **PUT** /rest/api/3/workflowscheme/{id}/workflow | Set issue types for workflow in workflow scheme
[**Update-WorkflowScheme**](WorkflowSchemesApi.md#Update-WorkflowScheme) | **PUT** /rest/api/3/workflowscheme/{id} | Classic update workflow scheme
[**Update-WorkflowSchemeMappings**](WorkflowSchemesApi.md#Update-WorkflowSchemeMappings) | **POST** /rest/api/3/workflowscheme/update/mappings | Get required status mappings for workflow scheme update


<a id="New-WorkflowScheme"></a>
# **New-WorkflowScheme**
> WorkflowScheme New-WorkflowScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowScheme] <PSCustomObject><br>

Create workflow scheme

Creates a workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectAvatarUrls = Initialize-ProjectAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$ProjectDetailsProjectCategory = Initialize-ProjectDetailsProjectCategory -Description "MyDescription" -Id "MyId" -Name "MyName" -Self "MySelf"
$ScopeProject = Initialize-ScopeProject -AvatarUrls $ProjectAvatarUrls -Id "MyId" -Key "MyKey" -Name "MyName" -ProjectCategory $ProjectDetailsProjectCategory -ProjectTypeKey "software" -Self "MySelf" -Simplified $false

$IssueTypeDetailsScope = Initialize-IssueTypeDetailsScope -Project $ScopeProject -Type "PROJECT"

$IssueTypeDetails = Initialize-IssueTypeDetails -AvatarId 0 -Description "MyDescription" -EntityId "MyEntityId" -HierarchyLevel 0 -IconUrl "MyIconUrl" -Id "MyId" -Name "MyName" -Scope $IssueTypeDetailsScope -Self "MySelf" -Subtask $false

$GroupName = Initialize-GroupName -GroupId "MyGroupId" -Name "MyName" -Self "MySelf"
$ApplicationRole = Initialize-ApplicationRole -DefaultGroups "MyDefaultGroups" -DefaultGroupsDetails $GroupName -Defined $false -GroupDetails $GroupName -Groups "MyGroups" -HasUnlimitedSeats $false -Key "MyKey" -Name "MyName" -NumberOfSeats 0 -Platform $false -RemainingSeats 0 -SelectedByDefault $false -UserCount 0 -UserCountDescription "MyUserCountDescription"

$UserApplicationRoles = Initialize-UserApplicationRoles -Callback  -Items $ApplicationRole -MaxResults 0 -PagingCallback  -Size 0

$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"

$UserGroups = Initialize-UserGroups -Callback  -Items $GroupName -MaxResults 0 -PagingCallback  -Size 0

$WorkflowSchemeLastModifiedUser = Initialize-WorkflowSchemeLastModifiedUser -AccountId "MyAccountId" -AccountType "atlassian" -Active $false -ApplicationRoles $UserApplicationRoles -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Expand "MyExpand" -Groups $UserGroups -Key "MyKey" -Locale "MyLocale" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$WorkflowScheme = Initialize-WorkflowScheme -DefaultWorkflow "MyDefaultWorkflow" -Description "MyDescription" -Draft $false -Id 0 -IssueTypeMappings @{ key_example = "MyInner" } -IssueTypes @{ key_example = $IssueTypeDetails } -LastModified "MyLastModified" -LastModifiedUser $WorkflowSchemeLastModifiedUser -Name "MyName" -OriginalDefaultWorkflow "MyOriginalDefaultWorkflow" -OriginalIssueTypeMappings @{ key_example = "MyInner" } -Self "MySelf" -UpdateDraftIfNeeded $false # WorkflowScheme | 

# Create workflow scheme
try {
    $Result = New-WorkflowScheme -WorkflowScheme $WorkflowScheme
} catch {
    Write-Host ("Exception occurred when calling New-WorkflowScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowScheme** | [**WorkflowScheme**](WorkflowScheme.md)|  | 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteDefaultWorkflow"></a>
# **Invoke-DeleteDefaultWorkflow**
> WorkflowScheme Invoke-DeleteDefaultWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDraftIfNeeded] <System.Nullable[Boolean]><br>

Delete default workflow

Resets the default workflow for a workflow scheme. That is, the default workflow is set to Jira's system workflow (the *jira* workflow).  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set `updateDraftIfNeeded` to `true` and a draft workflow scheme is created or updated with the default workflow reset. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme.
$UpdateDraftIfNeeded = $true # Boolean | Set to true to create or update the draft of a workflow scheme and delete the mapping from the draft, when the workflow scheme cannot be edited. Defaults to `false`. (optional)

# Delete default workflow
try {
    $Result = Invoke-DeleteDefaultWorkflow -Id $Id -UpdateDraftIfNeeded $UpdateDraftIfNeeded
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDefaultWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. | 
 **UpdateDraftIfNeeded** | **Boolean**| Set to true to create or update the draft of a workflow scheme and delete the mapping from the draft, when the workflow scheme cannot be edited. Defaults to &#x60;false&#x60;. | [optional] 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteWorkflowMapping"></a>
# **Invoke-DeleteWorkflowMapping**
> void Invoke-DeleteWorkflowMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDraftIfNeeded] <System.Nullable[Boolean]><br>

Delete issue types for workflow in workflow scheme

Deletes the workflow-issue type mapping for a workflow in a workflow scheme.  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set `updateDraftIfNeeded` to `true` and a draft workflow scheme is created or updated with the workflow-issue type mapping deleted. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme.
$WorkflowName = "MyWorkflowName" # String | The name of the workflow.
$UpdateDraftIfNeeded = $true # Boolean | Set to true to create or update the draft of a workflow scheme and delete the mapping from the draft, when the workflow scheme cannot be edited. Defaults to `false`. (optional) (default to $false)

# Delete issue types for workflow in workflow scheme
try {
    $Result = Invoke-DeleteWorkflowMapping -Id $Id -WorkflowName $WorkflowName -UpdateDraftIfNeeded $UpdateDraftIfNeeded
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteWorkflowMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. | 
 **WorkflowName** | **String**| The name of the workflow. | 
 **UpdateDraftIfNeeded** | **Boolean**| Set to true to create or update the draft of a workflow scheme and delete the mapping from the draft, when the workflow scheme cannot be edited. Defaults to &#x60;false&#x60;. | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteWorkflowScheme"></a>
# **Invoke-DeleteWorkflowScheme**
> AnyType Invoke-DeleteWorkflowScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Delete workflow scheme

Deletes a workflow scheme. Note that a workflow scheme cannot be deleted if it is active (that is, being used by at least one project).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme. Find this ID by editing the desired workflow scheme in Jira. The ID is shown in the URL as `schemeId`. For example, *schemeId=10301*.

# Delete workflow scheme
try {
    $Result = Invoke-DeleteWorkflowScheme -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteWorkflowScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. Find this ID by editing the desired workflow scheme in Jira. The ID is shown in the URL as &#x60;schemeId&#x60;. For example, *schemeId&#x3D;10301*. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteWorkflowSchemeIssueType"></a>
# **Invoke-DeleteWorkflowSchemeIssueType**
> WorkflowScheme Invoke-DeleteWorkflowSchemeIssueType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDraftIfNeeded] <System.Nullable[Boolean]><br>

Delete workflow for issue type in workflow scheme

Deletes the issue type-workflow mapping for an issue type in a workflow scheme.  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set `updateDraftIfNeeded` to `true` and a draft workflow scheme is created or updated with the issue type-workflow mapping deleted. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme.
$IssueType = "MyIssueType" # String | The ID of the issue type.
$UpdateDraftIfNeeded = $true # Boolean | Set to true to create or update the draft of a workflow scheme and update the mapping in the draft, when the workflow scheme cannot be edited. Defaults to `false`. (optional) (default to $false)

# Delete workflow for issue type in workflow scheme
try {
    $Result = Invoke-DeleteWorkflowSchemeIssueType -Id $Id -IssueType $IssueType -UpdateDraftIfNeeded $UpdateDraftIfNeeded
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteWorkflowSchemeIssueType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. | 
 **IssueType** | **String**| The ID of the issue type. | 
 **UpdateDraftIfNeeded** | **Boolean**| Set to true to create or update the draft of a workflow scheme and update the mapping in the draft, when the workflow scheme cannot be edited. Defaults to &#x60;false&#x60;. | [optional] [default to $false]

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllWorkflowSchemes"></a>
# **Get-AllWorkflowSchemes**
> PageBeanWorkflowScheme Get-AllWorkflowSchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get all workflow schemes

Returns a [paginated](#pagination) list of all workflow schemes, not including draft workflow schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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

# Get all workflow schemes
try {
    $Result = Get-AllWorkflowSchemes -StartAt $StartAt -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-AllWorkflowSchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]

### Return type

[**PageBeanWorkflowScheme**](PageBeanWorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DefaultWorkflow"></a>
# **Get-DefaultWorkflow**
> DefaultWorkflow Get-DefaultWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReturnDraftIfExists] <System.Nullable[Boolean]><br>

Get default workflow

Returns the default workflow for a workflow scheme. The default workflow is the workflow that is assigned any issue types that have not been mapped to any other workflow. The default workflow has *All Unassigned Issue Types* listed in its issue types for the workflow scheme in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme.
$ReturnDraftIfExists = $true # Boolean | Set to `true` to return the default workflow for the workflow scheme's draft rather than scheme itself. If the workflow scheme does not have a draft, then the default workflow for the workflow scheme is returned. (optional) (default to $false)

# Get default workflow
try {
    $Result = Get-DefaultWorkflow -Id $Id -ReturnDraftIfExists $ReturnDraftIfExists
} catch {
    Write-Host ("Exception occurred when calling Get-DefaultWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. | 
 **ReturnDraftIfExists** | **Boolean**| Set to &#x60;true&#x60; to return the default workflow for the workflow scheme&#39;s draft rather than scheme itself. If the workflow scheme does not have a draft, then the default workflow for the workflow scheme is returned. | [optional] [default to $false]

### Return type

[**DefaultWorkflow**](DefaultWorkflow.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Workflow"></a>
# **Get-Workflow**
> IssueTypesWorkflowMapping Get-Workflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReturnDraftIfExists] <System.Nullable[Boolean]><br>

Get issue types for workflows in workflow scheme

Returns the workflow-issue type mappings for a workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme.
$WorkflowName = "MyWorkflowName" # String | The name of a workflow in the scheme. Limits the results to the workflow-issue type mapping for the specified workflow. (optional)
$ReturnDraftIfExists = $true # Boolean | Returns the mapping from the workflow scheme's draft rather than the workflow scheme, if set to true. If no draft exists, the mapping from the workflow scheme is returned. (optional) (default to $false)

# Get issue types for workflows in workflow scheme
try {
    $Result = Get-Workflow -Id $Id -WorkflowName $WorkflowName -ReturnDraftIfExists $ReturnDraftIfExists
} catch {
    Write-Host ("Exception occurred when calling Get-Workflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. | 
 **WorkflowName** | **String**| The name of a workflow in the scheme. Limits the results to the workflow-issue type mapping for the specified workflow. | [optional] 
 **ReturnDraftIfExists** | **Boolean**| Returns the mapping from the workflow scheme&#39;s draft rather than the workflow scheme, if set to true. If no draft exists, the mapping from the workflow scheme is returned. | [optional] [default to $false]

### Return type

[**IssueTypesWorkflowMapping**](IssueTypesWorkflowMapping.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowScheme"></a>
# **Get-WorkflowScheme**
> WorkflowScheme Get-WorkflowScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReturnDraftIfExists] <System.Nullable[Boolean]><br>

Get workflow scheme

Returns a workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme. Find this ID by editing the desired workflow scheme in Jira. The ID is shown in the URL as `schemeId`. For example, *schemeId=10301*.
$ReturnDraftIfExists = $true # Boolean | Returns the workflow scheme's draft rather than scheme itself, if set to true. If the workflow scheme does not have a draft, then the workflow scheme is returned. (optional) (default to $false)

# Get workflow scheme
try {
    $Result = Get-WorkflowScheme -Id $Id -ReturnDraftIfExists $ReturnDraftIfExists
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. Find this ID by editing the desired workflow scheme in Jira. The ID is shown in the URL as &#x60;schemeId&#x60;. For example, *schemeId&#x3D;10301*. | 
 **ReturnDraftIfExists** | **Boolean**| Returns the workflow scheme&#39;s draft rather than scheme itself, if set to true. If the workflow scheme does not have a draft, then the workflow scheme is returned. | [optional] [default to $false]

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowSchemeIssueType"></a>
# **Get-WorkflowSchemeIssueType**
> IssueTypeWorkflowMapping Get-WorkflowSchemeIssueType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReturnDraftIfExists] <System.Nullable[Boolean]><br>

Get workflow for issue type in workflow scheme

Returns the issue type-workflow mapping for an issue type in a workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme.
$IssueType = "MyIssueType" # String | The ID of the issue type.
$ReturnDraftIfExists = $true # Boolean | Returns the mapping from the workflow scheme's draft rather than the workflow scheme, if set to true. If no draft exists, the mapping from the workflow scheme is returned. (optional) (default to $false)

# Get workflow for issue type in workflow scheme
try {
    $Result = Get-WorkflowSchemeIssueType -Id $Id -IssueType $IssueType -ReturnDraftIfExists $ReturnDraftIfExists
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowSchemeIssueType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. | 
 **IssueType** | **String**| The ID of the issue type. | 
 **ReturnDraftIfExists** | **Boolean**| Returns the mapping from the workflow scheme&#39;s draft rather than the workflow scheme, if set to true. If no draft exists, the mapping from the workflow scheme is returned. | [optional] [default to $false]

### Return type

[**IssueTypeWorkflowMapping**](IssueTypeWorkflowMapping.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Read-WorkflowSchemes"></a>
# **Read-WorkflowSchemes**
> WorkflowSchemeReadResponse[] Read-WorkflowSchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowSchemeReadRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Bulk get workflow schemes

Returns a list of workflow schemes by providing workflow scheme IDs or project IDs.  **[Permissions](#permissions) required:**   *  *Administer Jira* global permission to access all, including project-scoped, workflow schemes  *  *Administer projects* project permissions to access project-scoped workflow schemes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowSchemeReadRequest = Initialize-WorkflowSchemeReadRequest -ProjectIds "MyProjectIds" -WorkflowSchemeIds "MyWorkflowSchemeIds" # WorkflowSchemeReadRequest | 
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  `workflows.usages` Returns the project and issue types that each workflow in the workflow scheme is associated with. (optional)

# Bulk get workflow schemes
try {
    $Result = Read-WorkflowSchemes -WorkflowSchemeReadRequest $WorkflowSchemeReadRequest -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Read-WorkflowSchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowSchemeReadRequest** | [**WorkflowSchemeReadRequest**](WorkflowSchemeReadRequest.md)|  | 
 **Expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;workflows.usages&#x60; Returns the project and issue types that each workflow in the workflow scheme is associated with. | [optional] 

### Return type

[**WorkflowSchemeReadResponse[]**](WorkflowSchemeReadResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-WorkflowSchemeIssueType"></a>
# **Set-WorkflowSchemeIssueType**
> WorkflowScheme Set-WorkflowSchemeIssueType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeWorkflowMapping] <PSCustomObject><br>

Set workflow for issue type in workflow scheme

Sets the workflow for an issue type in a workflow scheme.  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set `updateDraftIfNeeded` to `true` in the request body and a draft workflow scheme is created or updated with the new issue type-workflow mapping. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme.
$IssueType = "MyIssueType" # String | The ID of the issue type.
$IssueTypeWorkflowMapping = Initialize-IssueTypeWorkflowMapping -IssueType "MyIssueType" -UpdateDraftIfNeeded $false -Workflow "MyWorkflow" # IssueTypeWorkflowMapping | The issue type-project mapping.

# Set workflow for issue type in workflow scheme
try {
    $Result = Set-WorkflowSchemeIssueType -Id $Id -IssueType $IssueType -IssueTypeWorkflowMapping $IssueTypeWorkflowMapping
} catch {
    Write-Host ("Exception occurred when calling Set-WorkflowSchemeIssueType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. | 
 **IssueType** | **String**| The ID of the issue type. | 
 **IssueTypeWorkflowMapping** | [**IssueTypeWorkflowMapping**](IssueTypeWorkflowMapping.md)| The issue type-project mapping. | 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DefaultWorkflow"></a>
# **Update-DefaultWorkflow**
> WorkflowScheme Update-DefaultWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DefaultWorkflow] <PSCustomObject><br>

Update default workflow

Sets the default workflow for a workflow scheme.  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set `updateDraftIfNeeded` to `true` in the request object and a draft workflow scheme is created or updated with the new default workflow. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme.
$DefaultWorkflow = Initialize-DefaultWorkflow -UpdateDraftIfNeeded $false -Workflow "MyWorkflow" # DefaultWorkflow | The new default workflow.

# Update default workflow
try {
    $Result = Update-DefaultWorkflow -Id $Id -DefaultWorkflow $DefaultWorkflow
} catch {
    Write-Host ("Exception occurred when calling Update-DefaultWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. | 
 **DefaultWorkflow** | [**DefaultWorkflow**](DefaultWorkflow.md)| The new default workflow. | 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Schemes"></a>
# **Update-Schemes**
> AnyType Update-Schemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowSchemeUpdateRequest] <PSCustomObject><br>

Update workflow scheme

Updates company-managed and team-managed project workflow schemes. This API doesn't have a concept of draft, so any changes made to a workflow scheme are immediately available. When changing the available statuses for issue types, an [asynchronous task](#async) migrates the issues as defined in the provided mappings.  **[Permissions](#permissions) required:**   *  *Administer Jira* project permission to update all, including global-scoped, workflow schemes.  *  *Administer projects* project permission to update project-scoped workflow schemes.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowAssociationStatusMapping = Initialize-WorkflowAssociationStatusMapping -NewStatusId "MyNewStatusId" -OldStatusId "MyOldStatusId"
$MappingsByIssueTypeOverride = Initialize-MappingsByIssueTypeOverride -IssueTypeId "MyIssueTypeId" -StatusMappings $WorkflowAssociationStatusMapping

$MappingsByWorkflow = Initialize-MappingsByWorkflow -NewWorkflowId "MyNewWorkflowId" -OldWorkflowId "MyOldWorkflowId" -StatusMappings $WorkflowAssociationStatusMapping

$DocumentVersion = Initialize-DocumentVersion -Id "MyId" -VersionNumber 0
$WorkflowSchemeAssociation = Initialize-WorkflowSchemeAssociation -IssueTypeIds "MyIssueTypeIds" -WorkflowId "MyWorkflowId"
$WorkflowSchemeUpdateRequest = Initialize-WorkflowSchemeUpdateRequest -DefaultWorkflowId "MyDefaultWorkflowId" -Description "MyDescription" -Id "MyId" -Name "MyName" -StatusMappingsByIssueTypeOverride $MappingsByIssueTypeOverride -StatusMappingsByWorkflows $MappingsByWorkflow -Version $DocumentVersion -WorkflowsForIssueTypes $WorkflowSchemeAssociation # WorkflowSchemeUpdateRequest | 

# Update workflow scheme
try {
    $Result = Update-Schemes -WorkflowSchemeUpdateRequest $WorkflowSchemeUpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Update-Schemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowSchemeUpdateRequest** | [**WorkflowSchemeUpdateRequest**](WorkflowSchemeUpdateRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-WorkflowMapping"></a>
# **Update-WorkflowMapping**
> WorkflowScheme Update-WorkflowMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypesWorkflowMapping] <PSCustomObject><br>

Set issue types for workflow in workflow scheme

Sets the issue types for a workflow in a workflow scheme. The workflow can also be set as the default workflow for the workflow scheme. Unmapped issues types are mapped to the default workflow.  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set `updateDraftIfNeeded` to `true` in the request body and a draft workflow scheme is created or updated with the new workflow-issue types mappings. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme.
$WorkflowName = "MyWorkflowName" # String | The name of the workflow.
$IssueTypesWorkflowMapping = Initialize-IssueTypesWorkflowMapping -DefaultMapping $false -IssueTypes "MyIssueTypes" -UpdateDraftIfNeeded $false -Workflow "MyWorkflow" # IssueTypesWorkflowMapping | 

# Set issue types for workflow in workflow scheme
try {
    $Result = Update-WorkflowMapping -Id $Id -WorkflowName $WorkflowName -IssueTypesWorkflowMapping $IssueTypesWorkflowMapping
} catch {
    Write-Host ("Exception occurred when calling Update-WorkflowMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. | 
 **WorkflowName** | **String**| The name of the workflow. | 
 **IssueTypesWorkflowMapping** | [**IssueTypesWorkflowMapping**](IssueTypesWorkflowMapping.md)|  | 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-WorkflowScheme"></a>
# **Update-WorkflowScheme**
> WorkflowScheme Update-WorkflowScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowScheme] <PSCustomObject><br>

Classic update workflow scheme

Updates a company-manged project workflow scheme, including the name, default workflow, issue type to project mappings, and more. If the workflow scheme is active (that is, being used by at least one project), then a draft workflow scheme is created or updated instead, provided that `updateDraftIfNeeded` is set to `true`.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme. Find this ID by editing the desired workflow scheme in Jira. The ID is shown in the URL as `schemeId`. For example, *schemeId=10301*.
$ProjectAvatarUrls = Initialize-ProjectAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$ProjectDetailsProjectCategory = Initialize-ProjectDetailsProjectCategory -Description "MyDescription" -Id "MyId" -Name "MyName" -Self "MySelf"
$ScopeProject = Initialize-ScopeProject -AvatarUrls $ProjectAvatarUrls -Id "MyId" -Key "MyKey" -Name "MyName" -ProjectCategory $ProjectDetailsProjectCategory -ProjectTypeKey "software" -Self "MySelf" -Simplified $false

$IssueTypeDetailsScope = Initialize-IssueTypeDetailsScope -Project $ScopeProject -Type "PROJECT"

$IssueTypeDetails = Initialize-IssueTypeDetails -AvatarId 0 -Description "MyDescription" -EntityId "MyEntityId" -HierarchyLevel 0 -IconUrl "MyIconUrl" -Id "MyId" -Name "MyName" -Scope $IssueTypeDetailsScope -Self "MySelf" -Subtask $false

$GroupName = Initialize-GroupName -GroupId "MyGroupId" -Name "MyName" -Self "MySelf"
$ApplicationRole = Initialize-ApplicationRole -DefaultGroups "MyDefaultGroups" -DefaultGroupsDetails $GroupName -Defined $false -GroupDetails $GroupName -Groups "MyGroups" -HasUnlimitedSeats $false -Key "MyKey" -Name "MyName" -NumberOfSeats 0 -Platform $false -RemainingSeats 0 -SelectedByDefault $false -UserCount 0 -UserCountDescription "MyUserCountDescription"

$UserApplicationRoles = Initialize-UserApplicationRoles -Callback  -Items $ApplicationRole -MaxResults 0 -PagingCallback  -Size 0

$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"

$UserGroups = Initialize-UserGroups -Callback  -Items $GroupName -MaxResults 0 -PagingCallback  -Size 0

$WorkflowSchemeLastModifiedUser = Initialize-WorkflowSchemeLastModifiedUser -AccountId "MyAccountId" -AccountType "atlassian" -Active $false -ApplicationRoles $UserApplicationRoles -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Expand "MyExpand" -Groups $UserGroups -Key "MyKey" -Locale "MyLocale" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$WorkflowScheme = Initialize-WorkflowScheme -DefaultWorkflow "MyDefaultWorkflow" -Description "MyDescription" -Draft $false -Id 0 -IssueTypeMappings @{ key_example = "MyInner" } -IssueTypes @{ key_example = $IssueTypeDetails } -LastModified "MyLastModified" -LastModifiedUser $WorkflowSchemeLastModifiedUser -Name "MyName" -OriginalDefaultWorkflow "MyOriginalDefaultWorkflow" -OriginalIssueTypeMappings @{ key_example = "MyInner" } -Self "MySelf" -UpdateDraftIfNeeded $false # WorkflowScheme | 

# Classic update workflow scheme
try {
    $Result = Update-WorkflowScheme -Id $Id -WorkflowScheme $WorkflowScheme
} catch {
    Write-Host ("Exception occurred when calling Update-WorkflowScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme. Find this ID by editing the desired workflow scheme in Jira. The ID is shown in the URL as &#x60;schemeId&#x60;. For example, *schemeId&#x3D;10301*. | 
 **WorkflowScheme** | [**WorkflowScheme**](WorkflowScheme.md)|  | 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-WorkflowSchemeMappings"></a>
# **Update-WorkflowSchemeMappings**
> WorkflowSchemeUpdateRequiredMappingsResponse Update-WorkflowSchemeMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowSchemeUpdateRequiredMappingsRequest] <PSCustomObject><br>

Get required status mappings for workflow scheme update

Gets the required status mappings for the desired changes to a workflow scheme. The results are provided per issue type and workflow. When updating a workflow scheme, status mappings can be provided per issue type, per workflow, or both.  **[Permissions](#permissions) required:**   *  *Administer Jira* permission to update all, including global-scoped, workflow schemes.  *  *Administer projects* project permission to update project-scoped workflow schemes.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowSchemeAssociation = Initialize-WorkflowSchemeAssociation -IssueTypeIds "MyIssueTypeIds" -WorkflowId "MyWorkflowId"
$WorkflowSchemeUpdateRequiredMappingsRequest = Initialize-WorkflowSchemeUpdateRequiredMappingsRequest -DefaultWorkflowId "MyDefaultWorkflowId" -Id "MyId" -WorkflowsForIssueTypes $WorkflowSchemeAssociation # WorkflowSchemeUpdateRequiredMappingsRequest | 

# Get required status mappings for workflow scheme update
try {
    $Result = Update-WorkflowSchemeMappings -WorkflowSchemeUpdateRequiredMappingsRequest $WorkflowSchemeUpdateRequiredMappingsRequest
} catch {
    Write-Host ("Exception occurred when calling Update-WorkflowSchemeMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowSchemeUpdateRequiredMappingsRequest** | [**WorkflowSchemeUpdateRequiredMappingsRequest**](WorkflowSchemeUpdateRequiredMappingsRequest.md)|  | 

### Return type

[**WorkflowSchemeUpdateRequiredMappingsResponse**](WorkflowSchemeUpdateRequiredMappingsResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

