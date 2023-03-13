Feature: Enthrall Education POST API Validation

  Background: 
    Given url 'http://enthrall.education:3001'
    And path '/players'
    And header Accept = 'application/json'
    * def payload = read('classpath:player.json')

  Scenario: Add Player into Players endpoint
    * def body =
      """
      {
              "id": 11,
              "firstName": "Babar",
              "lastName": "Azam",
              "DOB": "01/12/1989",
              "countryCode": 20
      }
      """
    And request body
    When method POST
    Then status 201

  @json-payload
  Scenario: Add Player from json file
    * set payload.firstName = 'Andrew'
    * set payload.lastName = 'Russel'
    * set payload.DOB = '09/12/1990'
    * set payload.countryCode = 50
    Given request payload
    When method POST
    Then status 201

  @data-driven
  Scenario Outline: Add multiple players <firstName> <lastName>
    * set payload.firstName = <firstName>
    * set payload.lastName = <lastName>
    * set payload.DOB = <DOB>
    * set payload.countryCode = <countryCode>
    Given request payload
    When method POST
    Then status 201

    Examples: 
      | firstName | lastName   | DOB          | countryCode |
      | 'Sunil'   | 'Gavaskar' | '05/06/1961' |          90 |
      | 'Sahid'   | 'Afridi'   | '03/04/1973' |          20 |
