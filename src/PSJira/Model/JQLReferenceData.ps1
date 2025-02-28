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

Lists of JQL reference data.

.PARAMETER JqlReservedWords
List of JQL query reserved words.
.PARAMETER VisibleFieldNames
List of fields usable in JQL queries.
.PARAMETER VisibleFunctionNames
List of functions usable in JQL queries.
.OUTPUTS

JQLReferenceData<PSCustomObject>
#>

function Initialize-JQLReferenceData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${JqlReservedWords},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VisibleFieldNames},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VisibleFunctionNames}
    )

    Process {
        'Creating PSCustomObject: PSJira => JQLReferenceData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "jqlReservedWords" = ${JqlReservedWords}
            "visibleFieldNames" = ${VisibleFieldNames}
            "visibleFunctionNames" = ${VisibleFunctionNames}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JQLReferenceData<PSCustomObject>

.DESCRIPTION

Convert from JSON to JQLReferenceData<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JQLReferenceData<PSCustomObject>
#>
function ConvertFrom-JsonToJQLReferenceData {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JQLReferenceData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JQLReferenceData
        $AllProperties = ("jqlReservedWords", "visibleFieldNames", "visibleFunctionNames")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jqlReservedWords"))) { #optional property not found
            $JqlReservedWords = $null
        } else {
            $JqlReservedWords = $JsonParameters.PSobject.Properties["jqlReservedWords"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "visibleFieldNames"))) { #optional property not found
            $VisibleFieldNames = $null
        } else {
            $VisibleFieldNames = $JsonParameters.PSobject.Properties["visibleFieldNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "visibleFunctionNames"))) { #optional property not found
            $VisibleFunctionNames = $null
        } else {
            $VisibleFunctionNames = $JsonParameters.PSobject.Properties["visibleFunctionNames"].value
        }

        $PSO = [PSCustomObject]@{
            "jqlReservedWords" = ${JqlReservedWords}
            "visibleFieldNames" = ${VisibleFieldNames}
            "visibleFunctionNames" = ${VisibleFunctionNames}
        }

        return $PSO
    }

}

