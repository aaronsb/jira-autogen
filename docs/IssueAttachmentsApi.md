# PSJira.PSJira\Api.IssueAttachmentsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-Attachment**](IssueAttachmentsApi.md#Add-Attachment) | **POST** /rest/api/3/issue/{issueIdOrKey}/attachments | Add attachment
[**Expand-AttachmentForHumans**](IssueAttachmentsApi.md#Expand-AttachmentForHumans) | **GET** /rest/api/3/attachment/{id}/expand/human | Get all metadata for an expanded attachment
[**Expand-AttachmentForMachines**](IssueAttachmentsApi.md#Expand-AttachmentForMachines) | **GET** /rest/api/3/attachment/{id}/expand/raw | Get contents metadata for an expanded attachment
[**Get-Attachment**](IssueAttachmentsApi.md#Get-Attachment) | **GET** /rest/api/3/attachment/{id} | Get attachment metadata
[**Get-AttachmentContent**](IssueAttachmentsApi.md#Get-AttachmentContent) | **GET** /rest/api/3/attachment/content/{id} | Get attachment content
[**Get-AttachmentMeta**](IssueAttachmentsApi.md#Get-AttachmentMeta) | **GET** /rest/api/3/attachment/meta | Get Jira attachment settings
[**Get-AttachmentThumbnail**](IssueAttachmentsApi.md#Get-AttachmentThumbnail) | **GET** /rest/api/3/attachment/thumbnail/{id} | Get attachment thumbnail
[**Remove-Attachment**](IssueAttachmentsApi.md#Remove-Attachment) | **DELETE** /rest/api/3/attachment/{id} | Delete attachment


<a id="Add-Attachment"></a>
# **Add-Attachment**
> Attachment[] Add-Attachment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>

Add attachment

Adds one or more attachments to an issue. Attachments are posted as multipart/form-data ([RFC 1867](https://www.ietf.org/rfc/rfc1867.txt)).  Note that:   *  The request must have a `X-Atlassian-Token: no-check` header, if not it is blocked. See [Special headers](#special-request-headers) for more information.  *  The name of the multipart/form-data parameter that contains the attachments must be `file`.  The following examples upload a file called *myfile.txt* to the issue *TEST-123*:  #### curl ####      curl --location --request POST 'https://your-domain.atlassian.net/rest/api/3/issue/TEST-123/attachments'      -u 'email@example.com:<api_token>'      -H 'X-Atlassian-Token: no-check'      --form 'file=@""myfile.txt""'  #### Node.js ####      // This code sample uses the 'node-fetch' and 'form-data' libraries:      // https://www.npmjs.com/package/node-fetch      // https://www.npmjs.com/package/form-data      const fetch = require('node-fetch');      const FormData = require('form-data');      const fs = require('fs');           const filePath = 'myfile.txt';      const form = new FormData();      const stats = fs.statSync(filePath);      const fileSizeInBytes = stats.size;      const fileStream = fs.createReadStream(filePath);           form.append('file', fileStream, {knownLength: fileSizeInBytes});           fetch('https://your-domain.atlassian.net/rest/api/3/issue/TEST-123/attachments', {          method: 'POST',          body: form,          headers: {              'Authorization': `Basic ${Buffer.from(                  'email@example.com:'              ).toString('base64')}`,              'Accept': 'application/json',              'X-Atlassian-Token': 'no-check'          }      })          .then(response => {              console.log(                  `Response: ${response.status} ${response.statusText}`              );              return response.text();          })          .then(text => console.log(text))          .catch(err => console.error(err));  #### Java ####      // This code sample uses the  'Unirest' library:      // http://unirest.io/java.html      HttpResponse response = Unirest.post(""https://your-domain.atlassian.net/rest/api/2/issue/{issueIdOrKey}/attachments"")              .basicAuth(""email@example.com"", """")              .header(""Accept"", ""application/json"")              .header(""X-Atlassian-Token"", ""no-check"")              .field(""file"", new File(""myfile.txt""))              .asJson();                   System.out.println(response.getBody());  #### Python ####      # This code sample uses the 'requests' library:      # http://docs.python-requests.org      import requests      from requests.auth import HTTPBasicAuth      import json           url = ""https://your-domain.atlassian.net/rest/api/2/issue/{issueIdOrKey}/attachments""           auth = HTTPBasicAuth(""email@example.com"", """")           headers = {         ""Accept"": ""application/json"",         ""X-Atlassian-Token"": ""no-check""      }           response = requests.request(         ""POST"",         url,         headers = headers,         auth = auth,         files = {              ""file"": (""myfile.txt"", open(""myfile.txt"",""rb""), ""application-type"")         }      )           print(json.dumps(json.loads(response.text), sort_keys=True, indent=4, separators=("","", "": "")))  #### PHP ####      // This code sample uses the 'Unirest' library:      // http://unirest.io/php.html      Unirest\Request::auth('email@example.com', '');           $headers = array(        'Accept' => 'application/json',        'X-Atlassian-Token' => 'no-check'      );           $parameters = array(        'file' => File::add('myfile.txt')      );           $response = Unirest\Request::post(        'https://your-domain.atlassian.net/rest/api/2/issue/{issueIdOrKey}/attachments',        $headers,        $parameters      );           var_dump($response)  #### Forge ####      // This sample uses Atlassian Forge and the `form-data` library.      // https://developer.atlassian.com/platform/forge/      // https://www.npmjs.com/package/form-data      import api from ""@forge/api"";      import FormData from ""form-data"";           const form = new FormData();      form.append('file', fileStream, {knownLength: fileSizeInBytes});           const response = await api.asApp().requestJira('/rest/api/2/issue/{issueIdOrKey}/attachments', {          method: 'POST',          body: form,          headers: {              'Accept': 'application/json',              'X-Atlassian-Token': 'no-check'          }      });           console.log(`Response: ${response.status} ${response.statusText}`);      console.log(await response.json());  Tip: Use a client library. Many client libraries have classes for handling multipart POST operations. For example, in Java, the Apache HTTP Components library provides a [MultiPartEntity](http://hc.apache.org/httpcomponents-client-ga/httpmime/apidocs/org/apache/http/entity/mime/MultipartEntity.html) class for multipart POST operations.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**    *  *Browse Projects* and *Create attachments* [ project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "MyIssueIdOrKey" # String | The ID or key of the issue that attachments are added to.

# Add attachment
try {
    $Result = Add-Attachment -IssueIdOrKey $IssueIdOrKey
} catch {
    Write-Host ("Exception occurred when calling Add-Attachment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key of the issue that attachments are added to. | 

### Return type

[**Attachment[]**](Attachment.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Expand-AttachmentForHumans"></a>
# **Expand-AttachmentForHumans**
> AttachmentArchiveMetadataReadable Expand-AttachmentForHumans<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get all metadata for an expanded attachment

Returns the metadata for the contents of an attachment, if it is an archive, and metadata for the attachment itself. For example, if the attachment is a ZIP archive, then information about the files in the archive is returned and metadata for the ZIP archive. Currently, only the ZIP archive format is supported.  Use this operation to retrieve data that is presented to the user, as this operation returns the metadata for the attachment itself, such as the attachment's ID and name. Otherwise, use [ Get contents metadata for an expanded attachment](#api-rest-api-3-attachment-id-expand-raw-get), which only returns the metadata for the attachment's contents.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** For the issue containing the attachment:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the attachment.

# Get all metadata for an expanded attachment
try {
    $Result = Expand-AttachmentForHumans -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Expand-AttachmentForHumans: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the attachment. | 

### Return type

[**AttachmentArchiveMetadataReadable**](AttachmentArchiveMetadataReadable.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Expand-AttachmentForMachines"></a>
# **Expand-AttachmentForMachines**
> AttachmentArchiveImpl Expand-AttachmentForMachines<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get contents metadata for an expanded attachment

Returns the metadata for the contents of an attachment, if it is an archive. For example, if the attachment is a ZIP archive, then information about the files in the archive is returned. Currently, only the ZIP archive format is supported.  Use this operation if you are processing the data without presenting it to the user, as this operation only returns the metadata for the contents of the attachment. Otherwise, to retrieve data to present to the user, use [ Get all metadata for an expanded attachment](#api-rest-api-3-attachment-id-expand-human-get) which also returns the metadata for the attachment itself, such as the attachment's ID and name.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** For the issue containing the attachment:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the attachment.

# Get contents metadata for an expanded attachment
try {
    $Result = Expand-AttachmentForMachines -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Expand-AttachmentForMachines: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the attachment. | 

### Return type

[**AttachmentArchiveImpl**](AttachmentArchiveImpl.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Attachment"></a>
# **Get-Attachment**
> AttachmentMetadata Get-Attachment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get attachment metadata

Returns the metadata for an attachment. Note that the attachment itself is not returned.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the attachment.

# Get attachment metadata
try {
    $Result = Get-Attachment -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Attachment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the attachment. | 

### Return type

[**AttachmentMetadata**](AttachmentMetadata.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AttachmentContent"></a>
# **Get-AttachmentContent**
> AnyType[] Get-AttachmentContent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Redirect] <System.Nullable[Boolean]><br>

Get attachment content

Returns the contents of an attachment. A `Range` header can be set to define a range of bytes within the attachment to download. See the [HTTP Range header standard](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Range) for details.  To return a thumbnail of the attachment, use [Get attachment thumbnail](#api-rest-api-3-attachment-thumbnail-id-get).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** For the issue containing the attachment:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the attachment.
$Redirect = $true # Boolean | Whether a redirect is provided for the attachment download. Clients that do not automatically follow redirects can set this to `false` to avoid making multiple requests to download the attachment. (optional) (default to $true)

# Get attachment content
try {
    $Result = Get-AttachmentContent -Id $Id -Redirect $Redirect
} catch {
    Write-Host ("Exception occurred when calling Get-AttachmentContent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the attachment. | 
 **Redirect** | **Boolean**| Whether a redirect is provided for the attachment download. Clients that do not automatically follow redirects can set this to &#x60;false&#x60; to avoid making multiple requests to download the attachment. | [optional] [default to $true]

### Return type

[**AnyType[]**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AttachmentMeta"></a>
# **Get-AttachmentMeta**
> AttachmentSettings Get-AttachmentMeta<br>

Get Jira attachment settings

Returns the attachment settings, that is, whether attachments are enabled and the maximum attachment size allowed.  Note that there are also [project permissions](https://confluence.atlassian.com/x/yodKLg) that restrict whether users can create and delete attachments.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get Jira attachment settings
try {
    $Result = Get-AttachmentMeta
} catch {
    Write-Host ("Exception occurred when calling Get-AttachmentMeta: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AttachmentSettings**](AttachmentSettings.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AttachmentThumbnail"></a>
# **Get-AttachmentThumbnail**
> AnyType[] Get-AttachmentThumbnail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Redirect] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FallbackToDefault] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Width] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Height] <System.Nullable[Int32]><br>

Get attachment thumbnail

Returns the thumbnail of an attachment.  To return the attachment contents, use [Get attachment content](#api-rest-api-3-attachment-content-id-get).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** For the issue containing the attachment:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the attachment.
$Redirect = $true # Boolean | Whether a redirect is provided for the attachment download. Clients that do not automatically follow redirects can set this to `false` to avoid making multiple requests to download the attachment. (optional) (default to $true)
$FallbackToDefault = $true # Boolean | Whether a default thumbnail is returned when the requested thumbnail is not found. (optional) (default to $true)
$Width = 56 # Int32 | The maximum width to scale the thumbnail to. (optional)
$Height = 56 # Int32 | The maximum height to scale the thumbnail to. (optional)

# Get attachment thumbnail
try {
    $Result = Get-AttachmentThumbnail -Id $Id -Redirect $Redirect -FallbackToDefault $FallbackToDefault -Width $Width -Height $Height
} catch {
    Write-Host ("Exception occurred when calling Get-AttachmentThumbnail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the attachment. | 
 **Redirect** | **Boolean**| Whether a redirect is provided for the attachment download. Clients that do not automatically follow redirects can set this to &#x60;false&#x60; to avoid making multiple requests to download the attachment. | [optional] [default to $true]
 **FallbackToDefault** | **Boolean**| Whether a default thumbnail is returned when the requested thumbnail is not found. | [optional] [default to $true]
 **Width** | **Int32**| The maximum width to scale the thumbnail to. | [optional] 
 **Height** | **Int32**| The maximum height to scale the thumbnail to. | [optional] 

### Return type

[**AnyType[]**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-Attachment"></a>
# **Remove-Attachment**
> void Remove-Attachment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete attachment

Deletes an attachment from an issue.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** For the project holding the issue containing the attachment:   *  *Delete own attachments* [project permission](https://confluence.atlassian.com/x/yodKLg) to delete an attachment created by the calling user.  *  *Delete all attachments* [project permission](https://confluence.atlassian.com/x/yodKLg) to delete an attachment created by any user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the attachment.

# Delete attachment
try {
    $Result = Remove-Attachment -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-Attachment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the attachment. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

