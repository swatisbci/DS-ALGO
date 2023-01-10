Feature: Stack
@stack
 Scenario: Launch the url
	Given user open browser and launch the url "https://dsportalapp.herokuapp.com/"
   When user click  "Get started" button
   And click on signin link
   When user enters  "abcde12ab3@gmail.com" "pranav@12"
   And user click on login button
@stack
Scenario: validating Stack operationsInStack  page
		Given The user is at home page with title "NumpyNinja"
    When user click on Get Started button in Stack section
    Then user should navigate to corresponding page with title "Stack"
    When user click on operations in stack link
    Then user should navigate to corresponding page with title "operations-in-stack"
     When user clicks on Try here
    Then user should navigate to corresponding page with title "Assessment"
    When user enter the Python code in text editor
      |print("LinkedList Introduction")|
    And click on run button
	Then User navigate back to page with title "https://dsportalapp.herokuapp.com/stack/"
	
	Scenario:
