@content
Feature: Admin users have the ability to grant certain permissions related to content moderation to other users
  @api
  Scenario: Verify Content Moderation of Author role
    Verify Author can view the latest revision,
   Use New Draft transition and doesn't have any other permission
  Given I am logged in as a user with the "administrator" role
  And   I go to "admin/people/permissions"
  And the "author[view latest version]" checkbox should be checked
  And the "author[use editorial transition create_new_draft]" checkbox should be checked
  And the "author[use editorial transition publish]" checkbox should be unchecked
  And the "author[use editorial transition archived_published]" checkbox should be unchecked
  And the "author[use editorial transition archived_draft]" checkbox should be unchecked
  And the "author[view any unpublished content]" checkbox should be unchecked

