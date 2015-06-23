Feature: display list of movies sorted by different criteria

Scenario: sort movies alphabetically
  Given movies are in the database
  When I follow "Movie Title"
  Then I should see all movies sorted by title in increasing order