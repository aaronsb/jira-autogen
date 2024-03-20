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

An issue suggested for use in the issue picker auto-completion.

.PARAMETER Id
The ID of the issue.
.PARAMETER Img
The URL of the issue type's avatar.
.PARAMETER Key
The key of the issue.
.PARAMETER KeyHtml
The key of the issue in HTML format.
.PARAMETER Summary
The phrase containing the query string in HTML format, with the string highlighted with HTML bold tags.
.PARAMETER SummaryText
The phrase containing the query string, as plain text.
.OUTPUTS

SuggestedIssue<PSCustomObject>
#>

function Initialize-SuggestedIssue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Img},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${KeyHtml},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Summary},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SummaryText}
    )

    Process {
        'Creating PSCustomObject: PSJira => SuggestedIssue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "img" = ${Img}
            "key" = ${Key}
            "keyHtml" = ${KeyHtml}
            "summary" = ${Summary}
            "summaryText" = ${SummaryText}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SuggestedIssue<PSCustomObject>

.DESCRIPTION

Convert from JSON to SuggestedIssue<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SuggestedIssue<PSCustomObject>
#>
function ConvertFrom-JsonToSuggestedIssue {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => SuggestedIssue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SuggestedIssue
        $AllProperties = ("id", "img", "key", "keyHtml", "summary", "summaryText")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "img"))) { #optional property not found
            $Img = $null
        } else {
            $Img = $JsonParameters.PSobject.Properties["img"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "keyHtml"))) { #optional property not found
            $KeyHtml = $null
        } else {
            $KeyHtml = $JsonParameters.PSobject.Properties["keyHtml"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "summary"))) { #optional property not found
            $Summary = $null
        } else {
            $Summary = $JsonParameters.PSobject.Properties["summary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "summaryText"))) { #optional property not found
            $SummaryText = $null
        } else {
            $SummaryText = $JsonParameters.PSobject.Properties["summaryText"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "img" = ${Img}
            "key" = ${Key}
            "keyHtml" = ${KeyHtml}
            "summary" = ${Summary}
            "summaryText" = ${SummaryText}
        }

        return $PSO
    }

}
