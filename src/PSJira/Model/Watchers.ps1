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

The details of watchers on an issue.

.PARAMETER IsWatching
Whether the calling user is watching this issue.
.PARAMETER Self
The URL of these issue watcher details.
.PARAMETER WatchCount
The number of users watching this issue.
.PARAMETER Watchers
Details of the users watching this issue.
.OUTPUTS

Watchers<PSCustomObject>
#>

function Initialize-Watchers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsWatching},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${WatchCount},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Watchers}
    )

    Process {
        'Creating PSCustomObject: PSJira => Watchers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "isWatching" = ${IsWatching}
            "self" = ${Self}
            "watchCount" = ${WatchCount}
            "watchers" = ${Watchers}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Watchers<PSCustomObject>

.DESCRIPTION

Convert from JSON to Watchers<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Watchers<PSCustomObject>
#>
function ConvertFrom-JsonToWatchers {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => Watchers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Watchers
        $AllProperties = ("isWatching", "self", "watchCount", "watchers")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isWatching"))) { #optional property not found
            $IsWatching = $null
        } else {
            $IsWatching = $JsonParameters.PSobject.Properties["isWatching"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "watchCount"))) { #optional property not found
            $WatchCount = $null
        } else {
            $WatchCount = $JsonParameters.PSobject.Properties["watchCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "watchers"))) { #optional property not found
            $Watchers = $null
        } else {
            $Watchers = $JsonParameters.PSobject.Properties["watchers"].value
        }

        $PSO = [PSCustomObject]@{
            "isWatching" = ${IsWatching}
            "self" = ${Self}
            "watchCount" = ${WatchCount}
            "watchers" = ${Watchers}
        }

        return $PSO
    }

}

