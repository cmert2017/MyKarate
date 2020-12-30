Feature: Users should be able to search city info by zipcode
  example url api.zippopotam.us/country/postal-code
  Background:
    * url 'https://www.zippopotam.us/'

    Scenario: get city info using zipcode
      Given path 'us/22030'
      When method get
      Then status 200


