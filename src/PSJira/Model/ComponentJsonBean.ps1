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

.PARAMETER Ari
No description available.
.PARAMETER Description
No description available.
.PARAMETER Id
No description available.
.PARAMETER Metadata
No description available.
.PARAMETER Name
No description available.
.PARAMETER Self
No description available.
.OUTPUTS

ComponentJsonBean<PSCustomObject>
#>

function Initialize-ComponentJsonBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ari},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Metadata},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self}
    )

    Process {
        'Creating PSCustomObject: PSJira => ComponentJsonBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ari" = ${Ari}
            "description" = ${Description}
            "id" = ${Id}
            "metadata" = ${Metadata}
            "name" = ${Name}
            "self" = ${Self}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ComponentJsonBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to ComponentJsonBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ComponentJsonBean<PSCustomObject>
#>
function ConvertFrom-JsonToComponentJsonBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ComponentJsonBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $ComponentJsonBeanAdditionalProperties = @{}

        # check if Json contains properties not defined in ComponentJsonBean
        $AllProperties = ("ari", "description", "id", "metadata", "name", "self")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $ComponentJsonBeanAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ari"))) { #optional property not found
            $Ari = $null
        } else {
            $Ari = $JsonParameters.PSobject.Properties["ari"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "metadata"))) { #optional property not found
            $Metadata = $null
        } else {
            $Metadata = $JsonParameters.PSobject.Properties["metadata"].value
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
            "ari" = ${Ari}
            "description" = ${Description}
            "id" = ${Id}
            "metadata" = ${Metadata}
            "name" = ${Name}
            "self" = ${Self}
            "AdditionalProperties" = $ComponentJsonBeanAdditionalProperties
        }

        return $PSO
    }

}
