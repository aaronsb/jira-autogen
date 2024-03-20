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

A screen with tab details.

.PARAMETER Description
The description of the screen.
.PARAMETER Id
The ID of the screen.
.PARAMETER Name
The name of the screen.
.PARAMETER Scope
The scope of the screen.
.PARAMETER Tab
The tab for the screen.
.OUTPUTS

ScreenWithTab<PSCustomObject>
#>

function Initialize-ScreenWithTab {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Scope},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Tab}
    )

    Process {
        'Creating PSCustomObject: PSJira => ScreenWithTab' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "id" = ${Id}
            "name" = ${Name}
            "scope" = ${Scope}
            "tab" = ${Tab}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ScreenWithTab<PSCustomObject>

.DESCRIPTION

Convert from JSON to ScreenWithTab<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ScreenWithTab<PSCustomObject>
#>
function ConvertFrom-JsonToScreenWithTab {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ScreenWithTab' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ScreenWithTab
        $AllProperties = ("description", "id", "name", "scope", "tab")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) { #optional property not found
            $Scope = $null
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tab"))) { #optional property not found
            $Tab = $null
        } else {
            $Tab = $JsonParameters.PSobject.Properties["tab"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "id" = ${Id}
            "name" = ${Name}
            "scope" = ${Scope}
            "tab" = ${Tab}
        }

        return $PSO
    }

}

