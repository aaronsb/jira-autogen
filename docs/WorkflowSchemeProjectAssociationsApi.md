# PSJira.PSJira\Api.WorkflowSchemeProjectAssociationsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Set-SchemeToProject**](WorkflowSchemeProjectAssociationsApi.md#Set-SchemeToProject) | **PUT** /rest/api/3/workflowscheme/project | Assign workflow scheme to project
[**Get-WorkflowSchemeProjectAssociations**](WorkflowSchemeProjectAssociationsApi.md#Get-WorkflowSchemeProjectAssociations) | **GET** /rest/api/3/workflowscheme/project | Get workflow scheme project associations


<a id="Set-SchemeToProject"></a>
# **Set-SchemeToProject**
> AnyType Set-SchemeToProject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowSchemeProjectAssociation] <PSCustomObject><br>

Assign workflow scheme to project

Assigns a workflow scheme to a project. This operation is performed only when there are no issues in the project.  Workflow schemes can only be assigned to classic projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowSchemeProjectAssociation = Initialize-WorkflowSchemeProjectAssociation -ProjectId "MyProjectId" -WorkflowSchemeId "MyWorkflowSchemeId" # WorkflowSchemeProjectAssociation | 

# Assign workflow scheme to project
try {
    $Result = Set-SchemeToProject -WorkflowSchemeProjectAssociation $WorkflowSchemeProjectAssociation
} catch {
    Write-Host ("Exception occurred when calling Set-SchemeToProject: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowSchemeProjectAssociation** | [**WorkflowSchemeProjectAssociation**](WorkflowSchemeProjectAssociation.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowSchemeProjectAssociations"></a>
# **Get-WorkflowSchemeProjectAssociations**
> ContainerOfWorkflowSchemeAssociations Get-WorkflowSchemeProjectAssociations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <System.Nullable[Int64][]><br>

Get workflow scheme project associations

Returns a list of the workflow schemes associated with a list of projects. Each returned workflow scheme includes a list of the requested projects associated with it. Any team-managed or non-existent projects in the request are ignored and no errors are returned.  If the project is associated with the `Default Workflow Scheme` no ID is returned. This is because the way the `Default Workflow Scheme` is stored means it has no ID.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectId = 10010 # Int64[] | The ID of a project to return the workflow schemes for. To include multiple projects, provide an ampersand-Jim: oneseparated list. For example, `projectId=10000&projectId=10001`.

# Get workflow scheme project associations
try {
    $Result = Get-WorkflowSchemeProjectAssociations -ProjectId $ProjectId
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowSchemeProjectAssociations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | [**Int64[]**](Int64.md)| The ID of a project to return the workflow schemes for. To include multiple projects, provide an ampersand-Jim: oneseparated list. For example, &#x60;projectId&#x3D;10000&amp;projectId&#x3D;10001&#x60;. | 

### Return type

[**ContainerOfWorkflowSchemeAssociations**](ContainerOfWorkflowSchemeAssociations.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

