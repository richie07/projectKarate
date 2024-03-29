@regresion @update
Feature: API POST Workspaces


  Background:
    * url URL
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * header X-API-Key = API_KEY

  Scenario Outline: Post Workspaces
    * def body = read('classpath:apis/workspaces/post/body.json')
    * def schema = read('classpath:apis/workspaces/post/schema_post.json')
    * def jsonWriter = Java.type('apis.util.JsonWriter')

    Given path 'workspaces'
    And request body
    When method post
    Then status 200
    And match $.workspace.name == '<name>'
    And match response == schema
    #* print karate.pretty(response)
    #* def jsonString = karate.eval('JSON.stringify(response)')
    * def id = $.workspace.id
    * jsonWriter.writeToJsonFile('src/test/java/apis/workspaces/update/responsePostId.json', id)

    * def id = $.workspace.id
    * header Accept = 'application/json'
    * header X-API-Key = API_KEY
    * def schema1 = read('classpath:apis/workspaces/post/schema_get.json')
    Given path 'workspaces' , id
    When method get
    Then status 200
    And match $.workspace.name == '<name>'
    And match $.workspace.description == '<description>'
    And match response == schema1

    Examples:
    |read('post_data.yml')|