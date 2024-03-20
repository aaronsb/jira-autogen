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

.PARAMETER Modules
A list of app modules in the same format as the `modules` property in the [app descriptor](https://developer.atlassian.com/cloud/jira/platform/app-descriptor/).
.OUTPUTS

ConnectModules<PSCustomObject>
#>

function Initialize-ConnectModules {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Modules}
    )

    Process {
        'Creating PSCustomObject: PSJira => ConnectModules' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Modules) {
            throw "invalid value for 'Modules', 'Modules' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "modules" = ${Modules}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectModules<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectModules<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectModules<PSCustomObject>
#>
function ConvertFrom-JsonToConnectModules {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ConnectModules' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConnectModules
        $AllProperties = ("modules")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'modules' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modules"))) {
            throw "Error! JSON cannot be serialized due to the required property 'modules' missing."
        } else {
            $Modules = $JsonParameters.PSobject.Properties["modules"].value
        }

        $PSO = [PSCustomObject]@{
            "modules" = ${Modules}
        }

        return $PSO
    }

}

