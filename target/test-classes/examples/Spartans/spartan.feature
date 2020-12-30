Feature: Spartan App Feature testing
 example url http://52.201.187.226:8000/api/spartans
  Background:
    * url 'http://52.201.187.226:8000'
    * path '/api'

    Scenario: User should be able to call /api/hello to get greeting
      Given path '/hello'
      When method get
      Then status 200

      #chekcing content type header
      Then match  header Content-Type == 'text/plain;charset=UTF-8'

      #checking the payload
      Then match response == 'Hello from Sparta'


   Scenario: Spartan CRUD Operation
     * def payload =
     """
          {
          "name":"Tucky",
          "gender":"Male",
          "phone":1231231234
          }
    """
     Given path '/spartans'
     And header Content-Type = 'application/json'
     And request payload
     When method post
     Then status 201
     Then response.success == 'A Spartan is Born!'


     #keep going from here and test you can access the data you just added
     # send another GET request
    * def newID = response.data.id
     Given path 'api/spartans' , newID
     When method get
     Then status 200
     Then match header Content-Type == 'application/json'

    #update the data with new body
     * def newPayload =
     """
     {
     "name":"John",
     "gender":"Male",
     "phone":1231231231
     }
     """

     Given path '/api/spartans/' , newID
     And header Content-Type = 'application/json'
     And request newPayload
     When method put
     Then status 204



     ##delete the spartan
     Given path '/api/spartans' , newID
     When method delete
     Then status 204





#
#
#
#  Scenario: get all users and then get the first user by id
#    Given path 'api/spartans'
#    When method get
#    Then status 200
