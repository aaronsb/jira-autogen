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

.PARAMETER Global
Defines the behavior of the option within the global context. If this property is set, even if set to an empty object, then the option is available in all projects.
.PARAMETER Projects
DEPRECATED
.PARAMETER Projects2
Defines the projects in which the option is available and the behavior of the option within each project. Specify one object per project. The behavior of the option in a project context overrides the behavior in the global context.
.OUTPUTS

IssueFieldOptionScopeBean<PSCustomObject>
#>

function Initialize-IssueFieldOptionScopeBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Global},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int64[]]
        ${Projects},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Projects2}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueFieldOptionScopeBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "global" = ${Global}
            "projects" = ${Projects}
            "projects2" = ${Projects2}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueFieldOptionScopeBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueFieldOptionScopeBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueFieldOptionScopeBean<PSCustomObject>
#>
function ConvertFrom-JsonToIssueFieldOptionScopeBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueFieldOptionScopeBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueFieldOptionScopeBean
        $AllProperties = ("global", "projects", "projects2")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "global"))) { #optional property not found
            $Global = $null
        } else {
            $Global = $JsonParameters.PSobject.Properties["global"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projects"))) { #optional property not found
            $Projects = $null
        } else {
            $Projects = $JsonParameters.PSobject.Properties["projects"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projects2"))) { #optional property not found
            $Projects2 = $null
        } else {
            $Projects2 = $JsonParameters.PSobject.Properties["projects2"].value
        }

        $PSO = [PSCustomObject]@{
            "global" = ${Global}
            "projects" = ${Projects}
            "projects2" = ${Projects2}
        }

        return $PSO
    }

}

