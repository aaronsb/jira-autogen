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

.PARAMETER Description
The description of the security scheme scheme.
.PARAMETER Name
The name of the security scheme scheme. Must be unique.
.OUTPUTS

UpdateIssueSecuritySchemeRequestBean<PSCustomObject>
#>

function Initialize-UpdateIssueSecuritySchemeRequestBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSJira => UpdateIssueSecuritySchemeRequestBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Description -and $Description.length -gt 255) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 255."
        }

        if (!$Name -and $Name.length -gt 60) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 60."
        }


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UpdateIssueSecuritySchemeRequestBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateIssueSecuritySchemeRequestBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateIssueSecuritySchemeRequestBean<PSCustomObject>
#>
function ConvertFrom-JsonToUpdateIssueSecuritySchemeRequestBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => UpdateIssueSecuritySchemeRequestBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UpdateIssueSecuritySchemeRequestBean
        $AllProperties = ("description", "name")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "name" = ${Name}
        }

        return $PSO
    }

}
