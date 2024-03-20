#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT-23ad6c5456aade2d59a4e9437ce49c945df2eb8f
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Message
The human-readable message that describes the result.
.PARAMETER StatusCode
The status code of the response.
.OUTPUTS

OperationMessage<PSCustomObject>
#>

function Initialize-OperationMessage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${StatusCode}
    )

    Process {
        'Creating PSCustomObject: PSJira => OperationMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Message) {
            throw "invalid value for 'Message', 'Message' cannot be null."
        }

        if ($null -eq $StatusCode) {
            throw "invalid value for 'StatusCode', 'StatusCode' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "statusCode" = ${StatusCode}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OperationMessage<PSCustomObject>

.DESCRIPTION

Convert from JSON to OperationMessage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OperationMessage<PSCustomObject>
#>
function ConvertFrom-JsonToOperationMessage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => OperationMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OperationMessage
        $AllProperties = ("message", "statusCode")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'message' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) {
            throw "Error! JSON cannot be serialized due to the required property 'message' missing."
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusCode"))) {
            throw "Error! JSON cannot be serialized due to the required property 'statusCode' missing."
        } else {
            $StatusCode = $JsonParameters.PSobject.Properties["statusCode"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "statusCode" = ${StatusCode}
        }

        return $PSO
    }

}

