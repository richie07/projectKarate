@regresion
Feature: API GET Workspaces

  Background:
    * url URL
    * header X-API-Key = 'PMAK-6356f6297cced5288c9eb45f-34244f85443191278b31c6b60020b63a3c'

  Scenario: Get all booking
    Given path 'workspaces'
    When method get
    Then status 200
