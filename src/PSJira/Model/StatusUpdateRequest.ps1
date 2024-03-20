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

The list of statuses that will be updated.

.PARAMETER Statuses
The list of statuses that will be updated.
.OUTPUTS

StatusUpdateRequest<PSCustomObject>
#>

function Initialize-StatusUpdateRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Statuses}
    )

    Process {
        'Creating PSCustomObject: PSJira => StatusUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Statuses) {
            throw "invalid value for 'Statuses', 'Statuses' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "statuses" = ${Statuses}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StatusUpdateRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to StatusUpdateRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StatusUpdateRequest<PSCustomObject>
#>
function ConvertFrom-JsonToStatusUpdateRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => StatusUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in StatusUpdateRequest
        $AllProperties = ("statuses")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'statuses' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statuses"))) {
            throw "Error! JSON cannot be serialized due to the required property 'statuses' missing."
        } else {
            $Statuses = $JsonParameters.PSobject.Properties["statuses"].value
        }

        $PSO = [PSCustomObject]@{
            "statuses" = ${Statuses}
        }

        return $PSO
    }

}

