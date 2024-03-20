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

Issue security level member.

.PARAMETER Holder
The user or group being granted the permission. It consists of a `type` and a type-dependent `parameter`. See [Holder object](../api-group-permission-schemes/#holder-object) in *Get all permission schemes* for more information.
.PARAMETER Id
The ID of the issue security level member.
.PARAMETER IssueSecurityLevelId
The ID of the issue security level.
.PARAMETER Managed
No description available.
.OUTPUTS

IssueSecurityLevelMember<PSCustomObject>
#>

function Initialize-IssueSecurityLevelMember {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Holder},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${IssueSecurityLevelId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Managed}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueSecurityLevelMember' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Holder) {
            throw "invalid value for 'Holder', 'Holder' cannot be null."
        }

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $IssueSecurityLevelId) {
            throw "invalid value for 'IssueSecurityLevelId', 'IssueSecurityLevelId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "holder" = ${Holder}
            "id" = ${Id}
            "issueSecurityLevelId" = ${IssueSecurityLevelId}
            "managed" = ${Managed}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueSecurityLevelMember<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueSecurityLevelMember<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueSecurityLevelMember<PSCustomObject>
#>
function ConvertFrom-JsonToIssueSecurityLevelMember {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueSecurityLevelMember' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueSecurityLevelMember
        $AllProperties = ("holder", "id", "issueSecurityLevelId", "managed")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'holder' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "holder"))) {
            throw "Error! JSON cannot be serialized due to the required property 'holder' missing."
        } else {
            $Holder = $JsonParameters.PSobject.Properties["holder"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueSecurityLevelId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'issueSecurityLevelId' missing."
        } else {
            $IssueSecurityLevelId = $JsonParameters.PSobject.Properties["issueSecurityLevelId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "managed"))) { #optional property not found
            $Managed = $null
        } else {
            $Managed = $JsonParameters.PSobject.Properties["managed"].value
        }

        $PSO = [PSCustomObject]@{
            "holder" = ${Holder}
            "id" = ${Id}
            "issueSecurityLevelId" = ${IssueSecurityLevelId}
            "managed" = ${Managed}
        }

        return $PSO
    }

}

