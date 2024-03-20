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

.PARAMETER Expand
Use [expand](em>#expansion) to include additional information about issues in the response. Note that, unlike the majority of instances where `expand` is specified, `expand` is defined as a list of values. The expand options are:   *  `renderedFields` Returns field values rendered in HTML format.  *  `names` Returns the display name of each field.  *  `schema` Returns the schema describing a field type.  *  `transitions` Returns all possible transitions for the issue.  *  `operations` Returns all possible operations for the issue.  *  `editmeta` Returns information about how each field can be edited.  *  `changelog` Returns a list of recent updates to an issue, sorted by date, starting from the most recent.  *  `versionedRepresentations` Instead of `fields`, returns `versionedRepresentations` a JSON array containing each version of a field's value, with the highest numbered item representing the most recent version.
.PARAMETER Fields
A list of fields to return for each issue, use it to retrieve a subset of fields. This parameter accepts a comma-separated list. Expand options include:   *  `*all` Returns all fields.  *  `*navigable` Returns navigable fields.  *  Any issue field, prefixed with a minus to exclude.  The default is `*navigable`.  Examples:   *  `summary,comment` Returns the summary and comments fields only.  *  `-description` Returns all navigable (default) fields except description.  *  `*all,-comment` Returns all fields except comments.  Multiple `fields` parameters can be included in a request.  Note: All navigable fields are returned by default. This differs from [GET issue](#api-rest-api-3-issue-issueIdOrKey-get) where the default is all fields.
.PARAMETER FieldsByKeys
Reference fields by their key (rather than ID). The default is `false`.
.PARAMETER Jql
A [JQL](https://confluence.atlassian.com/x/egORLQ) expression.
.PARAMETER MaxResults
The maximum number of items to return per page.
.PARAMETER Properties
A list of up to 5 issue properties to include in the results. This parameter accepts a comma-separated list.
.PARAMETER StartAt
The index of the first item to return in the page of results (page offset). The base index is `0`.
.PARAMETER ValidateQuery
Determines how to validate the JQL query and treat the validation results. Supported values:   *  `strict` Returns a 400 response code if any errors are found, along with a list of all errors (and warnings).  *  `warn` Returns all errors as warnings.  *  `none` No validation is performed.  *  `true` *Deprecated* A legacy synonym for `strict`.  *  `false` *Deprecated* A legacy synonym for `warn`.  The default is `strict`.  Note: If the JQL is not correctly formed a 400 response code is returned, regardless of the `validateQuery` value.
.OUTPUTS

SearchRequestBean<PSCustomObject>
#>

function Initialize-SearchRequestBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Expand},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Fields},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${FieldsByKeys},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Jql},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxResults} = 50,
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Properties},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${StartAt},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("strict", "warn", "none", "true", "false")]
        [String]
        ${ValidateQuery}
    )

    Process {
        'Creating PSCustomObject: PSJira => SearchRequestBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "expand" = ${Expand}
            "fields" = ${Fields}
            "fieldsByKeys" = ${FieldsByKeys}
            "jql" = ${Jql}
            "maxResults" = ${MaxResults}
            "properties" = ${Properties}
            "startAt" = ${StartAt}
            "validateQuery" = ${ValidateQuery}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SearchRequestBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to SearchRequestBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SearchRequestBean<PSCustomObject>
#>
function ConvertFrom-JsonToSearchRequestBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => SearchRequestBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SearchRequestBean
        $AllProperties = ("expand", "fields", "fieldsByKeys", "jql", "maxResults", "properties", "startAt", "validateQuery")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expand"))) { #optional property not found
            $Expand = $null
        } else {
            $Expand = $JsonParameters.PSobject.Properties["expand"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fieldsByKeys"))) { #optional property not found
            $FieldsByKeys = $null
        } else {
            $FieldsByKeys = $JsonParameters.PSobject.Properties["fieldsByKeys"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jql"))) { #optional property not found
            $Jql = $null
        } else {
            $Jql = $JsonParameters.PSobject.Properties["jql"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxResults"))) { #optional property not found
            $MaxResults = $null
        } else {
            $MaxResults = $JsonParameters.PSobject.Properties["maxResults"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startAt"))) { #optional property not found
            $StartAt = $null
        } else {
            $StartAt = $JsonParameters.PSobject.Properties["startAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "validateQuery"))) { #optional property not found
            $ValidateQuery = $null
        } else {
            $ValidateQuery = $JsonParameters.PSobject.Properties["validateQuery"].value
        }

        $PSO = [PSCustomObject]@{
            "expand" = ${Expand}
            "fields" = ${Fields}
            "fieldsByKeys" = ${FieldsByKeys}
            "jql" = ${Jql}
            "maxResults" = ${MaxResults}
            "properties" = ${Properties}
            "startAt" = ${StartAt}
            "validateQuery" = ${ValidateQuery}
        }

        return $PSO
    }

}
