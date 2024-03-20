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

.PARAMETER Parameter
The value corresponding to the specified member type.
.PARAMETER Type
The issue security level member type, e.g `reporter`, `group`, `user`.
.OUTPUTS

SecuritySchemeLevelMemberBean<PSCustomObject>
#>

function Initialize-SecuritySchemeLevelMemberBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Parameter},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSJira => SecuritySchemeLevelMemberBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "parameter" = ${Parameter}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SecuritySchemeLevelMemberBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to SecuritySchemeLevelMemberBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SecuritySchemeLevelMemberBean<PSCustomObject>
#>
function ConvertFrom-JsonToSecuritySchemeLevelMemberBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => SecuritySchemeLevelMemberBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SecuritySchemeLevelMemberBean
        $AllProperties = ("parameter", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parameter"))) { #optional property not found
            $Parameter = $null
        } else {
            $Parameter = $JsonParameters.PSobject.Properties["parameter"].value
        }

        $PSO = [PSCustomObject]@{
            "parameter" = ${Parameter}
            "type" = ${Type}
        }

        return $PSO
    }

}

