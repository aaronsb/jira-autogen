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

An element of the order-by JQL clause.

.PARAMETER Direction
The direction in which to order the results.
.PARAMETER Field
No description available.
.OUTPUTS

JqlQueryOrderByClauseElement<PSCustomObject>
#>

function Initialize-JqlQueryOrderByClauseElement {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("asc", "desc")]
        [String]
        ${Direction},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Field}
    )

    Process {
        'Creating PSCustomObject: PSJira => JqlQueryOrderByClauseElement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Field) {
            throw "invalid value for 'Field', 'Field' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "direction" = ${Direction}
            "field" = ${Field}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JqlQueryOrderByClauseElement<PSCustomObject>

.DESCRIPTION

Convert from JSON to JqlQueryOrderByClauseElement<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JqlQueryOrderByClauseElement<PSCustomObject>
#>
function ConvertFrom-JsonToJqlQueryOrderByClauseElement {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JqlQueryOrderByClauseElement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JqlQueryOrderByClauseElement
        $AllProperties = ("direction", "field")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'field' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "field"))) {
            throw "Error! JSON cannot be serialized due to the required property 'field' missing."
        } else {
            $Field = $JsonParameters.PSobject.Properties["field"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "direction"))) { #optional property not found
            $Direction = $null
        } else {
            $Direction = $JsonParameters.PSobject.Properties["direction"].value
        }

        $PSO = [PSCustomObject]@{
            "direction" = ${Direction}
            "field" = ${Field}
        }

        return $PSO
    }

}

