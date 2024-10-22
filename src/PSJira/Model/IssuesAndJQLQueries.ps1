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

List of issues and JQL queries.

.PARAMETER IssueIds
A list of issue IDs.
.PARAMETER Jqls
A list of JQL queries.
.OUTPUTS

IssuesAndJQLQueries<PSCustomObject>
#>

function Initialize-IssuesAndJQLQueries {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int64[]]
        ${IssueIds},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Jqls}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssuesAndJQLQueries' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $IssueIds) {
            throw "invalid value for 'IssueIds', 'IssueIds' cannot be null."
        }

        if ($null -eq $Jqls) {
            throw "invalid value for 'Jqls', 'Jqls' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "issueIds" = ${IssueIds}
            "jqls" = ${Jqls}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssuesAndJQLQueries<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssuesAndJQLQueries<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssuesAndJQLQueries<PSCustomObject>
#>
function ConvertFrom-JsonToIssuesAndJQLQueries {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssuesAndJQLQueries' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssuesAndJQLQueries
        $AllProperties = ("issueIds", "jqls")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'issueIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'issueIds' missing."
        } else {
            $IssueIds = $JsonParameters.PSobject.Properties["issueIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jqls"))) {
            throw "Error! JSON cannot be serialized due to the required property 'jqls' missing."
        } else {
            $Jqls = $JsonParameters.PSobject.Properties["jqls"].value
        }

        $PSO = [PSCustomObject]@{
            "issueIds" = ${IssueIds}
            "jqls" = ${Jqls}
        }

        return $PSO
    }

}

