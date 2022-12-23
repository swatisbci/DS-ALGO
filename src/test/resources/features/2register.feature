
Feature: Register

  Background: 
    Given user opens browser and launch the url "https://dsportalapp.herokuapp.com/"
    When user clicks on "Get started" button
    And clicks on register link
    Then user should successfully able to see register page title "Registration"
@register
  Scenario Outline: Register validation with valid inputs
    When user enter the "<username>", "<password>", "<passwordConfirmation>"
    And user click on register button
    Then user should be successfully able to see the label as "New Account Created."
    Then user click on Sign Out

    Examples: 
      |username|password|passwordConfirmation|
      |abcde12ab3@gmail.com|pranav@12|pranav@12|
      |swatiii1ab23@gmail.com|prathap@12|prathap@12|

  Scenario: Register validation with invalid inputs
    When user click register link without entering anything
    Then user should get fillout field error message "Please fill out this field" below password field.

  Scenario Outline: Register validation with invalid inputs/blank fields
    When user enters "<username>" "<password>" "<passwordconfirmation>" with one or more fields blank inputs and click on register button
    Then user should get fillout field error message "Please fill out this field" below password field.

    Examples: 
      | username        | password  | passwordConfirmation |
      | swati@gmail.com |           |                      |
      | swati@gmail.com | abcde@123 |                      |
      |                 | abc@123   | abc@123              |
      |                 | abc@123   |                      |
      |                 |           | abc@123              |

  Scenario Outline: Register validation with invalid inputs/ password mismatch
    When user enters "<username>" "<password>" "<passwordConfirmation>" with mismatching passwords
    Then user should get a password mismatch error message "password_mismatch:The two password fields didn’t match."

    Examples: 
      | username        | password  | passwordConfirmation |
      | swati@gmail.com | abcde@123 | abcd@123             |

  Scenario Outline: Register validation with invalid inputs/ password format less than 8 characters
    When user enters "<username>" "<password>" "<passwordConfirmation>" password less than eight characters
    Then user should get password atleast 8 char error message "passowrd should contain at least 8 characters"

    Examples: 
      | username        | password | passwordConfirmation |
      | swati@gmail.com | abcde    | abcde                |

  Scenario Outline: Register validation with invalid inputs/  password format all numeric
    When user enters "<username>" "<password>" "<passwordConfirmation>" password with all numeric input
    Then user should get enter valid input error message "please input valid format"

    Examples: 
      | username        | password | passwordConfirmation |
      | swati@gmail.com |    12345 |                12345 |

  Scenario Outline: Register validation with invalid inputs/ similar fields
    When user enters the "<username>" "<password>" "<passwordConfirmation>" all similar to one another
    Then user should get password not similar to username error message "password can not be similar as username"

    Examples: 
      | username  | password  | passwordConfirmation |
      | swati@123 | swati@123 | swati@123            |