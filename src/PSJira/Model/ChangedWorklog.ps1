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

Details of a changed worklog.

.PARAMETER Properties
Details of properties associated with the change.
.PARAMETER UpdatedTime
The datetime of the change.
.PARAMETER WorklogId
The ID of the worklog.
.OUTPUTS

ChangedWorklog<PSCustomObject>
#>

function Initialize-ChangedWorklog {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Properties},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${UpdatedTime},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${WorklogId}
    )

    Process {
        'Creating PSCustomObject: PSJira => ChangedWorklog' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "properties" = ${Properties}
            "updatedTime" = ${UpdatedTime}
            "worklogId" = ${WorklogId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ChangedWorklog<PSCustomObject>

.DESCRIPTION

Convert from JSON to ChangedWorklog<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ChangedWorklog<PSCustomObject>
#>
function ConvertFrom-JsonToChangedWorklog {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ChangedWorklog' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ChangedWorklog
        $AllProperties = ("properties", "updatedTime", "worklogId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedTime"))) { #optional property not found
            $UpdatedTime = $null
        } else {
            $UpdatedTime = $JsonParameters.PSobject.Properties["updatedTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "worklogId"))) { #optional property not found
            $WorklogId = $null
        } else {
            $WorklogId = $JsonParameters.PSobject.Properties["worklogId"].value
        }

        $PSO = [PSCustomObject]@{
            "properties" = ${Properties}
            "updatedTime" = ${UpdatedTime}
            "worklogId" = ${WorklogId}
        }

        return $PSO
    }

}

