Feature: API Testing GET api/people Endpoint

  Scenario: SWAPI get people list
    Given url 'https://swapi.dev'
    And path 'api/people'
    When method get
    Then status 200

  * def first = response.results[0]

  Given path 'api/people', 1
  When method get
  Then status 200

