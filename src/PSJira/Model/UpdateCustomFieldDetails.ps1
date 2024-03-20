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

Details of a custom field.

.PARAMETER Description
The description of the custom field. The maximum length is 40000 characters.
.PARAMETER Name
The name of the custom field. It doesn't have to be unique. The maximum length is 255 characters.
.PARAMETER SearcherKey
The searcher that defines the way the field is searched in Jira. It can be set to `null`, otherwise you must specify the valid searcher for the field type, as listed below (abbreviated values shown):   *  `cascadingselect`: `cascadingselectsearcher`  *  `datepicker`: `daterange`  *  `datetime`: `datetimerange`  *  `float`: `exactnumber` or `numberrange`  *  `grouppicker`: `grouppickersearcher`  *  `importid`: `exactnumber` or `numberrange`  *  `labels`: `labelsearcher`  *  `multicheckboxes`: `multiselectsearcher`  *  `multigrouppicker`: `multiselectsearcher`  *  `multiselect`: `multiselectsearcher`  *  `multiuserpicker`: `userpickergroupsearcher`  *  `multiversion`: `versionsearcher`  *  `project`: `projectsearcher`  *  `radiobuttons`: `multiselectsearcher`  *  `readonlyfield`: `textsearcher`  *  `select`: `multiselectsearcher`  *  `textarea`: `textsearcher`  *  `textfield`: `textsearcher`  *  `url`: `exacttextsearcher`  *  `userpicker`: `userpickergroupsearcher`  *  `version`: `versionsearcher`
.OUTPUTS

UpdateCustomFieldDetails<PSCustomObject>
#>

function Initialize-UpdateCustomFieldDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("com.atlassian.jira.plugin.system.customfieldtypes:cascadingselectsearcher", "com.atlassian.jira.plugin.system.customfieldtypes:daterange", "com.atlassian.jira.plugin.system.customfieldtypes:datetimerange", "com.atlassian.jira.plugin.system.customfieldtypes:exactnumber", "com.atlassian.jira.plugin.system.customfieldtypes:exacttextsearcher", "com.atlassian.jira.plugin.system.customfieldtypes:grouppickersearcher", "com.atlassian.jira.plugin.system.customfieldtypes:labelsearcher", "com.atlassian.jira.plugin.system.customfieldtypes:multiselectsearcher", "com.atlassian.jira.plugin.system.customfieldtypes:numberrange", "com.atlassian.jira.plugin.system.customfieldtypes:projectsearcher", "com.atlassian.jira.plugin.system.customfieldtypes:textsearcher", "com.atlassian.jira.plugin.system.customfieldtypes:userpickergroupsearcher", "com.atlassian.jira.plugin.system.customfieldtypes:versionsearcher")]
        [String]
        ${SearcherKey}
    )

    Process {
        'Creating PSCustomObject: PSJira => UpdateCustomFieldDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "name" = ${Name}
            "searcherKey" = ${SearcherKey}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UpdateCustomFieldDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateCustomFieldDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateCustomFieldDetails<PSCustomObject>
#>
function ConvertFrom-JsonToUpdateCustomFieldDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => UpdateCustomFieldDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UpdateCustomFieldDetails
        $AllProperties = ("description", "name", "searcherKey")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "searcherKey"))) { #optional property not found
            $SearcherKey = $null
        } else {
            $SearcherKey = $JsonParameters.PSobject.Properties["searcherKey"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "name" = ${Name}
            "searcherKey" = ${SearcherKey}
        }

        return $PSO
    }

}

