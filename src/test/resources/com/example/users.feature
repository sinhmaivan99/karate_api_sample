Feature: Users API E2E Tests

Background:
* url baseUrl

Scenario: List Users (listCollections equivalent)
  Given path 'users'
  When method get
  Then status 200
  And match response == '#array'

Scenario: Create User (createCollection equivalent)
  * def userData =
    """
    {
      "name": "John Doe",
      "job": "Developer"
    }
    """
  Given path 'users'
  And request userData
  When method post
  Then status 201
  And match response contains { name: 'John Doe' }

Scenario: Update User (updateCollection equivalent)
  * def updateData =
    """
    {
      "name": "Jane Doe",
      "job": "Manager"
    }
    """
  Given path 'users', 1
  And request updateData
  When method put
  Then status 200
  And match response contains { name: 'Jane Doe' }

Scenario: Delete User (deleteCollection equivalent)
  Given path 'users', 1
  When method delete
  Then status 200