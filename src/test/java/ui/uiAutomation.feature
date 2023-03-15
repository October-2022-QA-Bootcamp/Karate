Feature: UI Automation with Karate

  @ui
  Scenario: MSEDGE - ConnectByAmfam Auto Quote
    * configure driver = { type: 'msedge', showDriverLog: true }
    Given driver "https://www.amazon.com/"
    * driver.maximize()
    * delay(5000)
    And input("#twotabsearchtextbox", "iphone14")
    And waitFor("#nav-search-submit-button").click()
    * delay(5000)
    * def text = text("//h1/descendant::div[@class='sg-col-inner']/child::div[@class='a-section a-spacing-small a-spacing-top-small']")
    * print text

