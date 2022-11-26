@regresion
Feature: API Delete Workspaces

  Background:
    * url URL
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * header X-API-Key = API_KEY

  Scenario Outline: Delete Workspaces
    * def body = read('classpath:apis/workspaces/post/body.json')

    Given path 'workspaces'
    And request body
    When method post
    Then status 200
    And match $.workspace.name == '<name>'

    * def id = $.workspace.id
    * header Accept = 'application/json'
    * header X-API-Key = API_KEY
    * def schema = read('classpath:apis/workspaces/delete/schema_happy.json')
    Given path 'workspaces' , id
    When method delete
    Then status 200
    And match $.workspace.id == id
    And match response == schema

    * header Accept = 'application/json'
    * header X-API-Key = API_KEY
    * def schema_1 = read('classpath:apis/workspaces/delete/schema_unhappy.json')
    Given path 'workspaces' , id
    When method delete
    Then status 400
    And match response == schema_1
    And match $.error.name == 'workspaceNotFoundError'
    And match $.error.message == 'Workspace not found'

    Examples:
    |read('delete_data.yml')|