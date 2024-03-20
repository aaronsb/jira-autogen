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

List of permission grants.

.PARAMETER Expand
Expand options that include additional permission grant details in the response.
.PARAMETER Permissions
Permission grants list.
.OUTPUTS

PermissionGrants<PSCustomObject>
#>

function Initialize-PermissionGrants {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Expand},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Permissions}
    )

    Process {
        'Creating PSCustomObject: PSJira => PermissionGrants' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "expand" = ${Expand}
            "permissions" = ${Permissions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PermissionGrants<PSCustomObject>

.DESCRIPTION

Convert from JSON to PermissionGrants<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PermissionGrants<PSCustomObject>
#>
function ConvertFrom-JsonToPermissionGrants {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => PermissionGrants' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PermissionGrants
        $AllProperties = ("expand", "permissions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expand"))) { #optional property not found
            $Expand = $null
        } else {
            $Expand = $JsonParameters.PSobject.Properties["expand"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "permissions"))) { #optional property not found
            $Permissions = $null
        } else {
            $Permissions = $JsonParameters.PSobject.Properties["permissions"].value
        }

        $PSO = [PSCustomObject]@{
            "expand" = ${Expand}
            "permissions" = ${Permissions}
        }

        return $PSO
    }

}

