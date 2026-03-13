Feature: create user

Background:
* url baseUrl

Scenario: create a new user
  * def user =
    """
    {
      "name": "John Doe",
      "username": "johndoe",
      "email": "john@example.com"
    }
    """
  Given path 'users'
  And request user
  When method post
  Then status 201
  And match response.name == user.name
  And match response contains { id: '#number' }