@arrays
Feature: Array
 
#  Scenario: Launch the url
#	Given user open browser and launch the url "https://dsportalapp.herokuapp.com/"
#   When user click  "Get started" button
#   And click on signin link
#   When user enters  "abcde12ab3@gmail.com" "pranav@12"
#   And user click on login button
 
  @scenario_001
  Scenario: User validate Array Page
    Given The user is in home page with title "NumpyNinja"
    Then click on Get started button in array
    And It should navigate to corresponding array page with title "Array"
    When user click on Arrays in Phython
    And It should navigate to corresponding array page with title "Arrays in Python"
    Then user click on array Try here
    And It should navigate to corresponding array page with title "Assessment"
    When user enter the Python code
      | print("Arrays in Python") |
    And click on array run button
    Then The result should be displayed below the run button
    Then User navigate back

@scenario_001
  Scenario: User validate Arrays using list page
    When User click on Arrays using list
    And It should navigate to corresponding array page with title "Arrays Using List"
    Then user click on array Try here
    And It should navigate to corresponding array page with title "Assessment"
    When user enter the Python code
      | print("Arrays using list") |
    And click on array run button
    Then The result should be displayed below the run button
    Then User navigate back
	
  Scenario: User validate Basic Operations in list page
    When User click on Basic Operations in list
    And It should navigate to corresponding array page with title "Basic Operations in Lists"
    Then user click on array Try here
    And It should navigate to corresponding array page with title "Assessment"
    When user enter the Python code
      | print("Basic Operations in list") |
    And click on array run button
    Then User navigate back

  Scenario: User validate Applications of Array page
    When User click on Applications of Array
    And It should navigate to corresponding array page with title "Applications of Array"
    Then user click on array Try here
    And It should navigate to corresponding array page with title "Assessment"
    When user enter the Python code
      | print("Applications of Array") |
    And click on array run button
    Then User navigate back
    When user click on Practice Questions
    And It should navigate to corresponding array page with title "Practice Questions"

  Scenario Outline: User validate Search the array page
    When user click on Search the array
    And It should navigate to corresponding array page with title "Assessment"
    When user clear the text and enter the Python code in tryEditor from sheet "<SheetName>" and <RowNumber>
    And click on array run button
    Then User navigate back
    
  Examples:
  
      | SheetName  | RowNumber |
      | pythonCode |         2 |

  Scenario Outline:  User validate Max Consecutive Ones page
    When user click on Max Consecutive Ones
    And It should navigate to corresponding array page with title "Assessment"
    When user clear the text and enter the Python code in tryEditor from sheet "<SheetName>" and <RowNumber>
    And click on array run button
    Then User navigate back
    
   Examples:
      | SheetName  | RowNumber |
      | pythonCode |         4 |

  Scenario Outline: User validate Even Number page
    When user click on Find Numbers with Even Number of Digits
    And It should navigate to corresponding array page with title "Assessment"
    When user clear the text and enter the Python code in tryEditor from sheet "<SheetName>" and <RowNumber>
    And click on array run button
    Then User navigate back
    
   Examples:
      | SheetName  | RowNumber |
      | pythonCode |         6 |

  Scenario Outline: User validate Sorted Array page
    When user click on Find Numbers with Squares of  a Sorted Array
    And It should navigate to corresponding array page with title "Assessment"
    When user clear the text and enter the Python code in tryEditor from sheet "<SheetName>" and <RowNumber>
    And click on array run button
    Then user is navigated to home page "https://dsportalapp.herokuapp.com/home"
 
  Examples:  
     	 | SheetName  | RowNumber |
      | pythonCode |         8 |

	  
   Scenario Outline: The user is able to submit code in tryEditor for Search the array link
    Given The user is on "Question" page of "Search the array" after logged in
    When The user enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber> for the question
    And The user clicks on Submit button
    Then The user should be presented with successful submission message

    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         3 |

  Scenario Outline:  User validate Max Consecutive Ones page
    Given The user is on "Question" page of "Max Consecutive Ones" after logged in
    When The user enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber> for the question
    And click on array run button
	Then The user should be presented with Run result
    
    Examples:
      | Sheetname  | RowNumber |
      | pythonCode |         4 |

  Scenario Outline: The user is able to submit code in tryEditor for Max Consecutive Ones
    Given The user is on "Question" page of "Max Consecutive Ones" after logged in
    When The user enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber> for the question
    And The user clicks on Submit button
    Then The user should be presented with successful submission message

    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         5 |

  Scenario Outline: User validate Even Number page
    Given The user is on "Question" page of "Find Numbers with Even Number of Digits" after logged in
    When user clear the text and enter the Python code in tryEditor from sheet "<SheetName>" and <RowNumber>
    And click on array run button
	Then The user should be presented with Run result
    
    Examples:
      | SheetName  | RowNumber |
      | pythonCode |         6 |

  Scenario Outline: The user is able to submit code in tryEditor for Find Numbers with Even Number of Digits
    Given The user is on "Question" page of "Find Numbers with Even Number of Digits" after logged in
    When The user enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber> for the question
    And The user clicks on Submit button
    Then The user should be presented with successful submission message

    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         7 |

  Scenario Outline: User validate Sorted Array page
    Given The user is on "Question" page of "Squares of a Sorted Array" after logged in   
    When user clear the text and enter the Python code in tryEditor from sheet "<SheetName>" and <RowNumber>
    And click on array run button
	Then The user should be presented with Run result
	
    Examples:  
      | SheetName  | RowNumber |
      | pythonCode |         8 |

  Scenario Outline: The user is able to submit code in tryEditor for Squares of a Sorted Array
    Given The user is on "Question" page of "Squares of a Sorted Array" after logged in
    When The user enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber> for the question
    And The user clicks on Submit button
    Then The user should be presented with successful submission message

    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         9 |
      
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Arrays in Python page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And The user clicks on run button
    Then The user should be presented with error message as "NameError: name 'hello' is not defined on line 1"

    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
      
      
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Search the array link
    Given The user is on "Question" page of "Search the array" after logged in
    When The user enter python code with invalid syntax in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And The user clicks on run button
    Then The user should be presented with error message as "SyntaxError: bad input on line 1"

    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |

  Scenario Outline: The user is presented with error message for invalid code in tryEditor for Max Consecutive Ones
    Given The user is on "Question" page of "Max Consecutive Ones" after logged in
    When The user enter python code with invalid syntax in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And The user clicks on run button
    Then The user should be presented with error message as "SyntaxError: bad input on line 1"

    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
	  
  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Find Numbers with Even Number of Digits
    Given The user is on "Question" page of "Find Numbers with Even Number of Digits" after logged in
    When The user enter python code with invalid syntax in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And The user clicks on run button
    Then The user should be presented with error message as "SyntaxError: bad input on line 1"

    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |

  Scenario Outline: The user is presented with error message for code with invalid syntax in tryEditor for Squares of a Sorted Array
    Given The user is on "Question" page of "Squares of a Sorted Array" after logged in
    When The user enter python code with invalid syntax in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And The user clicks on run button
    Then The user should be presented with error message as "SyntaxError: bad input on line 1"
	Then user is navigated to home page "https://dsportalapp.herokuapp.com/home"
	
    Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |