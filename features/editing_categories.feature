Feature: Edit Categories
	  In order to organize the blog
	  As an admin
	  I want to be able to edit categories

	  
	  Background:
    	  Given the blog is set up    
    	  And I am logged into the admin panel	
	  And the following categories exist:
	  |name|keywords|description|
	  |palerma|pkey|p_description|      
	  
	  Scenario: Edit categories successfully
	  Given I am on the new categories page
	  Then I should see "Categories"
	  When I follow "palerma"
	  When I fill in "Name" with "Greetings"
	  And I fill in "Keywords" with "Hello Goodbye"
	  And I fill in "Description" with "Articles saying hello to the world"
	  And I fill in "Permalink" with "greetings"
	  And I press "Save"
	  Then I should see "Greetings"
	  But I should not see "palerma"
	  And I should see "Hello Goodbye"
	  But I should not see "pkey"
	  And I should see "Articles saying hello to the world"
	  But I should not see "p_description"
	  