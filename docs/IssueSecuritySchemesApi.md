# PSJira.PSJira\Api.IssueSecuritySchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-SecurityLevel**](IssueSecuritySchemesApi.md#Add-SecurityLevel) | **PUT** /rest/api/3/issuesecurityschemes/{schemeId}/level | Add issue security levels
[**Add-SecurityLevelMembers**](IssueSecuritySchemesApi.md#Add-SecurityLevelMembers) | **PUT** /rest/api/3/issuesecurityschemes/{schemeId}/level/{levelId}/member | Add issue security level members
[**Join-SchemesToProjects**](IssueSecuritySchemesApi.md#Join-SchemesToProjects) | **PUT** /rest/api/3/issuesecurityschemes/project | Associate security scheme to project
[**New-IssueSecurityScheme**](IssueSecuritySchemesApi.md#New-IssueSecurityScheme) | **POST** /rest/api/3/issuesecurityschemes | Create issue security scheme
[**Invoke-DeleteSecurityScheme**](IssueSecuritySchemesApi.md#Invoke-DeleteSecurityScheme) | **DELETE** /rest/api/3/issuesecurityschemes/{schemeId} | Delete issue security scheme
[**Get-IssueSecurityScheme**](IssueSecuritySchemesApi.md#Get-IssueSecurityScheme) | **GET** /rest/api/3/issuesecurityschemes/{id} | Get issue security scheme
[**Get-IssueSecuritySchemes**](IssueSecuritySchemesApi.md#Get-IssueSecuritySchemes) | **GET** /rest/api/3/issuesecurityschemes | Get issue security schemes
[**Get-SecurityLevelMembers**](IssueSecuritySchemesApi.md#Get-SecurityLevelMembers) | **GET** /rest/api/3/issuesecurityschemes/level/member | Get issue security level members
[**Get-SecurityLevels**](IssueSecuritySchemesApi.md#Get-SecurityLevels) | **GET** /rest/api/3/issuesecurityschemes/level | Get issue security levels
[**Remove-Level**](IssueSecuritySchemesApi.md#Remove-Level) | **DELETE** /rest/api/3/issuesecurityschemes/{schemeId}/level/{levelId} | Remove issue security level
[**Remove-MemberFromSecurityLevel**](IssueSecuritySchemesApi.md#Remove-MemberFromSecurityLevel) | **DELETE** /rest/api/3/issuesecurityschemes/{schemeId}/level/{levelId}/member/{memberId} | Remove member from issue security level
[**Search-ProjectsUsingSecuritySchemes**](IssueSecuritySchemesApi.md#Search-ProjectsUsingSecuritySchemes) | **GET** /rest/api/3/issuesecurityschemes/project | Get projects using issue security schemes
[**Search-SecuritySchemes**](IssueSecuritySchemesApi.md#Search-SecuritySchemes) | **GET** /rest/api/3/issuesecurityschemes/search | Search issue security schemes
[**Set-DefaultLevels**](IssueSecuritySchemesApi.md#Set-DefaultLevels) | **PUT** /rest/api/3/issuesecurityschemes/level/default | Set default issue security levels
[**Update-IssueSecurityScheme**](IssueSecuritySchemesApi.md#Update-IssueSecurityScheme) | **PUT** /rest/api/3/issuesecurityschemes/{id} | Update issue security scheme
[**Update-SecurityLevel**](IssueSecuritySchemesApi.md#Update-SecurityLevel) | **PUT** /rest/api/3/issuesecurityschemes/{schemeId}/level/{levelId} | Update issue security level


<a id="Add-SecurityLevel"></a>
# **Add-SecurityLevel**
> AnyType Add-SecurityLevel<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddSecuritySchemeLevelsRequestBean] <PSCustomObject><br>

Add issue security levels

Adds levels and levels' members to the issue security scheme. You can add up to 100 levels per request.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SchemeId = "MySchemeId" # String | The ID of the issue security scheme.
$SecuritySchemeLevelMemberBean = Initialize-SecuritySchemeLevelMemberBean -Parameter "MyParameter" -Type "MyType"
$SecuritySchemeLevelBean = Initialize-SecuritySchemeLevelBean -Description "MyDescription" -IsDefault $false -Members $SecuritySchemeLevelMemberBean -Name "MyName"

$AddSecuritySchemeLevelsRequestBean = Initialize-AddSecuritySchemeLevelsRequestBean -Levels $SecuritySchemeLevelBean # AddSecuritySchemeLevelsRequestBean | 

# Add issue security levels
try {
    $Result = Add-SecurityLevel -SchemeId $SchemeId -AddSecuritySchemeLevelsRequestBean $AddSecuritySchemeLevelsRequestBean
} catch {
    Write-Host ("Exception occurred when calling Add-SecurityLevel: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemeId** | **String**| The ID of the issue security scheme. | 
 **AddSecuritySchemeLevelsRequestBean** | [**AddSecuritySchemeLevelsRequestBean**](AddSecuritySchemeLevelsRequestBean.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Add-SecurityLevelMembers"></a>
# **Add-SecurityLevelMembers**
> AnyType Add-SecurityLevelMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LevelId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SecuritySchemeMembersRequest] <PSCustomObject><br>

Add issue security level members

Adds members to the issue security level. You can add up to 100 members per request.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SchemeId = "MySchemeId" # String | The ID of the issue security scheme.
$LevelId = "MyLevelId" # String | The ID of the issue security level.
$SecuritySchemeLevelMemberBean = Initialize-SecuritySchemeLevelMemberBean -Parameter "MyParameter" -Type "MyType"
$SecuritySchemeMembersRequest = Initialize-SecuritySchemeMembersRequest -Members $SecuritySchemeLevelMemberBean # SecuritySchemeMembersRequest | 

# Add issue security level members
try {
    $Result = Add-SecurityLevelMembers -SchemeId $SchemeId -LevelId $LevelId -SecuritySchemeMembersRequest $SecuritySchemeMembersRequest
} catch {
    Write-Host ("Exception occurred when calling Add-SecurityLevelMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemeId** | **String**| The ID of the issue security scheme. | 
 **LevelId** | **String**| The ID of the issue security level. | 
 **SecuritySchemeMembersRequest** | [**SecuritySchemeMembersRequest**](SecuritySchemeMembersRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Join-SchemesToProjects"></a>
# **Join-SchemesToProjects**
> void Join-SchemesToProjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssociateSecuritySchemeWithProjectDetails] <PSCustomObject><br>

Associate security scheme to project

Associates an issue security scheme with a project and remaps security levels of issues to the new levels, if provided.  This operation is [asynchronous](#async). Follow the `location` link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$OldToNewSecurityLevelMappingsBean = Initialize-OldToNewSecurityLevelMappingsBean -NewLevelId "MyNewLevelId" -OldLevelId "MyOldLevelId"
$AssociateSecuritySchemeWithProjectDetails = Initialize-AssociateSecuritySchemeWithProjectDetails -OldToNewSecurityLevelMappings $OldToNewSecurityLevelMappingsBean -ProjectId "MyProjectId" -SchemeId "MySchemeId" # AssociateSecuritySchemeWithProjectDetails | 

# Associate security scheme to project
try {
    $Result = Join-SchemesToProjects -AssociateSecuritySchemeWithProjectDetails $AssociateSecuritySchemeWithProjectDetails
} catch {
    Write-Host ("Exception occurred when calling Join-SchemesToProjects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssociateSecuritySchemeWithProjectDetails** | [**AssociateSecuritySchemeWithProjectDetails**](AssociateSecuritySchemeWithProjectDetails.md)|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-IssueSecurityScheme"></a>
# **New-IssueSecurityScheme**
> SecuritySchemeId New-IssueSecurityScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateIssueSecuritySchemeDetails] <PSCustomObject><br>

Create issue security scheme

Creates a security scheme with security scheme levels and levels' members. You can create up to 100 security scheme levels and security scheme levels' members per request.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SecuritySchemeLevelMemberBean = Initialize-SecuritySchemeLevelMemberBean -Parameter "MyParameter" -Type "MyType"
$SecuritySchemeLevelBean = Initialize-SecuritySchemeLevelBean -Description "MyDescription" -IsDefault $false -Members $SecuritySchemeLevelMemberBean -Name "MyName"

$CreateIssueSecuritySchemeDetails = Initialize-CreateIssueSecuritySchemeDetails -Description "MyDescription" -Levels $SecuritySchemeLevelBean -Name "MyName" # CreateIssueSecuritySchemeDetails | 

# Create issue security scheme
try {
    $Result = New-IssueSecurityScheme -CreateIssueSecuritySchemeDetails $CreateIssueSecuritySchemeDetails
} catch {
    Write-Host ("Exception occurred when calling New-IssueSecurityScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateIssueSecuritySchemeDetails** | [**CreateIssueSecuritySchemeDetails**](CreateIssueSecuritySchemeDetails.md)|  | 

### Return type

[**SecuritySchemeId**](SecuritySchemeId.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteSecurityScheme"></a>
# **Invoke-DeleteSecurityScheme**
> AnyType Invoke-DeleteSecurityScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <String><br>

Delete issue security scheme

Deletes an issue security scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SchemeId = "MySchemeId" # String | The ID of the issue security scheme.

# Delete issue security scheme
try {
    $Result = Invoke-DeleteSecurityScheme -SchemeId $SchemeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteSecurityScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemeId** | **String**| The ID of the issue security scheme. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IssueSecurityScheme"></a>
# **Get-IssueSecurityScheme**
> SecurityScheme Get-IssueSecurityScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Get issue security scheme

Returns an issue security scheme along with its security levels.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *  *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for a project that uses the requested issue security scheme.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the issue security scheme. Use the [Get issue security schemes](#api-rest-api-3-issuesecurityschemes-get) operation to get a list of issue security scheme IDs.

# Get issue security scheme
try {
    $Result = Get-IssueSecurityScheme -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-IssueSecurityScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the issue security scheme. Use the [Get issue security schemes](#api-rest-api-3-issuesecurityschemes-get) operation to get a list of issue security scheme IDs. | 

### Return type

[**SecurityScheme**](SecurityScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IssueSecuritySchemes"></a>
# **Get-IssueSecuritySchemes**
> SecuritySchemes Get-IssueSecuritySchemes<br>

Get issue security schemes

Returns all [issue security schemes](https://confluence.atlassian.com/x/J4lKLg).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get issue security schemes
try {
    $Result = Get-IssueSecuritySchemes
} catch {
    Write-Host ("Exception occurred when calling Get-IssueSecuritySchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SecuritySchemes**](SecuritySchemes.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SecurityLevelMembers"></a>
# **Get-SecurityLevelMembers**
> PageBeanSecurityLevelMember Get-SecurityLevelMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LevelId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get issue security level members

Returns a [paginated](#pagination) list of issue security level members.  Only issue security level members in the context of classic projects are returned.  Filtering using parameters is inclusive: if you specify both security scheme IDs and level IDs, the result will include all issue security level members from the specified schemes and levels.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = "MyStartAt" # String | The index of the first item to return in a page of results (page offset). (optional) (default to "0")
$MaxResults = "MyMaxResults" # String | The maximum number of items to return per page. (optional) (default to "50")
$Id = "MyId" # String[] | The list of issue security level member IDs. To include multiple issue security level members separate IDs with an ampersand: `id=10000&id=10001`. (optional)
$SchemeId = "MySchemeId" # String[] | The list of issue security scheme IDs. To include multiple issue security schemes separate IDs with an ampersand: `schemeId=10000&schemeId=10001`. (optional)
$LevelId = "MyLevelId" # String[] | The list of issue security level IDs. To include multiple issue security levels separate IDs with an ampersand: `levelId=10000&levelId=10001`. (optional)
$Expand = "MyExpand" # String | Use expand to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  `all` Returns all expandable information  *  `field` Returns information about the custom field granted the permission  *  `group` Returns information about the group that is granted the permission  *  `projectRole` Returns information about the project role granted the permission  *  `user` Returns information about the user who is granted the permission (optional)

# Get issue security level members
try {
    $Result = Get-SecurityLevelMembers -StartAt $StartAt -MaxResults $MaxResults -Id $Id -SchemeId $SchemeId -LevelId $LevelId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-SecurityLevelMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]
 **Id** | [**String[]**](String.md)| The list of issue security level member IDs. To include multiple issue security level members separate IDs with an ampersand: &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] 
 **SchemeId** | [**String[]**](String.md)| The list of issue security scheme IDs. To include multiple issue security schemes separate IDs with an ampersand: &#x60;schemeId&#x3D;10000&amp;schemeId&#x3D;10001&#x60;. | [optional] 
 **LevelId** | [**String[]**](String.md)| The list of issue security level IDs. To include multiple issue security levels separate IDs with an ampersand: &#x60;levelId&#x3D;10000&amp;levelId&#x3D;10001&#x60;. | [optional] 
 **Expand** | **String**| Use expand to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;all&#x60; Returns all expandable information  *  &#x60;field&#x60; Returns information about the custom field granted the permission  *  &#x60;group&#x60; Returns information about the group that is granted the permission  *  &#x60;projectRole&#x60; Returns information about the project role granted the permission  *  &#x60;user&#x60; Returns information about the user who is granted the permission | [optional] 

### Return type

[**PageBeanSecurityLevelMember**](PageBeanSecurityLevelMember.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SecurityLevels"></a>
# **Get-SecurityLevels**
> PageBeanSecurityLevel Get-SecurityLevels<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OnlyDefault] <System.Nullable[Boolean]><br>

Get issue security levels

Returns a [paginated](#pagination) list of issue security levels.  Only issue security levels in the context of classic projects are returned.  Filtering using IDs is inclusive: if you specify both security scheme IDs and level IDs, the result will include both specified issue security levels and all issue security levels from the specified schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = "MyStartAt" # String | The index of the first item to return in a page of results (page offset). (optional) (default to "0")
$MaxResults = "MyMaxResults" # String | The maximum number of items to return per page. (optional) (default to "50")
$Id = "MyId" # String[] | The list of issue security scheme level IDs. To include multiple issue security levels, separate IDs with an ampersand: `id=10000&id=10001`. (optional)
$SchemeId = "MySchemeId" # String[] | The list of issue security scheme IDs. To include multiple issue security schemes, separate IDs with an ampersand: `schemeId=10000&schemeId=10001`. (optional)
$OnlyDefault = $true # Boolean | When set to true, returns multiple default levels for each security scheme containing a default. If you provide scheme and level IDs not associated with the default, returns an empty page. The default value is false. (optional) (default to $false)

# Get issue security levels
try {
    $Result = Get-SecurityLevels -StartAt $StartAt -MaxResults $MaxResults -Id $Id -SchemeId $SchemeId -OnlyDefault $OnlyDefault
} catch {
    Write-Host ("Exception occurred when calling Get-SecurityLevels: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]
 **Id** | [**String[]**](String.md)| The list of issue security scheme level IDs. To include multiple issue security levels, separate IDs with an ampersand: &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] 
 **SchemeId** | [**String[]**](String.md)| The list of issue security scheme IDs. To include multiple issue security schemes, separate IDs with an ampersand: &#x60;schemeId&#x3D;10000&amp;schemeId&#x3D;10001&#x60;. | [optional] 
 **OnlyDefault** | **Boolean**| When set to true, returns multiple default levels for each security scheme containing a default. If you provide scheme and level IDs not associated with the default, returns an empty page. The default value is false. | [optional] [default to $false]

### Return type

[**PageBeanSecurityLevel**](PageBeanSecurityLevel.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-Level"></a>
# **Remove-Level**
> void Remove-Level<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LevelId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReplaceWith] <String><br>

Remove issue security level

Deletes an issue security level.  This operation is [asynchronous](#async). Follow the `location` link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SchemeId = "MySchemeId" # String | The ID of the issue security scheme.
$LevelId = "MyLevelId" # String | The ID of the issue security level to remove.
$ReplaceWith = "MyReplaceWith" # String | The ID of the issue security level that will replace the currently selected level. (optional)

# Remove issue security level
try {
    $Result = Remove-Level -SchemeId $SchemeId -LevelId $LevelId -ReplaceWith $ReplaceWith
} catch {
    Write-Host ("Exception occurred when calling Remove-Level: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemeId** | **String**| The ID of the issue security scheme. | 
 **LevelId** | **String**| The ID of the issue security level to remove. | 
 **ReplaceWith** | **String**| The ID of the issue security level that will replace the currently selected level. | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-MemberFromSecurityLevel"></a>
# **Remove-MemberFromSecurityLevel**
> AnyType Remove-MemberFromSecurityLevel<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LevelId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MemberId] <String><br>

Remove member from issue security level

Removes an issue security level member from an issue security scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SchemeId = "MySchemeId" # String | The ID of the issue security scheme.
$LevelId = "MyLevelId" # String | The ID of the issue security level.
$MemberId = "MyMemberId" # String | The ID of the issue security level member to be removed.

# Remove member from issue security level
try {
    $Result = Remove-MemberFromSecurityLevel -SchemeId $SchemeId -LevelId $LevelId -MemberId $MemberId
} catch {
    Write-Host ("Exception occurred when calling Remove-MemberFromSecurityLevel: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemeId** | **String**| The ID of the issue security scheme. | 
 **LevelId** | **String**| The ID of the issue security level. | 
 **MemberId** | **String**| The ID of the issue security level member to be removed. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-ProjectsUsingSecuritySchemes"></a>
# **Search-ProjectsUsingSecuritySchemes**
> PageBeanIssueSecuritySchemeToProjectMapping Search-ProjectsUsingSecuritySchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueSecuritySchemeId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String[]><br>

Get projects using issue security schemes

Returns a [paginated](#pagination) mapping of projects that are using security schemes. You can provide either one or multiple security scheme IDs or project IDs to filter by. If you don't provide any, this will return a list of all mappings. Only issue security schemes in the context of classic projects are supported. **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = "MyStartAt" # String | The index of the first item to return in a page of results (page offset). (optional) (default to "0")
$MaxResults = "MyMaxResults" # String | The maximum number of items to return per page. (optional) (default to "50")
$IssueSecuritySchemeId = "MyIssueSecuritySchemeId" # String[] | The list of security scheme IDs to be filtered out. (optional)
$ProjectId = "MyProjectId" # String[] | The list of project IDs to be filtered out. (optional)

# Get projects using issue security schemes
try {
    $Result = Search-ProjectsUsingSecuritySchemes -StartAt $StartAt -MaxResults $MaxResults -IssueSecuritySchemeId $IssueSecuritySchemeId -ProjectId $ProjectId
} catch {
    Write-Host ("Exception occurred when calling Search-ProjectsUsingSecuritySchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]
 **IssueSecuritySchemeId** | [**String[]**](String.md)| The list of security scheme IDs to be filtered out. | [optional] 
 **ProjectId** | [**String[]**](String.md)| The list of project IDs to be filtered out. | [optional] 

### Return type

[**PageBeanIssueSecuritySchemeToProjectMapping**](PageBeanIssueSecuritySchemeToProjectMapping.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-SecuritySchemes"></a>
# **Search-SecuritySchemes**
> PageBeanSecuritySchemeWithProjects Search-SecuritySchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String[]><br>

Search issue security schemes

Returns a [paginated](#pagination) list of issue security schemes.   If you specify the project ID parameter, the result will contain issue security schemes and related project IDs you filter by. Use \{@link IssueSecuritySchemeResource\#searchProjectsUsingSecuritySchemes(String, String, Set, Set)\} to obtain all projects related to scheme.  Only issue security schemes in the context of classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = "MyStartAt" # String | The index of the first item to return in a page of results (page offset). (optional) (default to "0")
$MaxResults = "MyMaxResults" # String | The maximum number of items to return per page. (optional) (default to "50")
$Id = "MyId" # String[] | The list of issue security scheme IDs. To include multiple issue security scheme IDs, separate IDs with an ampersand: `id=10000&id=10001`. (optional)
$ProjectId = "MyProjectId" # String[] | The list of project IDs. To include multiple project IDs, separate IDs with an ampersand: `projectId=10000&projectId=10001`. (optional)

# Search issue security schemes
try {
    $Result = Search-SecuritySchemes -StartAt $StartAt -MaxResults $MaxResults -Id $Id -ProjectId $ProjectId
} catch {
    Write-Host ("Exception occurred when calling Search-SecuritySchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]
 **Id** | [**String[]**](String.md)| The list of issue security scheme IDs. To include multiple issue security scheme IDs, separate IDs with an ampersand: &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] 
 **ProjectId** | [**String[]**](String.md)| The list of project IDs. To include multiple project IDs, separate IDs with an ampersand: &#x60;projectId&#x3D;10000&amp;projectId&#x3D;10001&#x60;. | [optional] 

### Return type

[**PageBeanSecuritySchemeWithProjects**](PageBeanSecuritySchemeWithProjects.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-DefaultLevels"></a>
# **Set-DefaultLevels**
> AnyType Set-DefaultLevels<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetDefaultLevelsRequest] <PSCustomObject><br>

Set default issue security levels

Sets default issue security levels for schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$DefaultLevelValue = Initialize-DefaultLevelValue -DefaultLevelId "MyDefaultLevelId" -IssueSecuritySchemeId "MyIssueSecuritySchemeId"
$SetDefaultLevelsRequest = Initialize-SetDefaultLevelsRequest -DefaultValues $DefaultLevelValue # SetDefaultLevelsRequest | 

# Set default issue security levels
try {
    $Result = Set-DefaultLevels -SetDefaultLevelsRequest $SetDefaultLevelsRequest
} catch {
    Write-Host ("Exception occurred when calling Set-DefaultLevels: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SetDefaultLevelsRequest** | [**SetDefaultLevelsRequest**](SetDefaultLevelsRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-IssueSecurityScheme"></a>
# **Update-IssueSecurityScheme**
> AnyType Update-IssueSecurityScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateIssueSecuritySchemeRequestBean] <PSCustomObject><br>

Update issue security scheme

Updates the issue security scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the issue security scheme.
$UpdateIssueSecuritySchemeRequestBean = Initialize-UpdateIssueSecuritySchemeRequestBean -Description "MyDescription" -Name "MyName" # UpdateIssueSecuritySchemeRequestBean | 

# Update issue security scheme
try {
    $Result = Update-IssueSecurityScheme -Id $Id -UpdateIssueSecuritySchemeRequestBean $UpdateIssueSecuritySchemeRequestBean
} catch {
    Write-Host ("Exception occurred when calling Update-IssueSecurityScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the issue security scheme. | 
 **UpdateIssueSecuritySchemeRequestBean** | [**UpdateIssueSecuritySchemeRequestBean**](UpdateIssueSecuritySchemeRequestBean.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-SecurityLevel"></a>
# **Update-SecurityLevel**
> AnyType Update-SecurityLevel<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LevelId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateIssueSecurityLevelDetails] <PSCustomObject><br>

Update issue security level

Updates the issue security level.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SchemeId = "MySchemeId" # String | The ID of the issue security scheme level belongs to.
$LevelId = "MyLevelId" # String | The ID of the issue security level to update.
$UpdateIssueSecurityLevelDetails = Initialize-UpdateIssueSecurityLevelDetails -Description "MyDescription" -Name "MyName" # UpdateIssueSecurityLevelDetails | 

# Update issue security level
try {
    $Result = Update-SecurityLevel -SchemeId $SchemeId -LevelId $LevelId -UpdateIssueSecurityLevelDetails $UpdateIssueSecurityLevelDetails
} catch {
    Write-Host ("Exception occurred when calling Update-SecurityLevel: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemeId** | **String**| The ID of the issue security scheme level belongs to. | 
 **LevelId** | **String**| The ID of the issue security level to update. | 
 **UpdateIssueSecurityLevelDetails** | [**UpdateIssueSecurityLevelDetails**](UpdateIssueSecurityLevelDetails.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

