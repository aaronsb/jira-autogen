# PSJira.PSJira\Api.GroupAndUserPickerApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Find-UsersAndGroups**](GroupAndUserPickerApi.md#Find-UsersAndGroups) | **GET** /rest/api/3/groupuserpicker | Find users and groups


<a id="Find-UsersAndGroups"></a>
# **Find-UsersAndGroups**
> FoundUsersAndGroups Find-UsersAndGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShowAvatar] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeId] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvatarSize] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CaseInsensitive] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeConnectAddons] <System.Nullable[Boolean]><br>

Find users and groups

Returns a list of users and groups matching a string. The string is used:   *  for users, to find a case-insensitive match with display name and e-mail address. Note that if a user has hidden their email address in their user profile, partial matches of the email address will not find the user. An exact match is required.  *  for groups, to find a case-sensitive match with group name.  For example, if the string *tin* is used, records with the display name *Tina*, email address *sarah@tinplatetraining.com*, and the group *accounting* would be returned.  Optionally, the search can be refined to:   *  the projects and issue types associated with a custom field, such as a user picker. The search can then be further refined to return only users and groups that have permission to view specific:           *  projects.      *  issue types.          If multiple projects or issue types are specified, they must be a subset of those enabled for the custom field or no results are returned. For example, if a field is enabled for projects A, B, and C then the search could be limited to projects B and C. However, if the search is limited to projects B and D, nothing is returned.  *  not return Connect app users and groups.  *  return groups that have a case-insensitive match with the query.  The primary use case for this resource is to populate a picker field suggestion list with users or groups. To this end, the returned object includes an `html` field for each list. This field highlights the matched query term in the item name with the HTML strong tag. Also, each list is wrapped in a response object that contains a header for use in a picker, specifically *Showing X of Y matching groups*.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/yodKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Query = "MyQuery" # String | The search string.
$MaxResults = 56 # Int32 | The maximum number of items to return in each list. (optional) (default to 50)
$ShowAvatar = $true # Boolean | Whether the user avatar should be returned. If an invalid value is provided, the default value is used. (optional) (default to $false)
$FieldId = "MyFieldId" # String | The custom field ID of the field this request is for. (optional)
$ProjectId = "MyProjectId" # String[] | The ID of a project that returned users and groups must have permission to view. To include multiple projects, provide an ampersand-separated list. For example, `projectId=10000&projectId=10001`. This parameter is only used when `fieldId` is present. (optional)
$IssueTypeId = "MyIssueTypeId" # String[] | The ID of an issue type that returned users and groups must have permission to view. To include multiple issue types, provide an ampersand-separated list. For example, `issueTypeId=10000&issueTypeId=10001`. Special values, such as `-1` (all standard issue types) and `-2` (all subtask issue types), are supported. This parameter is only used when `fieldId` is present. (optional)
$AvatarSize = "xsmall" # String | The size of the avatar to return. If an invalid value is provided, the default value is used. (optional) (default to "xsmall")
$CaseInsensitive = $true # Boolean | Whether the search for groups should be case insensitive. (optional) (default to $false)
$ExcludeConnectAddons = $true # Boolean | Whether Connect app users and groups should be excluded from the search results. If an invalid value is provided, the default value is used. (optional) (default to $false)

# Find users and groups
try {
    $Result = Find-UsersAndGroups -Query $Query -MaxResults $MaxResults -ShowAvatar $ShowAvatar -FieldId $FieldId -ProjectId $ProjectId -IssueTypeId $IssueTypeId -AvatarSize $AvatarSize -CaseInsensitive $CaseInsensitive -ExcludeConnectAddons $ExcludeConnectAddons
} catch {
    Write-Host ("Exception occurred when calling Find-UsersAndGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | **String**| The search string. | 
 **MaxResults** | **Int32**| The maximum number of items to return in each list. | [optional] [default to 50]
 **ShowAvatar** | **Boolean**| Whether the user avatar should be returned. If an invalid value is provided, the default value is used. | [optional] [default to $false]
 **FieldId** | **String**| The custom field ID of the field this request is for. | [optional] 
 **ProjectId** | [**String[]**](String.md)| The ID of a project that returned users and groups must have permission to view. To include multiple projects, provide an ampersand-separated list. For example, &#x60;projectId&#x3D;10000&amp;projectId&#x3D;10001&#x60;. This parameter is only used when &#x60;fieldId&#x60; is present. | [optional] 
 **IssueTypeId** | [**String[]**](String.md)| The ID of an issue type that returned users and groups must have permission to view. To include multiple issue types, provide an ampersand-separated list. For example, &#x60;issueTypeId&#x3D;10000&amp;issueTypeId&#x3D;10001&#x60;. Special values, such as &#x60;-1&#x60; (all standard issue types) and &#x60;-2&#x60; (all subtask issue types), are supported. This parameter is only used when &#x60;fieldId&#x60; is present. | [optional] 
 **AvatarSize** | **String**| The size of the avatar to return. If an invalid value is provided, the default value is used. | [optional] [default to &quot;xsmall&quot;]
 **CaseInsensitive** | **Boolean**| Whether the search for groups should be case insensitive. | [optional] [default to $false]
 **ExcludeConnectAddons** | **Boolean**| Whether Connect app users and groups should be excluded from the search results. If an invalid value is provided, the default value is used. | [optional] [default to $false]

### Return type

[**FoundUsersAndGroups**](FoundUsersAndGroups.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

