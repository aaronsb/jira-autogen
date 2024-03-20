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

The list of users found in a search, including header text (Showing X of Y matching users) and total of matched users.

.PARAMETER Header
Header text indicating the number of users in the response and the total number of users found in the search.
.PARAMETER Total
The total number of users found in the search.
.PARAMETER Users
No description available.
.OUTPUTS

FoundUsers<PSCustomObject>
#>

function Initialize-FoundUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Header},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Total},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Users}
    )

    Process {
        'Creating PSCustomObject: PSJira => FoundUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "header" = ${Header}
            "total" = ${Total}
            "users" = ${Users}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FoundUsers<PSCustomObject>

.DESCRIPTION

Convert from JSON to FoundUsers<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FoundUsers<PSCustomObject>
#>
function ConvertFrom-JsonToFoundUsers {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => FoundUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FoundUsers
        $AllProperties = ("header", "total", "users")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "header"))) { #optional property not found
            $Header = $null
        } else {
            $Header = $JsonParameters.PSobject.Properties["header"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total"))) { #optional property not found
            $Total = $null
        } else {
            $Total = $JsonParameters.PSobject.Properties["total"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "users"))) { #optional property not found
            $Users = $null
        } else {
            $Users = $JsonParameters.PSobject.Properties["users"].value
        }

        $PSO = [PSCustomObject]@{
            "header" = ${Header}
            "total" = ${Total}
            "users" = ${Users}
        }

        return $PSO
    }

}

