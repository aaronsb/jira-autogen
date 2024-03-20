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

.PARAMETER CategorisedActors
The actors to add to the project role.  Add groups using:   *  `atlassian-group-role-actor` and a list of group names.  *  `atlassian-group-role-actor-id` and a list of group IDs.  As a group's name can change, use of `atlassian-group-role-actor-id` is recommended. For example, `""atlassian-group-role-actor-id"":[""eef79f81-0b89-4fca-a736-4be531a10869"",""77f6ab39-e755-4570-a6ae-2d7a8df0bcb8""]`.  Add users using `atlassian-user-role-actor` and a list of account IDs. For example, `""atlassian-user-role-actor"":[""12345678-9abc-def1-2345-6789abcdef12"", ""abcdef12-3456-789a-bcde-f123456789ab""]`.
.PARAMETER Id
The ID of the project role. Use [Get all project roles](#api-rest-api-3-role-get) to get a list of project role IDs.
.OUTPUTS

ProjectRoleActorsUpdateBean<PSCustomObject>
#>

function Initialize-ProjectRoleActorsUpdateBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${CategorisedActors},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: PSJira => ProjectRoleActorsUpdateBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "categorisedActors" = ${CategorisedActors}
            "id" = ${Id}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProjectRoleActorsUpdateBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProjectRoleActorsUpdateBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProjectRoleActorsUpdateBean<PSCustomObject>
#>
function ConvertFrom-JsonToProjectRoleActorsUpdateBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ProjectRoleActorsUpdateBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProjectRoleActorsUpdateBean
        $AllProperties = ("categorisedActors", "id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "categorisedActors"))) { #optional property not found
            $CategorisedActors = $null
        } else {
            $CategorisedActors = $JsonParameters.PSobject.Properties["categorisedActors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        $PSO = [PSCustomObject]@{
            "categorisedActors" = ${CategorisedActors}
            "id" = ${Id}
        }

        return $PSO
    }

}

