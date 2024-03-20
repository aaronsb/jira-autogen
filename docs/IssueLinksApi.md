# PSJira.PSJira\Api.IssueLinksApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeleteIssueLink**](IssueLinksApi.md#Invoke-DeleteIssueLink) | **DELETE** /rest/api/3/issueLink/{linkId} | Delete issue link
[**Get-IssueLink**](IssueLinksApi.md#Get-IssueLink) | **GET** /rest/api/3/issueLink/{linkId} | Get issue link
[**Invoke-LinkIssues**](IssueLinksApi.md#Invoke-LinkIssues) | **POST** /rest/api/3/issueLink | Create issue link


<a id="Invoke-DeleteIssueLink"></a>
# **Invoke-DeleteIssueLink**
> void Invoke-DeleteIssueLink<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkId] <String><br>

Delete issue link

Deletes an issue link.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  Browse project [project permission](https://confluence.atlassian.com/x/yodKLg) for all the projects containing the issues in the link.  *  *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for at least one of the projects containing issues in the link.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, permission to view both of the issues.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$LinkId = "MyLinkId" # String | The ID of the issue link.

# Delete issue link
try {
    $Result = Invoke-DeleteIssueLink -LinkId $LinkId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteIssueLink: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LinkId** | **String**| The ID of the issue link. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IssueLink"></a>
# **Get-IssueLink**
> IssueLink Get-IssueLink<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkId] <String><br>

Get issue link

Returns an issue link.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse project* [project permission](https://confluence.atlassian.com/x/yodKLg) for all the projects containing the linked issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, permission to view both of the issues.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$LinkId = "MyLinkId" # String | The ID of the issue link.

# Get issue link
try {
    $Result = Get-IssueLink -LinkId $LinkId
} catch {
    Write-Host ("Exception occurred when calling Get-IssueLink: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LinkId** | **String**| The ID of the issue link. | 

### Return type

[**IssueLink**](IssueLink.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LinkIssues"></a>
# **Invoke-LinkIssues**
> AnyType Invoke-LinkIssues<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkIssueRequestJsonBean] <PSCustomObject><br>

Create issue link

Creates a link between two issues. Use this operation to indicate a relationship between two issues and optionally add a comment to the from (outward) issue. To use this resource the site must have [Issue Linking](https://confluence.atlassian.com/x/yoXKM) enabled.  This resource returns nothing on the creation of an issue link. To obtain the ID of the issue link, use `https://your-domain.atlassian.net/rest/api/3/issue/[linked issue key]?fields=issuelinks`.  If the link request duplicates a link, the response indicates that the issue link was created. If the request included a comment, the comment is added.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse project* [project permission](https://confluence.atlassian.com/x/yodKLg) for all the projects containing the issues to be linked,  *  *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) on the project containing the from (outward) issue,  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  If the comment has visibility restrictions, belongs to the group or has the role visibility is restricted to.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$FieldsAssignee = Initialize-FieldsAssignee -AccountId "MyAccountId" -AccountType "MyAccountType" -Active $false -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -EmailAddress "MyEmailAddress" -Key "MyKey" -Name "MyName" -Self "MySelf" -TimeZone "MyTimeZone"

$ProjectAvatarUrls = Initialize-ProjectAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$ProjectDetailsProjectCategory = Initialize-ProjectDetailsProjectCategory -Description "MyDescription" -Id "MyId" -Name "MyName" -Self "MySelf"
$ScopeProject = Initialize-ScopeProject -AvatarUrls $ProjectAvatarUrls -Id "MyId" -Key "MyKey" -Name "MyName" -ProjectCategory $ProjectDetailsProjectCategory -ProjectTypeKey "software" -Self "MySelf" -Simplified $false

$IssueTypeDetailsScope = Initialize-IssueTypeDetailsScope -Project $ScopeProject -Type "PROJECT"

$FieldsIssueType = Initialize-FieldsIssueType -AvatarId 0 -Description "MyDescription" -EntityId "MyEntityId" -HierarchyLevel 0 -IconUrl "MyIconUrl" -Id "MyId" -Name "MyName" -Scope $IssueTypeDetailsScope -Self "MySelf" -Subtask $false

$IssueTypeDetails = Initialize-IssueTypeDetails -AvatarId 0 -Description "MyDescription" -EntityId "MyEntityId" -HierarchyLevel 0 -IconUrl "MyIconUrl" -Id "MyId" -Name "MyName" -Scope $IssueTypeDetailsScope -Self "MySelf" -Subtask $false

$FieldsPriority = Initialize-FieldsPriority -Description "MyDescription" -IconUrl "MyIconUrl" -Id "MyId" -IsDefault $false -Name "MyName" -Self "MySelf" -StatusColor "MyStatusColor"

$StatusDetailsScope = Initialize-StatusDetailsScope -Project $ScopeProject -Type "PROJECT"

$StatusDetailsStatusCategory = Initialize-StatusDetailsStatusCategory -ColorName "MyColorName" -Id 0 -Key "MyKey" -Name "MyName" -Self "MySelf"
$FieldsStatus = Initialize-FieldsStatus -Description "MyDescription" -IconUrl "MyIconUrl" -Id "MyId" -Name "MyName" -Scope $StatusDetailsScope -Self "MySelf" -StatusCategory $StatusDetailsStatusCategory

$FieldsTimetracking = Initialize-FieldsTimetracking -OriginalEstimate "MyOriginalEstimate" -OriginalEstimateSeconds 0 -RemainingEstimate "MyRemainingEstimate" -RemainingEstimateSeconds 0 -TimeSpent "MyTimeSpent" -TimeSpentSeconds 0
$LinkedIssueFields = Initialize-LinkedIssueFields -Assignee $FieldsAssignee -IssueType $FieldsIssueType -Issuetype $IssueTypeDetails -Priority $FieldsPriority -Status $FieldsStatus -Summary "MySummary" -Timetracking $FieldsTimetracking

$LinkedIssue = Initialize-LinkedIssue -Fields $LinkedIssueFields -Id "MyId" -Key "MyKey" -Self "MySelf"

$IssueLinkType = Initialize-IssueLinkType -Id "MyId" -Inward "MyInward" -Name "MyName" -Outward "MyOutward" -Self "MySelf"
$LinkIssueRequestJsonBean = Initialize-LinkIssueRequestJsonBean -Comment  -InwardIssue $LinkedIssue -OutwardIssue $LinkedIssue -Type $IssueLinkType # LinkIssueRequestJsonBean | The issue link request.

# Create issue link
try {
    $Result = Invoke-LinkIssues -LinkIssueRequestJsonBean $LinkIssueRequestJsonBean
} catch {
    Write-Host ("Exception occurred when calling Invoke-LinkIssues: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LinkIssueRequestJsonBean** | [**LinkIssueRequestJsonBean**](LinkIssueRequestJsonBean.md)| The issue link request. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

