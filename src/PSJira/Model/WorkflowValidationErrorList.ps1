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

.PARAMETER Errors
The list of validation errors.
.OUTPUTS

WorkflowValidationErrorList<PSCustomObject>
#>

function Initialize-WorkflowValidationErrorList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Errors}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowValidationErrorList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "errors" = ${Errors}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowValidationErrorList<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowValidationErrorList<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowValidationErrorList<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowValidationErrorList {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowValidationErrorList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowValidationErrorList
        $AllProperties = ("errors")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        $PSO = [PSCustomObject]@{
            "errors" = ${Errors}
        }

        return $PSO
    }

}

