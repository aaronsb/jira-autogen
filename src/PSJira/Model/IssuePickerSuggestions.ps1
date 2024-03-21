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

A list of issues suggested for use in auto-completion.

.PARAMETER Sections
A list of issues for an issue type suggested for use in auto-completion.
.OUTPUTS

IssuePickerSuggestions<PSCustomObject>
#>

function Initialize-IssuePickerSuggestions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Sections}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssuePickerSuggestions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "sections" = ${Sections}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssuePickerSuggestions<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssuePickerSuggestions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssuePickerSuggestions<PSCustomObject>
#>
function ConvertFrom-JsonToIssuePickerSuggestions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssuePickerSuggestions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssuePickerSuggestions
        $AllProperties = ("sections")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sections"))) { #optional property not found
            $Sections = $null
        } else {
            $Sections = $JsonParameters.PSobject.Properties["sections"].value
        }

        $PSO = [PSCustomObject]@{
            "sections" = ${Sections}
        }

        return $PSO
    }

}
