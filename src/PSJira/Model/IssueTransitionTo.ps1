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

Details of the issue status after the transition.

.PARAMETER Description
The description of the status.
.PARAMETER IconUrl
The URL of the icon used to represent the status.
.PARAMETER Id
The ID of the status.
.PARAMETER Name
The name of the status.
.PARAMETER Scope
No description available.
.PARAMETER Self
The URL of the status.
.PARAMETER StatusCategory
No description available.
.OUTPUTS

IssueTransitionTo<PSCustomObject>
#>

function Initialize-IssueTransitionTo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IconUrl},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Scope},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StatusCategory}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueTransitionTo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "iconUrl" = ${IconUrl}
            "id" = ${Id}
            "name" = ${Name}
            "scope" = ${Scope}
            "self" = ${Self}
            "statusCategory" = ${StatusCategory}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueTransitionTo<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueTransitionTo<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueTransitionTo<PSCustomObject>
#>
function ConvertFrom-JsonToIssueTransitionTo {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueTransitionTo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueTransitionTo
        $AllProperties = ("description", "iconUrl", "id", "name", "scope", "self", "statusCategory")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "iconUrl"))) { #optional property not found
            $IconUrl = $null
        } else {
            $IconUrl = $JsonParameters.PSobject.Properties["iconUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) { #optional property not found
            $Scope = $null
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusCategory"))) { #optional property not found
            $StatusCategory = $null
        } else {
            $StatusCategory = $JsonParameters.PSobject.Properties["statusCategory"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "iconUrl" = ${IconUrl}
            "id" = ${Id}
            "name" = ${Name}
            "scope" = ${Scope}
            "self" = ${Self}
            "statusCategory" = ${StatusCategory}
        }

        return $PSO
    }

}
