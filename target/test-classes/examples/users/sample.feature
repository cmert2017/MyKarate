Feature: first sample http API testing

#  Background:
#    * url 'http://54.90.101.103:8000'
#
#  Scenario: get all users and then get the first user by id
#    Given path 'api/spartans'
#    When method get
#    Then status 200





  Scenario: SWAPI get all people 
    Given url 'https://swapi.dev'
    And path 'api/people'
    When method get
    Then status 200