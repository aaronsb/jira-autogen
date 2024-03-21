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

Metadata for an issue attachment.

.PARAMETER Author
No description available.
.PARAMETER Content
The URL of the attachment.
.PARAMETER Created
The datetime the attachment was created.
.PARAMETER Filename
The name of the attachment file.
.PARAMETER Id
The ID of the attachment.
.PARAMETER MimeType
The MIME type of the attachment.
.PARAMETER Properties
Additional properties of the attachment.
.PARAMETER Self
The URL of the attachment metadata details.
.PARAMETER Size
The size of the attachment.
.PARAMETER Thumbnail
The URL of a thumbnail representing the attachment.
.OUTPUTS

AttachmentMetadata<PSCustomObject>
#>

function Initialize-AttachmentMetadata {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Author},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Content},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Filename},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Id},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MimeType},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Properties},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Size},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Thumbnail}
    )

    Process {
        'Creating PSCustomObject: PSJira => AttachmentMetadata' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "author" = ${Author}
            "content" = ${Content}
            "created" = ${Created}
            "filename" = ${Filename}
            "id" = ${Id}
            "mimeType" = ${MimeType}
            "properties" = ${Properties}
            "self" = ${Self}
            "size" = ${Size}
            "thumbnail" = ${Thumbnail}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttachmentMetadata<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttachmentMetadata<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttachmentMetadata<PSCustomObject>
#>
function ConvertFrom-JsonToAttachmentMetadata {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => AttachmentMetadata' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AttachmentMetadata
        $AllProperties = ("author", "content", "created", "filename", "id", "mimeType", "properties", "self", "size", "thumbnail")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "author"))) { #optional property not found
            $Author = $null
        } else {
            $Author = $JsonParameters.PSobject.Properties["author"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "content"))) { #optional property not found
            $Content = $null
        } else {
            $Content = $JsonParameters.PSobject.Properties["content"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filename"))) { #optional property not found
            $Filename = $null
        } else {
            $Filename = $JsonParameters.PSobject.Properties["filename"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mimeType"))) { #optional property not found
            $MimeType = $null
        } else {
            $MimeType = $JsonParameters.PSobject.Properties["mimeType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "thumbnail"))) { #optional property not found
            $Thumbnail = $null
        } else {
            $Thumbnail = $JsonParameters.PSobject.Properties["thumbnail"].value
        }

        $PSO = [PSCustomObject]@{
            "author" = ${Author}
            "content" = ${Content}
            "created" = ${Created}
            "filename" = ${Filename}
            "id" = ${Id}
            "mimeType" = ${MimeType}
            "properties" = ${Properties}
            "self" = ${Self}
            "size" = ${Size}
            "thumbnail" = ${Thumbnail}
        }

        return $PSO
    }

}
