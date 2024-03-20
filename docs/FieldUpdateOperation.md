# FieldUpdateOperation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Add** | [**AnyType**](.md) | The value to add to the field. | [optional] 
**Copy** | [**AnyType**](.md) | The field value to copy from another issue. | [optional] 
**Edit** | [**AnyType**](.md) | The value to edit in the field. | [optional] 
**Remove** | [**AnyType**](.md) | The value to removed from the field. | [optional] 
**Set** | [**AnyType**](.md) | The value to set in the field. | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldUpdateOperation = Initialize-PSJiraFieldUpdateOperation  -Add triaged `
 -Copy {&quot;issuelinks&quot;:{&quot;sourceIssues&quot;:[{&quot;key&quot;:&quot;FP-5&quot;}]}} `
 -Edit {&quot;originalEstimate&quot;:&quot;1w 1d&quot;,&quot;remainingEstimate&quot;:&quot;4d&quot;} `
 -Remove blocker `
 -Set A new summary
```

- Convert the resource to JSON
```powershell
$FieldUpdateOperation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

