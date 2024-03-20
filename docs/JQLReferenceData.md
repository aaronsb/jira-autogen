# JQLReferenceData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**JqlReservedWords** | **String[]** | List of JQL query reserved words. | [optional] 
**VisibleFieldNames** | [**FieldReferenceData[]**](FieldReferenceData.md) | List of fields usable in JQL queries. | [optional] 
**VisibleFunctionNames** | [**FunctionReferenceData[]**](FunctionReferenceData.md) | List of functions usable in JQL queries. | [optional] 

## Examples

- Prepare the resource
```powershell
$JQLReferenceData = Initialize-PSJiraJQLReferenceData  -JqlReservedWords null `
 -VisibleFieldNames null `
 -VisibleFunctionNames null
```

- Convert the resource to JSON
```powershell
$JQLReferenceData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

