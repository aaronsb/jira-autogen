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

The project the item has scope in.

.PARAMETER AvatarUrls
No description available.
.PARAMETER Id
The ID of the project.
.PARAMETER Key
The key of the project.
.PARAMETER Name
The name of the project.
.PARAMETER ProjectCategory
No description available.
.PARAMETER ProjectTypeKey
The [project type](https://confluence.atlassian.com/x/GwiiLQ#Jiraapplicationsoverview-Productfeaturesandprojecttypes) of the project.
.PARAMETER Self
The URL of the project details.
.PARAMETER Simplified
Whether or not the project is simplified.
.OUTPUTS

ScopeProject<PSCustomObject>
#>

function Initialize-ScopeProject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AvatarUrls},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProjectCategory},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("software", "service_desk", "business")]
        [String]
        ${ProjectTypeKey},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Simplified}
    )

    Process {
        'Creating PSCustomObject: PSJira => ScopeProject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "avatarUrls" = ${AvatarUrls}
            "id" = ${Id}
            "key" = ${Key}
            "name" = ${Name}
            "projectCategory" = ${ProjectCategory}
            "projectTypeKey" = ${ProjectTypeKey}
            "self" = ${Self}
            "simplified" = ${Simplified}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ScopeProject<PSCustomObject>

.DESCRIPTION

Convert from JSON to ScopeProject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ScopeProject<PSCustomObject>
#>
function ConvertFrom-JsonToScopeProject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ScopeProject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ScopeProject
        $AllProperties = ("avatarUrls", "id", "key", "name", "projectCategory", "projectTypeKey", "self", "simplified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "avatarUrls"))) { #optional property not found
            $AvatarUrls = $null
        } else {
            $AvatarUrls = $JsonParameters.PSobject.Properties["avatarUrls"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectCategory"))) { #optional property not found
            $ProjectCategory = $null
        } else {
            $ProjectCategory = $JsonParameters.PSobject.Properties["projectCategory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectTypeKey"))) { #optional property not found
            $ProjectTypeKey = $null
        } else {
            $ProjectTypeKey = $JsonParameters.PSobject.Properties["projectTypeKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "simplified"))) { #optional property not found
            $Simplified = $null
        } else {
            $Simplified = $JsonParameters.PSobject.Properties["simplified"].value
        }

        $PSO = [PSCustomObject]@{
            "avatarUrls" = ${AvatarUrls}
            "id" = ${Id}
            "key" = ${Key}
            "name" = ${Name}
            "projectCategory" = ${ProjectCategory}
            "projectTypeKey" = ${ProjectTypeKey}
            "self" = ${Self}
            "simplified" = ${Simplified}
        }

        return $PSO
    }

}
