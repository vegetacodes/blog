Feature: Manage Posts
  In order to make a blog post
  As an author
  I want to create and manage articles

  Scenario: Posts List
	Given I have posts entitled First Post, Second Post
	When I go to the list of posts
	Then I should see "First Post"
	And I should see "Second Post"