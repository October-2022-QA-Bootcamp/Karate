Feature: Enthrall Education API GET Valdiation

  Background: 
    Given url baseUrl

  @get-countries
  Scenario: Validate countries endpoint status 200
    * def pathUrl = constant.countriesEndpoint
    Given path pathUrl
    When method GET
    Then status 200

  @players
  Scenario: Validate players endpoint staus 200
    * def pathUrl = constant.playersEndpoint
    Given path pathUrl
    When method GET
    Then status 200
    And match response[0].id == 1
    And match response[1].firstName == 'Sakibal'
    And match response[2].lastName == 'John'
