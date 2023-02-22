@Pallavi
Feature: User Details

Background: 
 * url 'https://fakerestapi.azurewebsites.net/api/v1'
 * header Accept = 'application/json'
 

#GET User Details
 @Print
Scenario: GET Users Details

Given path '/Users'
When method GET
Then status 200
And print 'Response data=', response
And print 'response',response.length
  * def num = response.length-1
* def ids = get response[*].userName
* print 'ids=',ids


Scenario: POST for new User id

Given path '/Users' 
And request {"id":88, "userName":"Pallavi", "password":"kumbhare"}
When method POST
Then status 200
And print responseHeaders
And  print responseStatus



Scenario: GET request for particular User id

Given path '/Users'
And param= '4'
When method GET
Then status 200
And print responseStatus



Scenario: PUT request to update the existing user id

Given path '/Users/4'
And request {"id": 23,  "userName": "Yukta",  "password": "Kumbhare" }
When method PUT 
Then status 200
And print responseStatus



Scenario: Delete a particular user id
Given path '/Users/5'
When  method DELETE 
Then status 200
And print responseHeaders



Scenario: using get and set method

