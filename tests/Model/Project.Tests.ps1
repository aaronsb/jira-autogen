#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT-23ad6c5456aade2d59a4e9437ce49c945df2eb8f
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSJira' -name 'Project' {
    Context 'Project' {
        It 'Initialize-Project' {
            # a simple test to create an object
            #$NewObject = Initialize-Project -Archived "TEST_VALUE" -ArchivedBy "TEST_VALUE" -ArchivedDate "TEST_VALUE" -AssigneeType "TEST_VALUE" -AvatarUrls "TEST_VALUE" -Components "TEST_VALUE" -Deleted "TEST_VALUE" -DeletedBy "TEST_VALUE" -DeletedDate "TEST_VALUE" -Description "TEST_VALUE" -Email "TEST_VALUE" -Expand "TEST_VALUE" -Favourite "TEST_VALUE" -Id "TEST_VALUE" -Insight "TEST_VALUE" -IsPrivate "TEST_VALUE" -IssueTypeHierarchy "TEST_VALUE" -IssueTypes "TEST_VALUE" -Key "TEST_VALUE" -LandingPageInfo "TEST_VALUE" -Lead "TEST_VALUE" -Name "TEST_VALUE" -Permissions "TEST_VALUE" -ProjectCategory "TEST_VALUE" -ProjectTypeKey "TEST_VALUE" -Properties "TEST_VALUE" -RetentionTillDate "TEST_VALUE" -Roles "TEST_VALUE" -Self "TEST_VALUE" -Simplified "TEST_VALUE" -Style "TEST_VALUE" -Url "TEST_VALUE" -Uuid "TEST_VALUE" -Versions "TEST_VALUE"
            #$NewObject | Should -BeOfType Project
            #$NewObject.property | Should -Be 0
        }
    }
}