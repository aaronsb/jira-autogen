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

List of issue level security items in a project.

.PARAMETER Levels
Issue level security items list.
.OUTPUTS

ProjectIssueSecurityLevels<PSCustomObject>
#>

function Initialize-ProjectIssueSecurityLevels {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Levels}
    )

    Process {
        'Creating PSCustomObject: PSJira => ProjectIssueSecurityLevels' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Levels) {
            throw "invalid value for 'Levels', 'Levels' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "levels" = ${Levels}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProjectIssueSecurityLevels<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProjectIssueSecurityLevels<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProjectIssueSecurityLevels<PSCustomObject>
#>
function ConvertFrom-JsonToProjectIssueSecurityLevels {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ProjectIssueSecurityLevels' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProjectIssueSecurityLevels
        $AllProperties = ("levels")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'levels' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "levels"))) {
            throw "Error! JSON cannot be serialized due to the required property 'levels' missing."
        } else {
            $Levels = $JsonParameters.PSobject.Properties["levels"].value
        }

        $PSO = [PSCustomObject]@{
            "levels" = ${Levels}
        }

        return $PSO
    }

}
