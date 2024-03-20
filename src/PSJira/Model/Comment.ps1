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

A comment.

.PARAMETER Author
No description available.
.PARAMETER Body
The comment text in [Atlassian Document Format](https://developer.atlassian.com/cloud/jira/platform/apis/document/structure/).
.PARAMETER Created
The date and time at which the comment was created.
.PARAMETER Id
The ID of the comment.
.PARAMETER JsdAuthorCanSeeRequest
Whether the comment was added from an email sent by a person who is not part of the issue. See [Allow external emails to be added as comments on issues](https://support.atlassian.com/jira-service-management-cloud/docs/allow-external-emails-to-be-added-as-comments-on-issues/)for information on setting up this feature.
.PARAMETER JsdPublic
Whether the comment is visible in Jira Service Desk. Defaults to true when comments are created in the Jira Cloud Platform. This includes when the site doesn't use Jira Service Desk or the project isn't a Jira Service Desk project and, therefore, there is no Jira Service Desk for the issue to be visible on. To create a comment with its visibility in Jira Service Desk set to false, use the Jira Service Desk REST API [Create request comment](https://developer.atlassian.com/cloud/jira/service-desk/rest/#api-rest-servicedeskapi-request-issueIdOrKey-comment-post) operation.
.PARAMETER Properties
A list of comment properties. Optional on create and update.
.PARAMETER RenderedBody
The rendered version of the comment.
.PARAMETER Self
The URL of the comment.
.PARAMETER UpdateAuthor
No description available.
.PARAMETER Updated
The date and time at which the comment was updated last.
.PARAMETER Visibility
The group or role to which this comment is visible. Optional on create and update.
.OUTPUTS

Comment<PSCustomObject>
#>

function Initialize-Comment {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Author},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Body},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${JsdAuthorCanSeeRequest},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${JsdPublic},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Properties},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RenderedBody},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UpdateAuthor},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Updated},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Visibility}
    )

    Process {
        'Creating PSCustomObject: PSJira => Comment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "author" = ${Author}
            "body" = ${Body}
            "created" = ${Created}
            "id" = ${Id}
            "jsdAuthorCanSeeRequest" = ${JsdAuthorCanSeeRequest}
            "jsdPublic" = ${JsdPublic}
            "properties" = ${Properties}
            "renderedBody" = ${RenderedBody}
            "self" = ${Self}
            "updateAuthor" = ${UpdateAuthor}
            "updated" = ${Updated}
            "visibility" = ${Visibility}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Comment<PSCustomObject>

.DESCRIPTION

Convert from JSON to Comment<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Comment<PSCustomObject>
#>
function ConvertFrom-JsonToComment {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => Comment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $CommentAdditionalProperties = @{}

        # check if Json contains properties not defined in Comment
        $AllProperties = ("author", "body", "created", "id", "jsdAuthorCanSeeRequest", "jsdPublic", "properties", "renderedBody", "self", "updateAuthor", "updated", "visibility")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $CommentAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "author"))) { #optional property not found
            $Author = $null
        } else {
            $Author = $JsonParameters.PSobject.Properties["author"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) { #optional property not found
            $Body = $null
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jsdAuthorCanSeeRequest"))) { #optional property not found
            $JsdAuthorCanSeeRequest = $null
        } else {
            $JsdAuthorCanSeeRequest = $JsonParameters.PSobject.Properties["jsdAuthorCanSeeRequest"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jsdPublic"))) { #optional property not found
            $JsdPublic = $null
        } else {
            $JsdPublic = $JsonParameters.PSobject.Properties["jsdPublic"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "renderedBody"))) { #optional property not found
            $RenderedBody = $null
        } else {
            $RenderedBody = $JsonParameters.PSobject.Properties["renderedBody"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updateAuthor"))) { #optional property not found
            $UpdateAuthor = $null
        } else {
            $UpdateAuthor = $JsonParameters.PSobject.Properties["updateAuthor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updated"))) { #optional property not found
            $Updated = $null
        } else {
            $Updated = $JsonParameters.PSobject.Properties["updated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "visibility"))) { #optional property not found
            $Visibility = $null
        } else {
            $Visibility = $JsonParameters.PSobject.Properties["visibility"].value
        }

        $PSO = [PSCustomObject]@{
            "author" = ${Author}
            "body" = ${Body}
            "created" = ${Created}
            "id" = ${Id}
            "jsdAuthorCanSeeRequest" = ${JsdAuthorCanSeeRequest}
            "jsdPublic" = ${JsdPublic}
            "properties" = ${Properties}
            "renderedBody" = ${RenderedBody}
            "self" = ${Self}
            "updateAuthor" = ${UpdateAuthor}
            "updated" = ${Updated}
            "visibility" = ${Visibility}
            "AdditionalProperties" = $CommentAdditionalProperties
        }

        return $PSO
    }

}
