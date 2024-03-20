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

.PARAMETER Description
The description of the issue security scheme level.
.PARAMETER IsDefault
Specifies whether the level is the default level. False by default.
.PARAMETER Members
The list of level members which should be added to the issue security scheme level.
.PARAMETER Name
The name of the issue security scheme level. Must be unique.
.OUTPUTS

SecuritySchemeLevelBean<PSCustomObject>
#>

function Initialize-SecuritySchemeLevelBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsDefault},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Members},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSJira => SecuritySchemeLevelBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Description -and $Description.length -gt 4000) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 4000."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 255) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 255."
        }


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "isDefault" = ${IsDefault}
            "members" = ${Members}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SecuritySchemeLevelBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to SecuritySchemeLevelBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SecuritySchemeLevelBean<PSCustomObject>
#>
function ConvertFrom-JsonToSecuritySchemeLevelBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => SecuritySchemeLevelBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SecuritySchemeLevelBean
        $AllProperties = ("description", "isDefault", "members", "name")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isDefault"))) { #optional property not found
            $IsDefault = $null
        } else {
            $IsDefault = $JsonParameters.PSobject.Properties["isDefault"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "members"))) { #optional property not found
            $Members = $null
        } else {
            $Members = $JsonParameters.PSobject.Properties["members"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "isDefault" = ${IsDefault}
            "members" = ${Members}
            "name" = ${Name}
        }

        return $PSO
    }

}
