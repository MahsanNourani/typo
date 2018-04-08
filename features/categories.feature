Feature: Categories
	As an admin
	In order to add new categories
	I want to add it to the list of categories

Background:
    Given the blog is set up
    And I am logged into the admin panel

Scenario: Add Category
	Given I go to the Categories Page
	When I fill in "category_name" with "Rock_Music"
	And I fill in "category_keywords" with "Rock_Music_Tag"
	And I fill in "category_description" with "This is a category!"
	And I press "Save"
	Then I should be on the Categories Page
	And I should see "Category was successfully saved."
	And I should see "Rock_Music"
	
Scenario: Cancel Adding Category
	Given I go to the Categories Page
	When I fill in "category_name" with "Rock_Music"
	And I fill in "category_keywords" with "Rock_Music_Tag"
	And I fill in "category_description" with "This is a category!"
	And I follow "Cancel"
	Then I should be on the Categories Page
	And I should not see "Rock_Music"
