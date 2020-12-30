Feature: Spartan App Feature testing
 example url http://52.201.187.226:8000/api/spartans
  Background:
    * url 'http://52.201.187.226:8000'

    Scenario: User should be able to call /api/hello to get greeting
      Given path 'api/hello'
      When method get
      Then status 200

      #chekcing content type header
      Then header Content-Type = 'text/plain;charset=UTF-8'

  Scenario: get all users and then get the first user by id
    Given path 'api/spartans'
    When method get
    Then status 200
