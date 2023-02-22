Feature: Book Details


Scenario: GET all the book details
  Given path '/Books'
  When method GET
  Then status 200
  And print responseStatus

  @Testing
Scenario: POST to add new book details

  Given url 'https://fakerestapi.azurewebsites.net/api/v1/Books'
  And request {"id":"5","title": "science","description": "string","pageCount": 0,"excerpt": "string","publishDate": "2023-02-09T17:43:37.036Z"}
  When method POST
  Then status 200
  And print responseStatus

Scenario:GET Details of books

Given url 'https://fakerestapi.azurewebsites.net/api/v1/Books/6'
When method GET
Then status 200
And print responseStatus


Scenario: Update details of book PUTrequest

Given url 'https://fakerestapi.azurewebsites.net/api/v1/Books/7'
And request {"id": 7,"title": "Dewyansh","description": "string","pageCount": 0,"excerpt": "string","publishDate": "2023-02-10T13:35:05.074Z"}
When method PUT
Then status 200


