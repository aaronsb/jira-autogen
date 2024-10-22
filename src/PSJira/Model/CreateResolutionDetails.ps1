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

Details of an issue resolution.

.PARAMETER Description
The description of the resolution.
.PARAMETER Name
The name of the resolution. Must be unique (case-insensitive).
.OUTPUTS

CreateResolutionDetails<PSCustomObject>
#>

function Initialize-CreateResolutionDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSJira => CreateResolutionDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Description -and $Description.length -gt 255) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 255."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 60) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 60."
        }


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateResolutionDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateResolutionDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateResolutionDetails<PSCustomObject>
#>
function ConvertFrom-JsonToCreateResolutionDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CreateResolutionDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $CreateResolutionDetailsAdditionalProperties = @{}

        # check if Json contains properties not defined in CreateResolutionDetails
        $AllProperties = ("description", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $CreateResolutionDetailsAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "name" = ${Name}
            "AdditionalProperties" = $CreateResolutionDetailsAdditionalProperties
        }

        return $PSO
    }

}

