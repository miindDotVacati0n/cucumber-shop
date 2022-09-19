Feature: remaining stock
  the shop system display show product stock remaining

  Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists

  Scenario: remaining stock
    When I buy "Bread" with quantity 2
    Then total should be 41.00
    Then "Bread" มีสต็อกเป็น 3