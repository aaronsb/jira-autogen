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

An icon.

.PARAMETER Link
The URL of the tooltip, used only for a status icon.
.PARAMETER Title
The title of the icon, for use as a tooltip on the icon.
.PARAMETER Url16x16
The URL of a 16x16 pixel icon.
.OUTPUTS

IconBean<PSCustomObject>
#>

function Initialize-IconBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Link},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url16x16}
    )

    Process {
        'Creating PSCustomObject: PSJira => IconBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "link" = ${Link}
            "title" = ${Title}
            "url16x16" = ${Url16x16}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IconBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to IconBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IconBean<PSCustomObject>
#>
function ConvertFrom-JsonToIconBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IconBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IconBean
        $AllProperties = ("link", "title", "url16x16")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "link"))) { #optional property not found
            $Link = $null
        } else {
            $Link = $JsonParameters.PSobject.Properties["link"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) { #optional property not found
            $Title = $null
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url16x16"))) { #optional property not found
            $Url16x16 = $null
        } else {
            $Url16x16 = $JsonParameters.PSobject.Properties["url16x16"].value
        }

        $PSO = [PSCustomObject]@{
            "link" = ${Link}
            "title" = ${Title}
            "url16x16" = ${Url16x16}
        }

        return $PSO
    }

}

