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

Details about a created issue or subtask.

.PARAMETER Id
The ID of the created issue or subtask.
.PARAMETER Key
The key of the created issue or subtask.
.PARAMETER Self
The URL of the created issue or subtask.
.PARAMETER Transition
No description available.
.PARAMETER Watchers
No description available.
.OUTPUTS

CreatedIssue<PSCustomObject>
#>

function Initialize-CreatedIssue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Transition},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Watchers}
    )

    Process {
        'Creating PSCustomObject: PSJira => CreatedIssue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "key" = ${Key}
            "self" = ${Self}
            "transition" = ${Transition}
            "watchers" = ${Watchers}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreatedIssue<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreatedIssue<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreatedIssue<PSCustomObject>
#>
function ConvertFrom-JsonToCreatedIssue {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CreatedIssue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreatedIssue
        $AllProperties = ("id", "key", "self", "transition", "watchers")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "transition"))) { #optional property not found
            $Transition = $null
        } else {
            $Transition = $JsonParameters.PSobject.Properties["transition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "watchers"))) { #optional property not found
            $Watchers = $null
        } else {
            $Watchers = $JsonParameters.PSobject.Properties["watchers"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "key" = ${Key}
            "self" = ${Self}
            "transition" = ${Transition}
            "watchers" = ${Watchers}
        }

        return $PSO
    }

}

