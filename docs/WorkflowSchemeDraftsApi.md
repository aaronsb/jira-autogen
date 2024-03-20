# PSJira.PSJira\Api.WorkflowSchemeDraftsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-WorkflowSchemeDraftFromParent**](WorkflowSchemeDraftsApi.md#New-WorkflowSchemeDraftFromParent) | **POST** /rest/api/3/workflowscheme/{id}/createdraft | Create draft workflow scheme
[**Invoke-DeleteDraftDefaultWorkflow**](WorkflowSchemeDraftsApi.md#Invoke-DeleteDraftDefaultWorkflow) | **DELETE** /rest/api/3/workflowscheme/{id}/draft/default | Delete draft default workflow
[**Invoke-DeleteDraftWorkflowMapping**](WorkflowSchemeDraftsApi.md#Invoke-DeleteDraftWorkflowMapping) | **DELETE** /rest/api/3/workflowscheme/{id}/draft/workflow | Delete issue types for workflow in draft workflow scheme
[**Invoke-DeleteWorkflowSchemeDraft**](WorkflowSchemeDraftsApi.md#Invoke-DeleteWorkflowSchemeDraft) | **DELETE** /rest/api/3/workflowscheme/{id}/draft | Delete draft workflow scheme
[**Invoke-DeleteWorkflowSchemeDraftIssueType**](WorkflowSchemeDraftsApi.md#Invoke-DeleteWorkflowSchemeDraftIssueType) | **DELETE** /rest/api/3/workflowscheme/{id}/draft/issuetype/{issueType} | Delete workflow for issue type in draft workflow scheme
[**Get-DraftDefaultWorkflow**](WorkflowSchemeDraftsApi.md#Get-DraftDefaultWorkflow) | **GET** /rest/api/3/workflowscheme/{id}/draft/default | Get draft default workflow
[**Get-DraftWorkflow**](WorkflowSchemeDraftsApi.md#Get-DraftWorkflow) | **GET** /rest/api/3/workflowscheme/{id}/draft/workflow | Get issue types for workflows in draft workflow scheme
[**Get-WorkflowSchemeDraft**](WorkflowSchemeDraftsApi.md#Get-WorkflowSchemeDraft) | **GET** /rest/api/3/workflowscheme/{id}/draft | Get draft workflow scheme
[**Get-WorkflowSchemeDraftIssueType**](WorkflowSchemeDraftsApi.md#Get-WorkflowSchemeDraftIssueType) | **GET** /rest/api/3/workflowscheme/{id}/draft/issuetype/{issueType} | Get workflow for issue type in draft workflow scheme
[**Publish-DraftWorkflowScheme**](WorkflowSchemeDraftsApi.md#Publish-DraftWorkflowScheme) | **POST** /rest/api/3/workflowscheme/{id}/draft/publish | Publish draft workflow scheme
[**Set-WorkflowSchemeDraftIssueType**](WorkflowSchemeDraftsApi.md#Set-WorkflowSchemeDraftIssueType) | **PUT** /rest/api/3/workflowscheme/{id}/draft/issuetype/{issueType} | Set workflow for issue type in draft workflow scheme
[**Update-DraftDefaultWorkflow**](WorkflowSchemeDraftsApi.md#Update-DraftDefaultWorkflow) | **PUT** /rest/api/3/workflowscheme/{id}/draft/default | Update draft default workflow
[**Update-DraftWorkflowMapping**](WorkflowSchemeDraftsApi.md#Update-DraftWorkflowMapping) | **PUT** /rest/api/3/workflowscheme/{id}/draft/workflow | Set issue types for workflow in workflow scheme
[**Update-WorkflowSchemeDraft**](WorkflowSchemeDraftsApi.md#Update-WorkflowSchemeDraft) | **PUT** /rest/api/3/workflowscheme/{id}/draft | Update draft workflow scheme


<a id="New-WorkflowSchemeDraftFromParent"></a>
# **New-WorkflowSchemeDraftFromParent**
> WorkflowScheme New-WorkflowSchemeDraftFromParent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Create draft workflow scheme

Create a draft workflow scheme from an active workflow scheme, by copying the active workflow scheme. Note that an active workflow scheme can only have one draft workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the active workflow scheme that the draft is created from.

# Create draft workflow scheme
try {
    $Result = New-WorkflowSchemeDraftFromParent -Id $Id
} catch {
    Write-Host ("Exception occurred when calling New-WorkflowSchemeDraftFromParent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the active workflow scheme that the draft is created from. | 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteDraftDefaultWorkflow"></a>
# **Invoke-DeleteDraftDefaultWorkflow**
> WorkflowScheme Invoke-DeleteDraftDefaultWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Delete draft default workflow

Resets the default workflow for a workflow scheme's draft. That is, the default workflow is set to Jira's system workflow (the *jira* workflow).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme that the draft belongs to.

# Delete draft default workflow
try {
    $Result = Invoke-DeleteDraftDefaultWorkflow -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDraftDefaultWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme that the draft belongs to. | 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteDraftWorkflowMapping"></a>
# **Invoke-DeleteDraftWorkflowMapping**
> void Invoke-DeleteDraftWorkflowMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowName] <String><br>

Delete issue types for workflow in draft workflow scheme

Deletes the workflow-issue type mapping for a workflow in a workflow scheme's draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme that the draft belongs to.
$WorkflowName = "MyWorkflowName" # String | The name of the workflow.

# Delete issue types for workflow in draft workflow scheme
try {
    $Result = Invoke-DeleteDraftWorkflowMapping -Id $Id -WorkflowName $WorkflowName
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDraftWorkflowMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme that the draft belongs to. | 
 **WorkflowName** | **String**| The name of the workflow. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteWorkflowSchemeDraft"></a>
# **Invoke-DeleteWorkflowSchemeDraft**
> void Invoke-DeleteWorkflowSchemeDraft<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Delete draft workflow scheme

Deletes a draft workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the active workflow scheme that the draft was created from.

# Delete draft workflow scheme
try {
    $Result = Invoke-DeleteWorkflowSchemeDraft -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteWorkflowSchemeDraft: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the active workflow scheme that the draft was created from. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteWorkflowSchemeDraftIssueType"></a>
# **Invoke-DeleteWorkflowSchemeDraftIssueType**
> WorkflowScheme Invoke-DeleteWorkflowSchemeDraftIssueType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueType] <String><br>

Delete workflow for issue type in draft workflow scheme

Deletes the issue type-workflow mapping for an issue type in a workflow scheme's draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme that the draft belongs to.
$IssueType = "MyIssueType" # String | The ID of the issue type.

# Delete workflow for issue type in draft workflow scheme
try {
    $Result = Invoke-DeleteWorkflowSchemeDraftIssueType -Id $Id -IssueType $IssueType
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteWorkflowSchemeDraftIssueType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme that the draft belongs to. | 
 **IssueType** | **String**| The ID of the issue type. | 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DraftDefaultWorkflow"></a>
# **Get-DraftDefaultWorkflow**
> DefaultWorkflow Get-DraftDefaultWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Get draft default workflow

Returns the default workflow for a workflow scheme's draft. The default workflow is the workflow that is assigned any issue types that have not been mapped to any other workflow. The default workflow has *All Unassigned Issue Types* listed in its issue types for the workflow scheme in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme that the draft belongs to.

# Get draft default workflow
try {
    $Result = Get-DraftDefaultWorkflow -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-DraftDefaultWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme that the draft belongs to. | 

### Return type

[**DefaultWorkflow**](DefaultWorkflow.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DraftWorkflow"></a>
# **Get-DraftWorkflow**
> IssueTypesWorkflowMapping Get-DraftWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowName] <String><br>

Get issue types for workflows in draft workflow scheme

Returns the workflow-issue type mappings for a workflow scheme's draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme that the draft belongs to.
$WorkflowName = "MyWorkflowName" # String | The name of a workflow in the scheme. Limits the results to the workflow-issue type mapping for the specified workflow. (optional)

# Get issue types for workflows in draft workflow scheme
try {
    $Result = Get-DraftWorkflow -Id $Id -WorkflowName $WorkflowName
} catch {
    Write-Host ("Exception occurred when calling Get-DraftWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme that the draft belongs to. | 
 **WorkflowName** | **String**| The name of a workflow in the scheme. Limits the results to the workflow-issue type mapping for the specified workflow. | [optional] 

### Return type

[**IssueTypesWorkflowMapping**](IssueTypesWorkflowMapping.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowSchemeDraft"></a>
# **Get-WorkflowSchemeDraft**
> WorkflowScheme Get-WorkflowSchemeDraft<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Get draft workflow scheme

Returns the draft workflow scheme for an active workflow scheme. Draft workflow schemes allow changes to be made to the active workflow schemes: When an active workflow scheme is updated, a draft copy is created. The draft is modified, then the changes in the draft are copied back to the active workflow scheme. See [Configuring workflow schemes](https://confluence.atlassian.com/x/tohKLg) for more information.   Note that:   *  Only active workflow schemes can have draft workflow schemes.  *  An active workflow scheme can only have one draft workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the active workflow scheme that the draft was created from.

# Get draft workflow scheme
try {
    $Result = Get-WorkflowSchemeDraft -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowSchemeDraft: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the active workflow scheme that the draft was created from. | 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowSchemeDraftIssueType"></a>
# **Get-WorkflowSchemeDraftIssueType**
> IssueTypeWorkflowMapping Get-WorkflowSchemeDraftIssueType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueType] <String><br>

Get workflow for issue type in draft workflow scheme

Returns the issue type-workflow mapping for an issue type in a workflow scheme's draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme that the draft belongs to.
$IssueType = "MyIssueType" # String | The ID of the issue type.

# Get workflow for issue type in draft workflow scheme
try {
    $Result = Get-WorkflowSchemeDraftIssueType -Id $Id -IssueType $IssueType
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowSchemeDraftIssueType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme that the draft belongs to. | 
 **IssueType** | **String**| The ID of the issue type. | 

### Return type

[**IssueTypeWorkflowMapping**](IssueTypeWorkflowMapping.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Publish-DraftWorkflowScheme"></a>
# **Publish-DraftWorkflowScheme**
> void Publish-DraftWorkflowScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PublishDraftWorkflowScheme] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidateOnly] <System.Nullable[Boolean]><br>

Publish draft workflow scheme

Publishes a draft workflow scheme.  Where the draft workflow includes new workflow statuses for an issue type, mappings are provided to update issues with the original workflow status to the new workflow status.  This operation is [asynchronous](#async). Follow the `location` link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain updates.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme that the draft belongs to.
$StatusMapping = Initialize-StatusMapping -IssueTypeId "MyIssueTypeId" -NewStatusId "MyNewStatusId" -StatusId "MyStatusId"
$PublishDraftWorkflowScheme = Initialize-PublishDraftWorkflowScheme -StatusMappings $StatusMapping # PublishDraftWorkflowScheme | Details of the status mappings.
$ValidateOnly = $true # Boolean | Whether the request only performs a validation. (optional) (default to $false)

# Publish draft workflow scheme
try {
    $Result = Publish-DraftWorkflowScheme -Id $Id -PublishDraftWorkflowScheme $PublishDraftWorkflowScheme -ValidateOnly $ValidateOnly
} catch {
    Write-Host ("Exception occurred when calling Publish-DraftWorkflowScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme that the draft belongs to. | 
 **PublishDraftWorkflowScheme** | [**PublishDraftWorkflowScheme**](PublishDraftWorkflowScheme.md)| Details of the status mappings. | 
 **ValidateOnly** | **Boolean**| Whether the request only performs a validation. | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-WorkflowSchemeDraftIssueType"></a>
# **Set-WorkflowSchemeDraftIssueType**
> WorkflowScheme Set-WorkflowSchemeDraftIssueType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeWorkflowMapping] <PSCustomObject><br>

Set workflow for issue type in draft workflow scheme

Sets the workflow for an issue type in a workflow scheme's draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme that the draft belongs to.
$IssueType = "MyIssueType" # String | The ID of the issue type.
$IssueTypeWorkflowMapping = Initialize-IssueTypeWorkflowMapping -IssueType "MyIssueType" -UpdateDraftIfNeeded $false -Workflow "MyWorkflow" # IssueTypeWorkflowMapping | The issue type-project mapping.

# Set workflow for issue type in draft workflow scheme
try {
    $Result = Set-WorkflowSchemeDraftIssueType -Id $Id -IssueType $IssueType -IssueTypeWorkflowMapping $IssueTypeWorkflowMapping
} catch {
    Write-Host ("Exception occurred when calling Set-WorkflowSchemeDraftIssueType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme that the draft belongs to. | 
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

<a id="Update-DraftDefaultWorkflow"></a>
# **Update-DraftDefaultWorkflow**
> WorkflowScheme Update-DraftDefaultWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DefaultWorkflow] <PSCustomObject><br>

Update draft default workflow

Sets the default workflow for a workflow scheme's draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme that the draft belongs to.
$DefaultWorkflow = Initialize-DefaultWorkflow -UpdateDraftIfNeeded $false -Workflow "MyWorkflow" # DefaultWorkflow | The object for the new default workflow.

# Update draft default workflow
try {
    $Result = Update-DraftDefaultWorkflow -Id $Id -DefaultWorkflow $DefaultWorkflow
} catch {
    Write-Host ("Exception occurred when calling Update-DraftDefaultWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme that the draft belongs to. | 
 **DefaultWorkflow** | [**DefaultWorkflow**](DefaultWorkflow.md)| The object for the new default workflow. | 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DraftWorkflowMapping"></a>
# **Update-DraftWorkflowMapping**
> WorkflowScheme Update-DraftWorkflowMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypesWorkflowMapping] <PSCustomObject><br>

Set issue types for workflow in workflow scheme

Sets the issue types for a workflow in a workflow scheme's draft. The workflow can also be set as the default workflow for the draft workflow scheme. Unmapped issues types are mapped to the default workflow.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the workflow scheme that the draft belongs to.
$WorkflowName = "MyWorkflowName" # String | The name of the workflow.
$IssueTypesWorkflowMapping = Initialize-IssueTypesWorkflowMapping -DefaultMapping $false -IssueTypes "MyIssueTypes" -UpdateDraftIfNeeded $false -Workflow "MyWorkflow" # IssueTypesWorkflowMapping | 

# Set issue types for workflow in workflow scheme
try {
    $Result = Update-DraftWorkflowMapping -Id $Id -WorkflowName $WorkflowName -IssueTypesWorkflowMapping $IssueTypesWorkflowMapping
} catch {
    Write-Host ("Exception occurred when calling Update-DraftWorkflowMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the workflow scheme that the draft belongs to. | 
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

<a id="Update-WorkflowSchemeDraft"></a>
# **Update-WorkflowSchemeDraft**
> WorkflowScheme Update-WorkflowSchemeDraft<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowScheme] <PSCustomObject><br>

Update draft workflow scheme

Updates a draft workflow scheme. If a draft workflow scheme does not exist for the active workflow scheme, then a draft is created. Note that an active workflow scheme can only have one draft workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the active workflow scheme that the draft was created from.
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

# Update draft workflow scheme
try {
    $Result = Update-WorkflowSchemeDraft -Id $Id -WorkflowScheme $WorkflowScheme
} catch {
    Write-Host ("Exception occurred when calling Update-WorkflowSchemeDraft: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the active workflow scheme that the draft was created from. | 
 **WorkflowScheme** | [**WorkflowScheme**](WorkflowScheme.md)|  | 

### Return type

[**WorkflowScheme**](WorkflowScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

