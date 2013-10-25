Feature:
  In order add discussion on a story
  As a user
  I want to write a comment

  Scenario: Add a comment
    Given I am on the show story page
    When I click on 'Add Comment' button
    And I see a textarea field
    And I write some text in textarea field
    And I save the comment
    Then I see the added comment to story on same page.