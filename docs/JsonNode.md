# JsonNode
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Array** | **Boolean** |  | [optional] 
**BigDecimal** | **Boolean** |  | [optional] 
**BigInteger** | **Boolean** |  | [optional] 
**BigIntegerValue** | **Int32** |  | [optional] 
**Binary** | **Boolean** |  | [optional] 
**BinaryValue** | [**SystemByte[]**](SystemByte.md) |  | [optional] 
**Boolean** | **Boolean** |  | [optional] 
**BooleanValue** | **Boolean** |  | [optional] 
**ContainerNode** | **Boolean** |  | [optional] 
**DecimalValue** | **Decimal** |  | [optional] 
**Double** | **Boolean** |  | [optional] 
**DoubleValue** | **Double** |  | [optional] 
**Elements** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**FieldNames** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Fields** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**FloatingPointNumber** | **Boolean** |  | [optional] 
**Int** | **Boolean** |  | [optional] 
**IntValue** | **Int32** |  | [optional] 
**IntegralNumber** | **Boolean** |  | [optional] 
**Long** | **Boolean** |  | [optional] 
**LongValue** | **Int64** |  | [optional] 
**MissingNode** | **Boolean** |  | [optional] 
**VarNull** | **Boolean** |  | [optional] 
**Number** | **Boolean** |  | [optional] 
**NumberType** | **String** |  | [optional] 
**NumberValue** | **Decimal** |  | [optional] 
**Object** | **Boolean** |  | [optional] 
**Pojo** | **Boolean** |  | [optional] 
**TextValue** | **String** |  | [optional] 
**Textual** | **Boolean** |  | [optional] 
**ValueAsBoolean** | **Boolean** |  | [optional] 
**ValueAsDouble** | **Double** |  | [optional] 
**ValueAsInt** | **Int32** |  | [optional] 
**ValueAsLong** | **Int64** |  | [optional] 
**ValueAsText** | **String** |  | [optional] 
**ValueNode** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JsonNode = Initialize-PSJiraJsonNode  -Array null `
 -BigDecimal null `
 -BigInteger null `
 -BigIntegerValue null `
 -Binary null `
 -BinaryValue null `
 -Boolean null `
 -BooleanValue null `
 -ContainerNode null `
 -DecimalValue null `
 -Double null `
 -DoubleValue null `
 -Elements null `
 -FieldNames null `
 -Fields null `
 -FloatingPointNumber null `
 -Int null `
 -IntValue null `
 -IntegralNumber null `
 -Long null `
 -LongValue null `
 -MissingNode null `
 -VarNull null `
 -Number null `
 -NumberType null `
 -NumberValue null `
 -Object null `
 -Pojo null `
 -TextValue null `
 -Textual null `
 -ValueAsBoolean null `
 -ValueAsDouble null `
 -ValueAsInt null `
 -ValueAsLong null `
 -ValueAsText null `
 -ValueNode null
```

- Convert the resource to JSON
```powershell
$JsonNode | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

