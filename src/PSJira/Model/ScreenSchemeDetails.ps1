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

Details of a screen scheme.

.PARAMETER Description
The description of the screen scheme. The maximum length is 255 characters.
.PARAMETER Name
The name of the screen scheme. The name must be unique. The maximum length is 255 characters.
.PARAMETER Screens
The IDs of the screens for the screen types of the screen scheme. Only screens used in classic projects are accepted.
.OUTPUTS

ScreenSchemeDetails<PSCustomObject>
#>

function Initialize-ScreenSchemeDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Screens}
    )

    Process {
        'Creating PSCustomObject: PSJira => ScreenSchemeDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Screens) {
            throw "invalid value for 'Screens', 'Screens' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "name" = ${Name}
            "screens" = ${Screens}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ScreenSchemeDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to ScreenSchemeDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ScreenSchemeDetails<PSCustomObject>
#>
function ConvertFrom-JsonToScreenSchemeDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ScreenSchemeDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ScreenSchemeDetails
        $AllProperties = ("description", "name", "screens")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "screens"))) {
            throw "Error! JSON cannot be serialized due to the required property 'screens' missing."
        } else {
            $Screens = $JsonParameters.PSobject.Properties["screens"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "name" = ${Name}
            "screens" = ${Screens}
        }

        return $PSO
    }

}

