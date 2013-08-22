Feature: Merge Articles
  As a blog administrator
  In order to organize the blog
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And the following articles exist:
    |title|body|author|published|user_id|
    |hello|I say hello|Mr Typo|true|1|
    |goodbye|And I say goodbye|Mr Typo|true|1|
    And I am logged into the admin panel

  Scenario: Successfully merge articles
    Given I am on the all articles page
    When I fill in "search" with "hello"
    And I press "Search"
    And I follow "Edit"
    And I fill in "merge_with" with "4"
    And I press "Merge"   
    Then I should see "I say hello"
    And I should see "And I say goodbye"