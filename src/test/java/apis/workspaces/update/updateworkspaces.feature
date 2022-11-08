# new feature
# Tags: optional
@regresion
Feature: Update workspaces

  Background:
    * url URL
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * header X-API-Key = 'PMAK-6356f6297cced5288c9eb45f-34244f85443191278b31c6b60020b63a3c'

  Scenario Outline: A scenario
    * def body = read('classpath:apis/workspaces/update/body.json')

    Given path 'workspaces' , '<id>'
    And request body
    When method put
    Then status 200
    And match $.workspace.id == '<id>'

    Examples:
    |read('update_data.json')|