Feature: Create Categories
	  In order to organize the blog
	  As an admin
	  I want to create categories

	  
	  Background:
    	  Given the blog is set up    
    	  And I am logged into the admin panel	      
	  
	  Scenario: Create categories successfully
	  Given I am on the new categories page
	  Then I should see "Categories"
	  When I fill in "Name" with "Greetings"
	  And I fill in "Keywords" with "Hello Goodbye"
	  And I fill in "Description" with "Articles saying hello to the world"
	  And I press "Save"
	  Then I should see "Greetings"
	  