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

A paginated list of the users that are members of the group. A maximum of 50 users is returned in the list, to access additional users append `[start-index:end-index]` to the expand request. For example, to access the next 50 users, use`?expand=users[51:100]`.

.PARAMETER EndIndex
The index of the last item returned on the page.
.PARAMETER Items
The list of items.
.PARAMETER MaxResults
The maximum number of results that could be on the page.
.PARAMETER Size
The number of items on the page.
.PARAMETER StartIndex
The index of the first item returned on the page.
.OUTPUTS

GroupUsers<PSCustomObject>
#>

function Initialize-GroupUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EndIndex},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Items},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxResults},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Size},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${StartIndex}
    )

    Process {
        'Creating PSCustomObject: PSJira => GroupUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "end-index" = ${EndIndex}
            "items" = ${Items}
            "max-results" = ${MaxResults}
            "size" = ${Size}
            "start-index" = ${StartIndex}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GroupUsers<PSCustomObject>

.DESCRIPTION

Convert from JSON to GroupUsers<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GroupUsers<PSCustomObject>
#>
function ConvertFrom-JsonToGroupUsers {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => GroupUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroupUsers
        $AllProperties = ("end-index", "items", "max-results", "size", "start-index")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "end-index"))) { #optional property not found
            $EndIndex = $null
        } else {
            $EndIndex = $JsonParameters.PSobject.Properties["end-index"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "items"))) { #optional property not found
            $Items = $null
        } else {
            $Items = $JsonParameters.PSobject.Properties["items"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "max-results"))) { #optional property not found
            $MaxResults = $null
        } else {
            $MaxResults = $JsonParameters.PSobject.Properties["max-results"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "start-index"))) { #optional property not found
            $StartIndex = $null
        } else {
            $StartIndex = $JsonParameters.PSobject.Properties["start-index"].value
        }

        $PSO = [PSCustomObject]@{
            "end-index" = ${EndIndex}
            "items" = ${Items}
            "max-results" = ${MaxResults}
            "size" = ${Size}
            "start-index" = ${StartIndex}
        }

        return $PSO
    }

}

