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

Overrides, for the selected issue types, any status mappings provided in `statusMappingsByWorkflows`. Status mappings are required when the new workflow for an issue type doesn't contain all statuses that the old workflow has. Status mappings can be provided by a combination of `statusMappingsByWorkflows` and `statusMappingsByIssueTypeOverride`.

.PARAMETER IssueTypeId
The ID of the issue type for this mapping.
.PARAMETER StatusMappings
The list of status mappings.
.OUTPUTS

MappingsByIssueTypeOverride<PSCustomObject>
#>

function Initialize-MappingsByIssueTypeOverride {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IssueTypeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${StatusMappings}
    )

    Process {
        'Creating PSCustomObject: PSJira => MappingsByIssueTypeOverride' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $IssueTypeId) {
            throw "invalid value for 'IssueTypeId', 'IssueTypeId' cannot be null."
        }

        if ($null -eq $StatusMappings) {
            throw "invalid value for 'StatusMappings', 'StatusMappings' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "issueTypeId" = ${IssueTypeId}
            "statusMappings" = ${StatusMappings}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MappingsByIssueTypeOverride<PSCustomObject>

.DESCRIPTION

Convert from JSON to MappingsByIssueTypeOverride<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MappingsByIssueTypeOverride<PSCustomObject>
#>
function ConvertFrom-JsonToMappingsByIssueTypeOverride {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => MappingsByIssueTypeOverride' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in MappingsByIssueTypeOverride
        $AllProperties = ("issueTypeId", "statusMappings")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'issueTypeId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueTypeId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'issueTypeId' missing."
        } else {
            $IssueTypeId = $JsonParameters.PSobject.Properties["issueTypeId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusMappings"))) {
            throw "Error! JSON cannot be serialized due to the required property 'statusMappings' missing."
        } else {
            $StatusMappings = $JsonParameters.PSobject.Properties["statusMappings"].value
        }

        $PSO = [PSCustomObject]@{
            "issueTypeId" = ${IssueTypeId}
            "statusMappings" = ${StatusMappings}
        }

        return $PSO
    }

}

