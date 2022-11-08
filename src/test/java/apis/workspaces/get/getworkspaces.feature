@regresion
Feature: API GET Workspaces

  Background:
    * url URL
    * header X-API-Key = API_KEY

  Scenario: Get all booking
    Given path 'workspaces'
    When method get
    Then status 200

