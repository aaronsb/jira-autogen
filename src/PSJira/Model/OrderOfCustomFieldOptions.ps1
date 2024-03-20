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

An ordered list of custom field option IDs and information on where to move them.

.PARAMETER After
The ID of the custom field option or cascading option to place the moved options after. Required if `position` isn't provided.
.PARAMETER CustomFieldOptionIds
A list of IDs of custom field options to move. The order of the custom field option IDs in the list is the order they are given after the move. The list must contain custom field options or cascading options, but not both.
.PARAMETER Position
The position the custom field options should be moved to. Required if `after` isn't provided.
.OUTPUTS

OrderOfCustomFieldOptions<PSCustomObject>
#>

function Initialize-OrderOfCustomFieldOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${After},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${CustomFieldOptionIds},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("First", "Last")]
        [String]
        ${Position}
    )

    Process {
        'Creating PSCustomObject: PSJira => OrderOfCustomFieldOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $CustomFieldOptionIds) {
            throw "invalid value for 'CustomFieldOptionIds', 'CustomFieldOptionIds' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "after" = ${After}
            "customFieldOptionIds" = ${CustomFieldOptionIds}
            "position" = ${Position}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrderOfCustomFieldOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrderOfCustomFieldOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrderOfCustomFieldOptions<PSCustomObject>
#>
function ConvertFrom-JsonToOrderOfCustomFieldOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => OrderOfCustomFieldOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrderOfCustomFieldOptions
        $AllProperties = ("after", "customFieldOptionIds", "position")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'customFieldOptionIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "customFieldOptionIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'customFieldOptionIds' missing."
        } else {
            $CustomFieldOptionIds = $JsonParameters.PSobject.Properties["customFieldOptionIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "after"))) { #optional property not found
            $After = $null
        } else {
            $After = $JsonParameters.PSobject.Properties["after"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "position"))) { #optional property not found
            $Position = $null
        } else {
            $Position = $JsonParameters.PSobject.Properties["position"].value
        }

        $PSO = [PSCustomObject]@{
            "after" = ${After}
            "customFieldOptionIds" = ${CustomFieldOptionIds}
            "position" = ${Position}
        }

        return $PSO
    }

}

