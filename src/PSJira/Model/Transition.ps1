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

Details of a workflow transition.

.PARAMETER Description
The description of the transition.
.PARAMETER VarFrom
The statuses the transition can start from.
.PARAMETER Id
The ID of the transition.
.PARAMETER Name
The name of the transition.
.PARAMETER Properties
The properties of the transition.
.PARAMETER Rules
No description available.
.PARAMETER Screen
No description available.
.PARAMETER To
The status the transition goes to.
.PARAMETER Type
The type of the transition.
.OUTPUTS

Transition<PSCustomObject>
#>

function Initialize-Transition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${VarFrom},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Properties},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Rules},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Screen},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${To},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("global", "initial", "directed")]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSJira => Transition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $VarFrom) {
            throw "invalid value for 'VarFrom', 'VarFrom' cannot be null."
        }

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $To) {
            throw "invalid value for 'To', 'To' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "from" = ${VarFrom}
            "id" = ${Id}
            "name" = ${Name}
            "properties" = ${Properties}
            "rules" = ${Rules}
            "screen" = ${Screen}
            "to" = ${To}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Transition<PSCustomObject>

.DESCRIPTION

Convert from JSON to Transition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Transition<PSCustomObject>
#>
function ConvertFrom-JsonToTransition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => Transition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Transition
        $AllProperties = ("description", "from", "id", "name", "properties", "rules", "screen", "to", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'description' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) {
            throw "Error! JSON cannot be serialized due to the required property 'from' missing."
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) {
            throw "Error! JSON cannot be serialized due to the required property 'to' missing."
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rules"))) { #optional property not found
            $Rules = $null
        } else {
            $Rules = $JsonParameters.PSobject.Properties["rules"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "screen"))) { #optional property not found
            $Screen = $null
        } else {
            $Screen = $JsonParameters.PSobject.Properties["screen"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "from" = ${VarFrom}
            "id" = ${Id}
            "name" = ${Name}
            "properties" = ${Properties}
            "rules" = ${Rules}
            "screen" = ${Screen}
            "to" = ${To}
            "type" = ${Type}
        }

        return $PSO
    }

}

