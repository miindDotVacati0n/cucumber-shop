Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Nutella" with price 120.00 and stock of 10 exists

Scenario: Buy one product Bread
    When I buy "Bread" with quantity 2
    Then total should be 41.00

Scenario: Buy one product Jam
    When I buy "Jam" with quantity 3
    And total should be 240.00


    Scenario: Buy one product Nutella
        When I buy "Nutella" with quantity 4
        Then total should be 480.00


Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 121.00

Scenario Outline: Buy one product in table
    When I buy <product> with quantity <quantity>
    Then total should be <total>
    Examples:
       | product  | quantity |  total  |
       | "Bread"  |     1    |   20.50 |
       | "Jam"    |     2    |  160.00 |
       | "Nutella" |    4    | 480.00  |