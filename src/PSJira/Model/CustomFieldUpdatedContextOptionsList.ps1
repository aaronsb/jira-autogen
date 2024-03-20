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

A list of custom field options for a context.

.PARAMETER Options
The updated custom field options.
.OUTPUTS

CustomFieldUpdatedContextOptionsList<PSCustomObject>
#>

function Initialize-CustomFieldUpdatedContextOptionsList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Options}
    )

    Process {
        'Creating PSCustomObject: PSJira => CustomFieldUpdatedContextOptionsList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "options" = ${Options}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CustomFieldUpdatedContextOptionsList<PSCustomObject>

.DESCRIPTION

Convert from JSON to CustomFieldUpdatedContextOptionsList<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CustomFieldUpdatedContextOptionsList<PSCustomObject>
#>
function ConvertFrom-JsonToCustomFieldUpdatedContextOptionsList {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CustomFieldUpdatedContextOptionsList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CustomFieldUpdatedContextOptionsList
        $AllProperties = ("options")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "options"))) { #optional property not found
            $Options = $null
        } else {
            $Options = $JsonParameters.PSobject.Properties["options"].value
        }

        $PSO = [PSCustomObject]@{
            "options" = ${Options}
        }

        return $PSO
    }

}

