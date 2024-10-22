#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT-23ad6c5456aade2d59a4e9437ce49c945df2eb8f
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSJira' -name 'JsonNode' {
    Context 'JsonNode' {
        It 'Initialize-JsonNode' {
            # a simple test to create an object
            #$NewObject = Initialize-JsonNode -Array "TEST_VALUE" -BigDecimal "TEST_VALUE" -BigInteger "TEST_VALUE" -BigIntegerValue "TEST_VALUE" -Binary "TEST_VALUE" -BinaryValue "TEST_VALUE" -Boolean "TEST_VALUE" -BooleanValue "TEST_VALUE" -ContainerNode "TEST_VALUE" -DecimalValue "TEST_VALUE" -Double "TEST_VALUE" -DoubleValue "TEST_VALUE" -Elements "TEST_VALUE" -FieldNames "TEST_VALUE" -Fields "TEST_VALUE" -FloatingPointNumber "TEST_VALUE" -Int "TEST_VALUE" -IntValue "TEST_VALUE" -IntegralNumber "TEST_VALUE" -Long "TEST_VALUE" -LongValue "TEST_VALUE" -MissingNode "TEST_VALUE" -VarNull "TEST_VALUE" -Number "TEST_VALUE" -NumberType "TEST_VALUE" -NumberValue "TEST_VALUE" -Object "TEST_VALUE" -Pojo "TEST_VALUE" -TextValue "TEST_VALUE" -Textual "TEST_VALUE" -ValueAsBoolean "TEST_VALUE" -ValueAsDouble "TEST_VALUE" -ValueAsInt "TEST_VALUE" -ValueAsLong "TEST_VALUE" -ValueAsText "TEST_VALUE" -ValueNode "TEST_VALUE"
            #$NewObject | Should -BeOfType JsonNode
            #$NewObject.property | Should -Be 0
        }
    }
}
