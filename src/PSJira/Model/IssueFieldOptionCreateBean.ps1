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

.PARAMETER Config
No description available.
.PARAMETER Properties
The properties of the option as arbitrary key-value pairs. These properties can be searched using JQL, if the extractions (see https://developer.atlassian.com/cloud/jira/platform/modules/issue-field-option-property-index/) are defined in the descriptor for the issue field module.
.PARAMETER Value
The option's name, which is displayed in Jira.
.OUTPUTS

IssueFieldOptionCreateBean<PSCustomObject>
#>

function Initialize-IssueFieldOptionCreateBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Config},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Properties},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueFieldOptionCreateBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Value) {
            throw "invalid value for 'Value', 'Value' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "config" = ${Config}
            "properties" = ${Properties}
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueFieldOptionCreateBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueFieldOptionCreateBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueFieldOptionCreateBean<PSCustomObject>
#>
function ConvertFrom-JsonToIssueFieldOptionCreateBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueFieldOptionCreateBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $IssueFieldOptionCreateBeanAdditionalProperties = @{}

        # check if Json contains properties not defined in IssueFieldOptionCreateBean
        $AllProperties = ("config", "properties", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $IssueFieldOptionCreateBeanAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'value' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) {
            throw "Error! JSON cannot be serialized due to the required property 'value' missing."
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "config"))) { #optional property not found
            $Config = $null
        } else {
            $Config = $JsonParameters.PSobject.Properties["config"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        $PSO = [PSCustomObject]@{
            "config" = ${Config}
            "properties" = ${Properties}
            "value" = ${Value}
            "AdditionalProperties" = $IssueFieldOptionCreateBeanAdditionalProperties
        }

        return $PSO
    }

}

