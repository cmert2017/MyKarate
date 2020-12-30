Feature: Practice Assertion The Karate Way
  Scenario: Simple assertion for numbers
    Given def num1 = 23
    And  def num2 = 45
    Then assert num1 + num2 == 68

    # you can simply replace Given When Then keyword with *
    * print 'Hello World !' + num1 + num2
    * print 'Hello World !' + (num1 + num2)
    * print 'Hello World !' ,num1 ,num2


    Scenario: Working with Simple Json
      * def myJson = {name: 'John', nums:[1,2,3]}
      * print 'Whole Json is ' , myJson
      * print 'The name is ' , myJson.name
      * print 'The nums are ' , myJson.nums
      * print 'The  last nums is ' , myJson.nums[2]

      #assert the name is John, last number is 3

      Then assert myJson.name == 'John'
      Then assert myJson.nums[2] == 3