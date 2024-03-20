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

The x and y location of the status in the workflow.

.PARAMETER X
The x axis location.
.PARAMETER Y
The y axis location.
.OUTPUTS

WorkflowStatusLayout<PSCustomObject>
#>

function Initialize-WorkflowStatusLayout {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${X},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Y}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowStatusLayout' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "x" = ${X}
            "y" = ${Y}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowStatusLayout<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowStatusLayout<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowStatusLayout<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowStatusLayout {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowStatusLayout' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowStatusLayout
        $AllProperties = ("x", "y")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "x"))) { #optional property not found
            $X = $null
        } else {
            $X = $JsonParameters.PSobject.Properties["x"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "y"))) { #optional property not found
            $Y = $null
        } else {
            $Y = $JsonParameters.PSobject.Properties["y"].value
        }

        $PSO = [PSCustomObject]@{
            "x" = ${X}
            "y" = ${Y}
        }

        return $PSO
    }

}

