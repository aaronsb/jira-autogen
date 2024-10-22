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
A collection of errors related to unchanged issues. The collection size is limited, which means not all errors may be returned.
.PARAMETER ModifiedIssues
The IDs of the modified issues.
.PARAMETER UnmodifiedIssues
The IDs of the unchanged issues, those issues where errors prevent modification.
.OUTPUTS

RemoveOptionFromIssuesResult<PSCustomObject>
#>

function Initialize-RemoveOptionFromIssuesResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Errors},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int64[]]
        ${ModifiedIssues},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int64[]]
        ${UnmodifiedIssues}
    )

    Process {
        'Creating PSCustomObject: PSJira => RemoveOptionFromIssuesResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "errors" = ${Errors}
            "modifiedIssues" = ${ModifiedIssues}
            "unmodifiedIssues" = ${UnmodifiedIssues}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RemoveOptionFromIssuesResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to RemoveOptionFromIssuesResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RemoveOptionFromIssuesResult<PSCustomObject>
#>
function ConvertFrom-JsonToRemoveOptionFromIssuesResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => RemoveOptionFromIssuesResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RemoveOptionFromIssuesResult
        $AllProperties = ("errors", "modifiedIssues", "unmodifiedIssues")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modifiedIssues"))) { #optional property not found
            $ModifiedIssues = $null
        } else {
            $ModifiedIssues = $JsonParameters.PSobject.Properties["modifiedIssues"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unmodifiedIssues"))) { #optional property not found
            $UnmodifiedIssues = $null
        } else {
            $UnmodifiedIssues = $JsonParameters.PSobject.Properties["unmodifiedIssues"].value
        }

        $PSO = [PSCustomObject]@{
            "errors" = ${Errors}
            "modifiedIssues" = ${ModifiedIssues}
            "unmodifiedIssues" = ${UnmodifiedIssues}
        }

        return $PSO
    }

}

