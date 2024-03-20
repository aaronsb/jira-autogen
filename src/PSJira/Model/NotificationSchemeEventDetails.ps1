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

Details of a notification scheme event.

.PARAMETER VarEvent
The ID of the event.
.PARAMETER Notifications
The list of notifications mapped to a specified event.
.OUTPUTS

NotificationSchemeEventDetails<PSCustomObject>
#>

function Initialize-NotificationSchemeEventDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarEvent},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Notifications}
    )

    Process {
        'Creating PSCustomObject: PSJira => NotificationSchemeEventDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $VarEvent) {
            throw "invalid value for 'VarEvent', 'VarEvent' cannot be null."
        }

        if ($null -eq $Notifications) {
            throw "invalid value for 'Notifications', 'Notifications' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "event" = ${VarEvent}
            "notifications" = ${Notifications}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NotificationSchemeEventDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to NotificationSchemeEventDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NotificationSchemeEventDetails<PSCustomObject>
#>
function ConvertFrom-JsonToNotificationSchemeEventDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => NotificationSchemeEventDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $NotificationSchemeEventDetailsAdditionalProperties = @{}

        # check if Json contains properties not defined in NotificationSchemeEventDetails
        $AllProperties = ("event", "notifications")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $NotificationSchemeEventDetailsAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'event' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "event"))) {
            throw "Error! JSON cannot be serialized due to the required property 'event' missing."
        } else {
            $VarEvent = $JsonParameters.PSobject.Properties["event"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notifications"))) {
            throw "Error! JSON cannot be serialized due to the required property 'notifications' missing."
        } else {
            $Notifications = $JsonParameters.PSobject.Properties["notifications"].value
        }

        $PSO = [PSCustomObject]@{
            "event" = ${VarEvent}
            "notifications" = ${Notifications}
            "AdditionalProperties" = $NotificationSchemeEventDetailsAdditionalProperties
        }

        return $PSO
    }

}

