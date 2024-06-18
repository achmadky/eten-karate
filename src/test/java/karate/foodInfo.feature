Feature: Food Info API Tests

Scenario: Get information about Egg
  Given url 'https://eten-api.vercel.app/api/foodInfo?name=Egg'
  And header accept = 'application/json, text/plain, */*'
  When method get
  Then status 200
  And match response.food.name == 'Egg'
  And match response.food.calories == 78
  And match response.food.cholesterol == 186

Scenario: Get information about a non-existent food
  Given url 'https://eten-api.vercel.app/api/foodInfo?name=NonExistentFood'
  And header accept = 'application/json, text/plain, */*'
  When method get
  Then status 404

Scenario: Invalid request to Food Info API
  Given url 'https://eten-api.vercel.app/api/foodInfo'
  And header accept = 'application/json, text/plain, */*'
  When method get
  Then status 400
