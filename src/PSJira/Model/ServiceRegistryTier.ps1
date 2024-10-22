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
tier description
.PARAMETER Id
tier ID
.PARAMETER Level
tier level
.PARAMETER Name
tier name
.PARAMETER NameKey
name key of the tier
.OUTPUTS

ServiceRegistryTier<PSCustomObject>
#>

function Initialize-ServiceRegistryTier {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Level},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NameKey}
    )

    Process {
        'Creating PSCustomObject: PSJira => ServiceRegistryTier' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "id" = ${Id}
            "level" = ${Level}
            "name" = ${Name}
            "nameKey" = ${NameKey}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ServiceRegistryTier<PSCustomObject>

.DESCRIPTION

Convert from JSON to ServiceRegistryTier<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ServiceRegistryTier<PSCustomObject>
#>
function ConvertFrom-JsonToServiceRegistryTier {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ServiceRegistryTier' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ServiceRegistryTier
        $AllProperties = ("description", "id", "level", "name", "nameKey")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "level"))) { #optional property not found
            $Level = $null
        } else {
            $Level = $JsonParameters.PSobject.Properties["level"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nameKey"))) { #optional property not found
            $NameKey = $null
        } else {
            $NameKey = $JsonParameters.PSobject.Properties["nameKey"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "id" = ${Id}
            "level" = ${Level}
            "name" = ${Name}
            "nameKey" = ${NameKey}
        }

        return $PSO
    }

}

