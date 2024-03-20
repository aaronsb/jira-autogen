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

.PARAMETER Entries
No description available.
.PARAMETER MoreAvailable
No description available.
.PARAMETER TotalEntryCount
No description available.
.PARAMETER TotalNumberOfEntriesAvailable
No description available.
.OUTPUTS

AttachmentArchive<PSCustomObject>
#>

function Initialize-AttachmentArchive {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Entries},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${MoreAvailable},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalEntryCount},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalNumberOfEntriesAvailable}
    )

    Process {
        'Creating PSCustomObject: PSJira => AttachmentArchive' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "entries" = ${Entries}
            "moreAvailable" = ${MoreAvailable}
            "totalEntryCount" = ${TotalEntryCount}
            "totalNumberOfEntriesAvailable" = ${TotalNumberOfEntriesAvailable}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttachmentArchive<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttachmentArchive<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttachmentArchive<PSCustomObject>
#>
function ConvertFrom-JsonToAttachmentArchive {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => AttachmentArchive' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AttachmentArchive
        $AllProperties = ("entries", "moreAvailable", "totalEntryCount", "totalNumberOfEntriesAvailable")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entries"))) { #optional property not found
            $Entries = $null
        } else {
            $Entries = $JsonParameters.PSobject.Properties["entries"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "moreAvailable"))) { #optional property not found
            $MoreAvailable = $null
        } else {
            $MoreAvailable = $JsonParameters.PSobject.Properties["moreAvailable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalEntryCount"))) { #optional property not found
            $TotalEntryCount = $null
        } else {
            $TotalEntryCount = $JsonParameters.PSobject.Properties["totalEntryCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalNumberOfEntriesAvailable"))) { #optional property not found
            $TotalNumberOfEntriesAvailable = $null
        } else {
            $TotalNumberOfEntriesAvailable = $JsonParameters.PSobject.Properties["totalNumberOfEntriesAvailable"].value
        }

        $PSO = [PSCustomObject]@{
            "entries" = ${Entries}
            "moreAvailable" = ${MoreAvailable}
            "totalEntryCount" = ${TotalEntryCount}
            "totalNumberOfEntriesAvailable" = ${TotalNumberOfEntriesAvailable}
        }

        return $PSO
    }

}

