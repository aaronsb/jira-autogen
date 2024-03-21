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

The data classification.

.PARAMETER Color
The color of the data classification object.
.PARAMETER Description
The description of the data classification object.
.PARAMETER Guideline
The guideline of the data classification object.
.PARAMETER Id
The ID of the data classification object.
.PARAMETER Name
The name of the data classification object.
.PARAMETER Rank
The rank of the data classification object.
.PARAMETER Status
The status of the data classification object.
.OUTPUTS

DataClassificationTagBean<PSCustomObject>
#>

function Initialize-DataClassificationTagBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Color},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Guideline},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Rank},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSJira => DataClassificationTagBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "color" = ${Color}
            "description" = ${Description}
            "guideline" = ${Guideline}
            "id" = ${Id}
            "name" = ${Name}
            "rank" = ${Rank}
            "status" = ${Status}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DataClassificationTagBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to DataClassificationTagBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DataClassificationTagBean<PSCustomObject>
#>
function ConvertFrom-JsonToDataClassificationTagBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => DataClassificationTagBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DataClassificationTagBean
        $AllProperties = ("color", "description", "guideline", "id", "name", "rank", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "color"))) { #optional property not found
            $Color = $null
        } else {
            $Color = $JsonParameters.PSobject.Properties["color"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "guideline"))) { #optional property not found
            $Guideline = $null
        } else {
            $Guideline = $JsonParameters.PSobject.Properties["guideline"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rank"))) { #optional property not found
            $Rank = $null
        } else {
            $Rank = $JsonParameters.PSobject.Properties["rank"].value
        }

        $PSO = [PSCustomObject]@{
            "color" = ${Color}
            "description" = ${Description}
            "guideline" = ${Guideline}
            "id" = ${Id}
            "name" = ${Name}
            "rank" = ${Rank}
            "status" = ${Status}
        }

        return $PSO
    }

}
