#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT-23ad6c5456aade2d59a4e9437ce49c945df2eb8f
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.Synopsis
    Helper function to format debug parameter output.
.Example
    $PSBoundParameters | Out-DebugParameter | Write-Debug
#>
function Out-DebugParameter {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipeline = $true, Mandatory = $true)]
        [AllowEmptyCollection()]
        $InputObject
    )

    Begin {
        $CommonParameters = Get-CommonParameters
    }

    Process {
        $InputObject.GetEnumerator() | Where-Object {
            $CommonParameters -notcontains $_.Key
        } | Format-Table -AutoSize -Property (
            @{
                Name = 'Parameter'
                Expression = {$_.Key}
            },
            @{
                Name = 'Value'
                Expression = {$_.Value}
            }
        ) | Out-String -Stream | ForEach-Object {
            if ($_.Trim()) {
                $_
            }
        }
    }
}
