@XXX
Feature: Autorizacion de Endpoints de Seguros
  Background:
    * def requestSendOTP = read('classpath:/Data/sendOTP/RequestSendOTP.json')
    * def endpoint = "https://integracion-bfcl-qa.fif.tech"

  @AAA
  Scenario: Obtener Token Exitosamente
    Given url endpoint
    When request requestSendOTP
    And headers { "x-Api-Key": "5WJuSuBGeTznmjupn3Z7pKrORwg0vAoYkgAZV4Iyvr4pnrsS", "Authorization": "NVdKdVN1QkdlVHpubWp1cG4zWjdwS3JPUndnMHZBb1lrZ0FaVjRJeXZyNHBucnNTOlc0dTJISkswd0FPcEtHeWlzcGdFZTY2NmdEalBhVEFmYUZYSFBmNklpRDhHakd4cDJvakdiemJEZERIR0hxZnE="}
    And method POST
    Then status 200

