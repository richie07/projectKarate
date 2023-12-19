# new feature
# Tags: optional
@update
Feature: Update workspaces

  Background:
    * url URL
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * header X-API-Key = API_KEY

  Scenario Outline: A scenario
    * def body = read('classpath:apis/workspaces/update/body.json')
    * def schema = read('classpath:apis/workspaces/update/schema.json')

    Given path 'workspaces' , '<id>'
    And request body
    When method put
    Then status 200
    And match $.workspace.id == '<id>'
    And match response == schema

    Examples:
    |read('responsePostId.json')|