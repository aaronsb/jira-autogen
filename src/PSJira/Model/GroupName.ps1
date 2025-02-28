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

Details about a group.

.PARAMETER GroupId
The ID of the group, which uniquely identifies the group across all Atlassian products. For example, *952d12c3-5b5b-4d04-bb32-44d383afc4b2*.
.PARAMETER Name
The name of group.
.PARAMETER Self
The URL for these group details.
.OUTPUTS

GroupName<PSCustomObject>
#>

function Initialize-GroupName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GroupId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self}
    )

    Process {
        'Creating PSCustomObject: PSJira => GroupName' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "groupId" = ${GroupId}
            "name" = ${Name}
            "self" = ${Self}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GroupName<PSCustomObject>

.DESCRIPTION

Convert from JSON to GroupName<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GroupName<PSCustomObject>
#>
function ConvertFrom-JsonToGroupName {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => GroupName' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroupName
        $AllProperties = ("groupId", "name", "self")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groupId"))) { #optional property not found
            $GroupId = $null
        } else {
            $GroupId = $JsonParameters.PSobject.Properties["groupId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        $PSO = [PSCustomObject]@{
            "groupId" = ${GroupId}
            "name" = ${Name}
            "self" = ${Self}
        }

        return $PSO
    }

}

