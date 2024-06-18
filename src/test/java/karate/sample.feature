Feature: Sample Karate Test

Scenario: Get request to JSONPlaceholder
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method get
    Then status 200
    And match response.id == 1
