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

Project list with assigned field configuration schema.

.PARAMETER FieldConfigurationScheme
No description available.
.PARAMETER ProjectIds
The IDs of projects using the field configuration scheme.
.OUTPUTS

FieldConfigurationSchemeProjects<PSCustomObject>
#>

function Initialize-FieldConfigurationSchemeProjects {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FieldConfigurationScheme},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ProjectIds}
    )

    Process {
        'Creating PSCustomObject: PSJira => FieldConfigurationSchemeProjects' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ProjectIds) {
            throw "invalid value for 'ProjectIds', 'ProjectIds' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "fieldConfigurationScheme" = ${FieldConfigurationScheme}
            "projectIds" = ${ProjectIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FieldConfigurationSchemeProjects<PSCustomObject>

.DESCRIPTION

Convert from JSON to FieldConfigurationSchemeProjects<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FieldConfigurationSchemeProjects<PSCustomObject>
#>
function ConvertFrom-JsonToFieldConfigurationSchemeProjects {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => FieldConfigurationSchemeProjects' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FieldConfigurationSchemeProjects
        $AllProperties = ("fieldConfigurationScheme", "projectIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'projectIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'projectIds' missing."
        } else {
            $ProjectIds = $JsonParameters.PSobject.Properties["projectIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fieldConfigurationScheme"))) { #optional property not found
            $FieldConfigurationScheme = $null
        } else {
            $FieldConfigurationScheme = $JsonParameters.PSobject.Properties["fieldConfigurationScheme"].value
        }

        $PSO = [PSCustomObject]@{
            "fieldConfigurationScheme" = ${FieldConfigurationScheme}
            "projectIds" = ${ProjectIds}
        }

        return $PSO
    }

}

