Feature: Register
  As user I would like to register in to nopcommerce website

  @sanity, @regression, @sanity
  Scenario: I should navigate to register page successfully
    Given I am on homepage
    When I click on register link
    And I should navigate to register Page
    Then I should verify register text

  @sanity, @smoke, @regression, @sanity
  Scenario: I should verify the FirstName LastName Email Password And ConfirmPassword Fields are mandatory
    Given I am on homepage
    When I click on register link
    And I should navigate to register Page
    And I click on register button
    And I should verify first name is required "First name is required."
    And I should verify last name is required "Last name is required."
    And I should verify email is required "Email is required."
    And I should verify password is required "Password is required."
    Then I should verify confirmed Password is required "Password is required."

  @smoke, @regression, @smoke
  Scenario: I should able create account successfully
    Given I am on homepage
    When I click on register link
    And I should navigate to register Page
    And I select gender "Female"
    And I Enter first name "Umi"
    And I Enter last name "Patel"
    And I select birth day "14"
    And I select birth month "February"
    And I select birth year "2000"
    And I enter email address "umipatel@gmail.com"
    And I enter Password "umi123"
    And I enter confirmed password "umi123"
    And I click on register button
    Then I should navigate and verify registration complete "Your registration completed"
