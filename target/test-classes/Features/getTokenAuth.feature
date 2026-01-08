@prueba
Feature: Autorizacion de Endpoints de Seguros
  Background:
    * def endpoint = "https://integracion-bfcl-qa.fif.tech/oauth/cc/token"
    * def tokenSchema = call read('classpath:Schemas/getTokenAuthSchema.js')

  Scenario: Obtener Token Exitosamente
    Given url endpoint
    When form field grant_type = 'client_credentials'
    And headers { "X-Api-Key": "5WJuSuBGeTznmjupn3Z7pKrORwg0vAoYkgAZV4Iyvr4pnrsS", "Authorization": "Basic NVdKdVN1QkdlVHpubWp1cG4zWjdwS3JPUndnMHZBb1lrZ0FaVjRJeXZyNHBucnNTOlc0dTJISkswd0FPcEtHeWlzcGdFZTY2NmdEalBhVEFmYUZYSFBmNklpRDhHakd4cDJvakdiemJEZERIR0hxZnE=", "Content-Type":"application/x-www-form-urlencoded"}
    And method POST
    Then status 200
    And match response == tokenSchema
    * console.log("HOLA SSSSS:" + response.access_token)
    * def accessToken = response.access_token
