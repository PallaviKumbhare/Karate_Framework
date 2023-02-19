@Pallavi
Feature: User Details

Background: 
 * url 'https://fakerestapi.azurewebsites.net/api/v1'
 * header Accept = 'application/json'
 

#GET User Details
Scenario: GET Users Details

Given url 'https://fakerestapi.azurewebsites.net/api/v1/Users'
When method GET
Then status 200


@Test
Scenario: POST for new User id

Given path '/Users' 
And request {"id":88, "userName":"Pallavi", "password":"kumbhare"}
When method POST
Then status 200
And print responseHeaders
And  print responseStatus



Scenario: GET request for particular User id

Given url 'https://fakerestapi.azurewebsites.net/api/v1/Users/4'
When method GET
Then status 200
And print responseStatus



Scenario: PUT request to update the existing user id

Given url 'https://fakerestapi.azurewebsites.net/api/v1/Users/4'
And request {"id": 23,  "userName": "Yukta",  "password": "Kumbhare" }
When method PUT 
Then status 200
And print responseStatus



Scenario: Delete a particular user id
Given url 'https://fakerestapi.azurewebsites.net/api/v1/Users/5'
When  method DELETE 
Then status 200
And print responseHeaders