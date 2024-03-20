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

The metadata for the fields on the issue that can be amended.

.PARAMETER Fields
No description available.
.OUTPUTS

IssueBeanEditmeta<PSCustomObject>
#>

function Initialize-IssueBeanEditmeta {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Fields}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueBeanEditmeta' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "fields" = ${Fields}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueBeanEditmeta<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueBeanEditmeta<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueBeanEditmeta<PSCustomObject>
#>
function ConvertFrom-JsonToIssueBeanEditmeta {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueBeanEditmeta' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueBeanEditmeta
        $AllProperties = ("fields")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        $PSO = [PSCustomObject]@{
            "fields" = ${Fields}
        }

        return $PSO
    }

}

