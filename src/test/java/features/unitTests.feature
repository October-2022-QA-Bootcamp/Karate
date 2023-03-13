Feature: Unit Tests

  Background: 
    * def utils = Java.type('javautils.JavaUtils')

  Scenario: Using java method getOrgName
    * def getOrganizationName = utils.getOrganizationName()
    * print getOrganizationName

  Scenario: getDate Java
    * def currentDate = utils.getDate()
    * print currentDate

  Scenario: Calling another scenario from different feature file
    * def getCountries = call read('classpath:features/getCalls.feature@get-countries')
    * print getCountries.response
   
  @helper  
  Scenario: Calling another scenario from helper feature
    * def getCountries = call read('classpath:helper/helper.feature@get-countries-helper'){'urlPath':'http://enthrall.education:3001'}
    * print getCountries.response
