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

Details of a field.

.PARAMETER ContextsCount
Number of contexts where the field is used.
.PARAMETER Description
The description of the field.
.PARAMETER Id
The ID of the field.
.PARAMETER IsLocked
Whether the field is locked.
.PARAMETER IsUnscreenable
Whether the field is shown on screen or not.
.PARAMETER Key
The key of the field.
.PARAMETER LastUsed
No description available.
.PARAMETER Name
The name of the field.
.PARAMETER ProjectsCount
Number of projects where the field is used.
.PARAMETER Schema
No description available.
.PARAMETER ScreensCount
Number of screens where the field is used.
.PARAMETER SearcherKey
The searcher key of the field. Returned for custom fields.
.OUTPUTS

Field<PSCustomObject>
#>

function Initialize-Field {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ContextsCount},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsLocked},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsUnscreenable},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LastUsed},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ProjectsCount},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Schema},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ScreensCount},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SearcherKey}
    )

    Process {
        'Creating PSCustomObject: PSJira => Field' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Schema) {
            throw "invalid value for 'Schema', 'Schema' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "contextsCount" = ${ContextsCount}
            "description" = ${Description}
            "id" = ${Id}
            "isLocked" = ${IsLocked}
            "isUnscreenable" = ${IsUnscreenable}
            "key" = ${Key}
            "lastUsed" = ${LastUsed}
            "name" = ${Name}
            "projectsCount" = ${ProjectsCount}
            "schema" = ${Schema}
            "screensCount" = ${ScreensCount}
            "searcherKey" = ${SearcherKey}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Field<PSCustomObject>

.DESCRIPTION

Convert from JSON to Field<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Field<PSCustomObject>
#>
function ConvertFrom-JsonToField {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => Field' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Field
        $AllProperties = ("contextsCount", "description", "id", "isLocked", "isUnscreenable", "key", "lastUsed", "name", "projectsCount", "schema", "screensCount", "searcherKey")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "schema"))) {
            throw "Error! JSON cannot be serialized due to the required property 'schema' missing."
        } else {
            $Schema = $JsonParameters.PSobject.Properties["schema"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contextsCount"))) { #optional property not found
            $ContextsCount = $null
        } else {
            $ContextsCount = $JsonParameters.PSobject.Properties["contextsCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isLocked"))) { #optional property not found
            $IsLocked = $null
        } else {
            $IsLocked = $JsonParameters.PSobject.Properties["isLocked"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isUnscreenable"))) { #optional property not found
            $IsUnscreenable = $null
        } else {
            $IsUnscreenable = $JsonParameters.PSobject.Properties["isUnscreenable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUsed"))) { #optional property not found
            $LastUsed = $null
        } else {
            $LastUsed = $JsonParameters.PSobject.Properties["lastUsed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectsCount"))) { #optional property not found
            $ProjectsCount = $null
        } else {
            $ProjectsCount = $JsonParameters.PSobject.Properties["projectsCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "screensCount"))) { #optional property not found
            $ScreensCount = $null
        } else {
            $ScreensCount = $JsonParameters.PSobject.Properties["screensCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "searcherKey"))) { #optional property not found
            $SearcherKey = $null
        } else {
            $SearcherKey = $JsonParameters.PSobject.Properties["searcherKey"].value
        }

        $PSO = [PSCustomObject]@{
            "contextsCount" = ${ContextsCount}
            "description" = ${Description}
            "id" = ${Id}
            "isLocked" = ${IsLocked}
            "isUnscreenable" = ${IsUnscreenable}
            "key" = ${Key}
            "lastUsed" = ${LastUsed}
            "name" = ${Name}
            "projectsCount" = ${ProjectsCount}
            "schema" = ${Schema}
            "screensCount" = ${ScreensCount}
            "searcherKey" = ${SearcherKey}
        }

        return $PSO
    }

}

