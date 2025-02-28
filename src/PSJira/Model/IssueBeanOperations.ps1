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

The operations that can be performed on the issue.

.PARAMETER LinkGroups
Details of the link groups defining issue operations.
.OUTPUTS

IssueBeanOperations<PSCustomObject>
#>

function Initialize-IssueBeanOperations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${LinkGroups}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueBeanOperations' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "linkGroups" = ${LinkGroups}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueBeanOperations<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueBeanOperations<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueBeanOperations<PSCustomObject>
#>
function ConvertFrom-JsonToIssueBeanOperations {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueBeanOperations' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueBeanOperations
        $AllProperties = ("linkGroups")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "linkGroups"))) { #optional property not found
            $LinkGroups = $null
        } else {
            $LinkGroups = $JsonParameters.PSobject.Properties["linkGroups"].value
        }

        $PSO = [PSCustomObject]@{
            "linkGroups" = ${LinkGroups}
        }

        return $PSO
    }

}

