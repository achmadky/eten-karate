Feature: Food List API Tests

Scenario: Get list of foods
    Given url 'https://eten-api.vercel.app/api/foodList'
    And header accept = '*/*'
    When method get
    Then status 200
    And match response != null
    And match response[0] != null
