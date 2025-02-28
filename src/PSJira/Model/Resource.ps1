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
No description available.
.PARAMETER File
No description available.
.PARAMETER Filename
No description available.
.PARAMETER InputStream
No description available.
.PARAMETER Open
No description available.
.PARAMETER Readable
No description available.
.PARAMETER Uri
No description available.
.PARAMETER Url
No description available.
.OUTPUTS

Resource<PSCustomObject>
#>

function Initialize-Resource {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${File},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Filename},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InputStream},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Open},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Readable},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uri},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url}
    )

    Process {
        'Creating PSCustomObject: PSJira => Resource' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "file" = ${File}
            "filename" = ${Filename}
            "inputStream" = ${InputStream}
            "open" = ${Open}
            "readable" = ${Readable}
            "uri" = ${Uri}
            "url" = ${Url}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Resource<PSCustomObject>

.DESCRIPTION

Convert from JSON to Resource<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Resource<PSCustomObject>
#>
function ConvertFrom-JsonToResource {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => Resource' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Resource
        $AllProperties = ("description", "file", "filename", "inputStream", "open", "readable", "uri", "url")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "file"))) { #optional property not found
            $File = $null
        } else {
            $File = $JsonParameters.PSobject.Properties["file"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filename"))) { #optional property not found
            $Filename = $null
        } else {
            $Filename = $JsonParameters.PSobject.Properties["filename"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inputStream"))) { #optional property not found
            $InputStream = $null
        } else {
            $InputStream = $JsonParameters.PSobject.Properties["inputStream"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "open"))) { #optional property not found
            $Open = $null
        } else {
            $Open = $JsonParameters.PSobject.Properties["open"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "readable"))) { #optional property not found
            $Readable = $null
        } else {
            $Readable = $JsonParameters.PSobject.Properties["readable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uri"))) { #optional property not found
            $Uri = $null
        } else {
            $Uri = $JsonParameters.PSobject.Properties["uri"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "file" = ${File}
            "filename" = ${Filename}
            "inputStream" = ${InputStream}
            "open" = ${Open}
            "readable" = ${Readable}
            "uri" = ${Uri}
            "url" = ${Url}
        }

        return $PSO
    }

}

