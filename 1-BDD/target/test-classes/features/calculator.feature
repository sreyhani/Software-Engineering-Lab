@tag
Feature: Calculator

  Scenario: add two numbers
    Given Two input values, 1 and 2 and an operation +
    When I operate on the two values
    Then I expect the result 3

  Scenario: multiply two numbers
    Given Two input values, 5 and 2 and an operation *
    When I operate on the two values
    Then I expect the result 10

  Scenario Outline: do operation on two number
    Given Two input values, <first> and <second> and an operation <opt>
    When I operate on the two values
    Then I expect the result <result>
    Examples:
      | first | second | opt | result |
      | 6     | 2      | +        | 8     |
      | -7     | 4      | +        | -3     |
      | 5     | -2      | +        | 3     |
      | -3     | -4      | +        | -7     |
      | 6     | 2      | -        | 4     |
      | -7     | 4      | -        | -11     |
      | 5     | -2      | -        | 7     |
      | -3     | -4      | -        | 1     |
      | 6     | 2      | *        | 12     |
      | -7     | 4      | *        | -28     |
      | 5     | -2      | *        | -10     |
      | -3     | -4      | *        | 12     |
      | 6     | 2      | /        | 3     |
      | 12     | -2      | /        | -6     |
      | 15     | -3      | /        | -5     |
      | -21     | -3      | /        | 7     |
      | 20     | 3      | /        | 6      |
      | -20     | 3      | /        | -6      |
      | 6     | 2      | ^        | 36     |
      | -6     | 2      | ^        | 36     |
      | -6     | 3      | ^        | -216     |

