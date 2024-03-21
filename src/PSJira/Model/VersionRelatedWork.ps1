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

Associated related work to a version

.PARAMETER Category
The category of the related work
.PARAMETER IssueId
The title of the related work
.PARAMETER RelatedWorkId
The id of the related work. For the native release note related work item, this will be null, and Rest API does not support updating it.
.PARAMETER Title
The title of the related work
.PARAMETER Url
The URL of the related work
.OUTPUTS

VersionRelatedWork<PSCustomObject>
#>

function Initialize-VersionRelatedWork {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Category},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${IssueId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RelatedWorkId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url}
    )

    Process {
        'Creating PSCustomObject: PSJira => VersionRelatedWork' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Category) {
            throw "invalid value for 'Category', 'Category' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "category" = ${Category}
            "issueId" = ${IssueId}
            "relatedWorkId" = ${RelatedWorkId}
            "title" = ${Title}
            "url" = ${Url}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VersionRelatedWork<PSCustomObject>

.DESCRIPTION

Convert from JSON to VersionRelatedWork<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VersionRelatedWork<PSCustomObject>
#>
function ConvertFrom-JsonToVersionRelatedWork {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => VersionRelatedWork' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in VersionRelatedWork
        $AllProperties = ("category", "issueId", "relatedWorkId", "title", "url")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'category' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "category"))) {
            throw "Error! JSON cannot be serialized due to the required property 'category' missing."
        } else {
            $Category = $JsonParameters.PSobject.Properties["category"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueId"))) { #optional property not found
            $IssueId = $null
        } else {
            $IssueId = $JsonParameters.PSobject.Properties["issueId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "relatedWorkId"))) { #optional property not found
            $RelatedWorkId = $null
        } else {
            $RelatedWorkId = $JsonParameters.PSobject.Properties["relatedWorkId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) { #optional property not found
            $Title = $null
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        $PSO = [PSCustomObject]@{
            "category" = ${Category}
            "issueId" = ${IssueId}
            "relatedWorkId" = ${RelatedWorkId}
            "title" = ${Title}
            "url" = ${Url}
        }

        return $PSO
    }

}
