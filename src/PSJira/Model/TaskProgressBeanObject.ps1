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

Details about a task.

.PARAMETER Description
The description of the task.
.PARAMETER ElapsedRuntime
The execution time of the task, in milliseconds.
.PARAMETER Finished
A timestamp recording when the task was finished.
.PARAMETER Id
The ID of the task.
.PARAMETER LastUpdate
A timestamp recording when the task progress was last updated.
.PARAMETER Message
Information about the progress of the task.
.PARAMETER Progress
The progress of the task, as a percentage complete.
.PARAMETER Result
The result of the task execution.
.PARAMETER Self
The URL of the task.
.PARAMETER Started
A timestamp recording when the task was started.
.PARAMETER Status
The status of the task.
.PARAMETER Submitted
A timestamp recording when the task was submitted.
.PARAMETER SubmittedBy
The ID of the user who submitted the task.
.OUTPUTS

TaskProgressBeanObject<PSCustomObject>
#>

function Initialize-TaskProgressBeanObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${ElapsedRuntime},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Finished},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${LastUpdate},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${Progress},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Result},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Started},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ENQUEUED", "RUNNING", "COMPLETE", "FAILED", "CANCEL_REQUESTED", "CANCELLED", "DEAD")]
        [String]
        ${Status},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${Submitted},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${SubmittedBy}
    )

    Process {
        'Creating PSCustomObject: PSJira => TaskProgressBeanObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ElapsedRuntime) {
            throw "invalid value for 'ElapsedRuntime', 'ElapsedRuntime' cannot be null."
        }

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $LastUpdate) {
            throw "invalid value for 'LastUpdate', 'LastUpdate' cannot be null."
        }

        if ($null -eq $Progress) {
            throw "invalid value for 'Progress', 'Progress' cannot be null."
        }

        if ($null -eq $Self) {
            throw "invalid value for 'Self', 'Self' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if ($null -eq $Submitted) {
            throw "invalid value for 'Submitted', 'Submitted' cannot be null."
        }

        if ($null -eq $SubmittedBy) {
            throw "invalid value for 'SubmittedBy', 'SubmittedBy' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "elapsedRuntime" = ${ElapsedRuntime}
            "finished" = ${Finished}
            "id" = ${Id}
            "lastUpdate" = ${LastUpdate}
            "message" = ${Message}
            "progress" = ${Progress}
            "result" = ${Result}
            "self" = ${Self}
            "started" = ${Started}
            "status" = ${Status}
            "submitted" = ${Submitted}
            "submittedBy" = ${SubmittedBy}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TaskProgressBeanObject<PSCustomObject>

.DESCRIPTION

Convert from JSON to TaskProgressBeanObject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TaskProgressBeanObject<PSCustomObject>
#>
function ConvertFrom-JsonToTaskProgressBeanObject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => TaskProgressBeanObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TaskProgressBeanObject
        $AllProperties = ("description", "elapsedRuntime", "finished", "id", "lastUpdate", "message", "progress", "result", "self", "started", "status", "submitted", "submittedBy")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'elapsedRuntime' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "elapsedRuntime"))) {
            throw "Error! JSON cannot be serialized due to the required property 'elapsedRuntime' missing."
        } else {
            $ElapsedRuntime = $JsonParameters.PSobject.Properties["elapsedRuntime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdate"))) {
            throw "Error! JSON cannot be serialized due to the required property 'lastUpdate' missing."
        } else {
            $LastUpdate = $JsonParameters.PSobject.Properties["lastUpdate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "progress"))) {
            throw "Error! JSON cannot be serialized due to the required property 'progress' missing."
        } else {
            $Progress = $JsonParameters.PSobject.Properties["progress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) {
            throw "Error! JSON cannot be serialized due to the required property 'self' missing."
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "submitted"))) {
            throw "Error! JSON cannot be serialized due to the required property 'submitted' missing."
        } else {
            $Submitted = $JsonParameters.PSobject.Properties["submitted"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "submittedBy"))) {
            throw "Error! JSON cannot be serialized due to the required property 'submittedBy' missing."
        } else {
            $SubmittedBy = $JsonParameters.PSobject.Properties["submittedBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "finished"))) { #optional property not found
            $Finished = $null
        } else {
            $Finished = $JsonParameters.PSobject.Properties["finished"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "result"))) { #optional property not found
            $Result = $null
        } else {
            $Result = $JsonParameters.PSobject.Properties["result"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "started"))) { #optional property not found
            $Started = $null
        } else {
            $Started = $JsonParameters.PSobject.Properties["started"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "elapsedRuntime" = ${ElapsedRuntime}
            "finished" = ${Finished}
            "id" = ${Id}
            "lastUpdate" = ${LastUpdate}
            "message" = ${Message}
            "progress" = ${Progress}
            "result" = ${Result}
            "self" = ${Self}
            "started" = ${Started}
            "status" = ${Status}
            "submitted" = ${Submitted}
            "submittedBy" = ${SubmittedBy}
        }

        return $PSO
    }

}
