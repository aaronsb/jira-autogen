# ServerInformation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BaseUrl** | **String** | The base URL of the Jira instance. | [optional] 
**BuildDate** | **System.DateTime** | The timestamp when the Jira version was built. | [optional] 
**BuildNumber** | **Int32** | The build number of the Jira version. | [optional] 
**DeploymentType** | **String** | The type of server deployment. This is always returned as *Cloud*. | [optional] 
**DisplayUrl** | **String** | The display URL of the Jira instance. | [optional] 
**DisplayUrlServicedeskHelpCenter** | **String** | The display URL of the Servicedesk Help Center. | [optional] 
**HealthChecks** | [**HealthCheckResult[]**](HealthCheckResult.md) | Jira instance health check results. Deprecated and no longer returned. | [optional] 
**ScmInfo** | **String** | The unique identifier of the Jira version. | [optional] 
**ServerTime** | **System.DateTime** | The time in Jira when this request was responded to. | [optional] 
**ServerTimeZone** | [**ServerInformationServerTimeZone**](ServerInformationServerTimeZone.md) |  | [optional] 
**ServerTitle** | **String** | The name of the Jira instance. | [optional] 
**Version** | **String** | The version of Jira. | [optional] 
**VersionNumbers** | **Int32[]** | The major, minor, and revision version numbers of the Jira version. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerInformation = Initialize-PSJiraServerInformation  -BaseUrl null `
 -BuildDate null `
 -BuildNumber null `
 -DeploymentType null `
 -DisplayUrl null `
 -DisplayUrlServicedeskHelpCenter null `
 -HealthChecks null `
 -ScmInfo null `
 -ServerTime null `
 -ServerTimeZone null `
 -ServerTitle null `
 -Version null `
 -VersionNumbers null
```

- Convert the resource to JSON
```powershell
$ServerInformation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

