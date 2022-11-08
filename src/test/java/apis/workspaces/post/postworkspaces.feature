@regresion
Feature: API POST Workspaces

  Background:
    * url URL
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * header X-API-Key = 'PMAK-6356f6297cced5288c9eb45f-34244f85443191278b31c6b60020b63a3c'

  Scenario Outline: Post Workspaces
    * def body = read('classpath:apis/workspaces/post/body.json')

    Given path 'workspaces'
    And request body
    When method post
    Then status 200
    And match $.workspace.name == '<name>'

    * def id = $.workspace.id
    * header Accept = 'application/json'
    * header X-API-Key = 'PMAK-6356f6297cced5288c9eb45f-34244f85443191278b31c6b60020b63a3c'
    Given path 'workspaces' , id
    When method get
    Then status 200
    And match $.workspace.name == '<name>'
    And match $.workspace.description == '<description>'

    Examples:
    |read('post_data.yml')|