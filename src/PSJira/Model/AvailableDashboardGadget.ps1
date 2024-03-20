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

The details of the available dashboard gadget.

.PARAMETER ModuleKey
The module key of the gadget type.
.PARAMETER Title
The title of the gadget.
.PARAMETER Uri
The URI of the gadget type.
.OUTPUTS

AvailableDashboardGadget<PSCustomObject>
#>

function Initialize-AvailableDashboardGadget {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ModuleKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uri}
    )

    Process {
        'Creating PSCustomObject: PSJira => AvailableDashboardGadget' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Title) {
            throw "invalid value for 'Title', 'Title' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "moduleKey" = ${ModuleKey}
            "title" = ${Title}
            "uri" = ${Uri}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AvailableDashboardGadget<PSCustomObject>

.DESCRIPTION

Convert from JSON to AvailableDashboardGadget<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AvailableDashboardGadget<PSCustomObject>
#>
function ConvertFrom-JsonToAvailableDashboardGadget {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => AvailableDashboardGadget' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AvailableDashboardGadget
        $AllProperties = ("moduleKey", "title", "uri")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'title' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) {
            throw "Error! JSON cannot be serialized due to the required property 'title' missing."
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "moduleKey"))) { #optional property not found
            $ModuleKey = $null
        } else {
            $ModuleKey = $JsonParameters.PSobject.Properties["moduleKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uri"))) { #optional property not found
            $Uri = $null
        } else {
            $Uri = $JsonParameters.PSobject.Properties["uri"].value
        }

        $PSO = [PSCustomObject]@{
            "moduleKey" = ${ModuleKey}
            "title" = ${Title}
            "uri" = ${Uri}
        }

        return $PSO
    }

}

