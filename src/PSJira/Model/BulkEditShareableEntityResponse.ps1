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

Details of a request to bulk edit shareable entity.

.PARAMETER Action
Allowed action for bulk edit shareable entity
.PARAMETER EntityErrors
The mapping dashboard id to errors if any.
.OUTPUTS

BulkEditShareableEntityResponse<PSCustomObject>
#>

function Initialize-BulkEditShareableEntityResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("changeOwner", "changePermission", "addPermission", "removePermission")]
        [String]
        ${Action},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${EntityErrors}
    )

    Process {
        'Creating PSCustomObject: PSJira => BulkEditShareableEntityResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Action) {
            throw "invalid value for 'Action', 'Action' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "action" = ${Action}
            "entityErrors" = ${EntityErrors}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BulkEditShareableEntityResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to BulkEditShareableEntityResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BulkEditShareableEntityResponse<PSCustomObject>
#>
function ConvertFrom-JsonToBulkEditShareableEntityResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => BulkEditShareableEntityResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BulkEditShareableEntityResponse
        $AllProperties = ("action", "entityErrors")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'action' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "action"))) {
            throw "Error! JSON cannot be serialized due to the required property 'action' missing."
        } else {
            $Action = $JsonParameters.PSobject.Properties["action"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entityErrors"))) { #optional property not found
            $EntityErrors = $null
        } else {
            $EntityErrors = $JsonParameters.PSobject.Properties["entityErrors"].value
        }

        $PSO = [PSCustomObject]@{
            "action" = ${Action}
            "entityErrors" = ${EntityErrors}
        }

        return $PSO
    }

}
