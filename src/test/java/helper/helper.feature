Feature: All helper scenarios

  @get-countries-helper
  Scenario: Validate countries endpoint status 200
  # url
  	* url urlPath
    Given path '/countries'
    When method GET
    Then status 200
    
  @add-player-helper
  Scenario: Add Player from json file
  # url, path, fristName, lastName, DOB, countryCode, code
    * set payload.firstName = firstName
    * set payload.lastName = lastName
    * set payload.DOB = DOB
    * set payload.countryCode = countryCode
    Given request payload
    When method POST
    Then status code