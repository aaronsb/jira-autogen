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

.PARAMETER Group
The name of the group to add. This parameter cannot be used with the `groupId` parameter. As a group's name can change, use of `groupId` is recommended.
.PARAMETER GroupId
The ID of the group to add. This parameter cannot be used with the `group` parameter.
.PARAMETER User
The user account ID of the user to add.
.OUTPUTS

ActorsMap<PSCustomObject>
#>

function Initialize-ActorsMap {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Group},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${GroupId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${User}
    )

    Process {
        'Creating PSCustomObject: PSJira => ActorsMap' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "group" = ${Group}
            "groupId" = ${GroupId}
            "user" = ${User}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ActorsMap<PSCustomObject>

.DESCRIPTION

Convert from JSON to ActorsMap<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ActorsMap<PSCustomObject>
#>
function ConvertFrom-JsonToActorsMap {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ActorsMap' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ActorsMap
        $AllProperties = ("group", "groupId", "user")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "group"))) { #optional property not found
            $Group = $null
        } else {
            $Group = $JsonParameters.PSobject.Properties["group"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groupId"))) { #optional property not found
            $GroupId = $null
        } else {
            $GroupId = $JsonParameters.PSobject.Properties["groupId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "user"))) { #optional property not found
            $User = $null
        } else {
            $User = $JsonParameters.PSobject.Properties["user"].value
        }

        $PSO = [PSCustomObject]@{
            "group" = ${Group}
            "groupId" = ${GroupId}
            "user" = ${User}
        }

        return $PSO
    }

}

