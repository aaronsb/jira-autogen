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

Details of the next-gen projects the issue type is available in.

.PARAMETER Project
No description available.
.PARAMETER Type
The type of scope.
.OUTPUTS

IssueTypeDetailsScope<PSCustomObject>
#>

function Initialize-IssueTypeDetailsScope {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Project},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PROJECT", "TEMPLATE")]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueTypeDetailsScope' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "project" = ${Project}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueTypeDetailsScope<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueTypeDetailsScope<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueTypeDetailsScope<PSCustomObject>
#>
function ConvertFrom-JsonToIssueTypeDetailsScope {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueTypeDetailsScope' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueTypeDetailsScope
        $AllProperties = ("project", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "project"))) { #optional property not found
            $Project = $null
        } else {
            $Project = $JsonParameters.PSobject.Properties["project"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "project" = ${Project}
            "type" = ${Type}
        }

        return $PSO
    }

}
