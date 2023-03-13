Feature: Enthrall Education API GET Valdiation

  Background: 
    Given url 'http://enthrall.education:3001'

  @get-countries
  Scenario: Validate countries endpoint status 200
    Given path '/countries'
    When method GET
    Then status 200

  @players
  Scenario: Validate players endpoint staus 200
    Given path '/players'
    When method GET
    Then status 200
    And match response[0].id == 1
    And match response[1].firstName == 'Sakibal'
    And match response[2].lastName == 'John'
