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

List of all permission schemes.

.PARAMETER PermissionSchemes
Permission schemes list.
.OUTPUTS

PermissionSchemes<PSCustomObject>
#>

function Initialize-PermissionSchemes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PermissionSchemes}
    )

    Process {
        'Creating PSCustomObject: PSJira => PermissionSchemes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "permissionSchemes" = ${PermissionSchemes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PermissionSchemes<PSCustomObject>

.DESCRIPTION

Convert from JSON to PermissionSchemes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PermissionSchemes<PSCustomObject>
#>
function ConvertFrom-JsonToPermissionSchemes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => PermissionSchemes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PermissionSchemes
        $AllProperties = ("permissionSchemes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "permissionSchemes"))) { #optional property not found
            $PermissionSchemes = $null
        } else {
            $PermissionSchemes = $JsonParameters.PSobject.Properties["permissionSchemes"].value
        }

        $PSO = [PSCustomObject]@{
            "permissionSchemes" = ${PermissionSchemes}
        }

        return $PSO
    }

}

