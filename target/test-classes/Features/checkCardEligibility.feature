
@checkCardElegibility @tokenizacion
Feature: Prueba de checkCardElegibility

  Background:
    * def baseUrl = karate.get('baseUrl')
    * def paths = karate.get('paths')
    * def helpers = read('classpath:/Helpers/correlationHelpers.js')
    #* def utils = read('classpath:/Utils/utils.js')
    * def requestCheckCard = read('classpath:/Data/checkCardElegibility/requestCheckCard.json')
    * def generateCorrelationId = helpers.correlationID


  @generacionToken
  Scenario Outline: Generar un Token para tarjetas debito y credito
    Given url utils.concatenar(baseUrl,paths)
    When request requestCheckCard
    And headers {"x-correlation-id": "#(generateCorrelationId())","x-issuer-id": "<issuerId>"}

    And method POST
    Then status 200
    # And match response.issuerCardRefId == '#notempty'

  Examples:
  |wallet   |id               |originalToken            |walletId |merchan    |name        |manual|issuerId  |cipher|
  |walletId1|tokenRequestorid1|originalTokenRequestorId1|walletId1|merchantId1|tokenCREDITO|MANUAL|E2EVTSBKV3|MIAGCSqGSIb3DQEHA6CAMIACAQIxggFXMIIBUwIBAoAMZmFsYWJlbGxhS2lkMDwGCSqGSIb3DQEBBzAvoA8wDQYJYIZIAWUDBAIBBQChHDAaBgkqhkiG9w0BAQgwDQYJYIZIAWUDBAIBBQAEggEAsuqxvUdsoEr0UEAedVBz2pWGjSASPiIbmVxAKQNeVaook/RjOVfHvvulCGPEmc8xwn7zYl3EITSKUU3o2BK2TQbhwD9zTGL+v+906uxh7/VuJrg2li8gKOk89SCewAUzqplC2NeQx01NFMaXEjGSPLdhftRFO9ENJhM8xMT0/jQfcTjxiq7g5+d2NQ+YOhe0gyQbtTRPFHuo0r9wh6CIgA7Xt9C10NLucoLpN1S2h74dA7hAVR+TSy+8i3FEgrsUxRFlLT96QMLBLKwVgX6u++sNcw6Dgf/uWTtXaK5rjr+3PAUMP+docGKDY3ThMWTjGrMEV87gayC6/XhY7f+8OzCABgkqhkiG9w0BBwEwHQYJYIZIAWUDBAEqBBDPNpwDNn2sEWOVR/+UwGlRgEArnXDfydkr7MpPvXtjsTwIn5FgvfMr/Z0RGL4pygLRn+Aw0KxnLXF3NbzUJ/Z5dHJ8E3t2yfgQEvuJ7djQmHSFAAAAAAAAAAA=|
  |walletId2|tokenRequestorid2|originalTokenRequestorId2|walletId2|merchantId2|tokenDEBITO |MANUAL|E2EVTSBKV3|MIAGCSqGSIb3DQEHA6CAMIACAQIxggFXMIIBUwIBAoAMZmFsYWJlbGxhS2lkMDwGCSqGSIb3DQEBBzAvoA8wDQYJYIZIAWUDBAIBBQChHDAaBgkqhkiG9w0BAQgwDQYJYIZIAWUDBAIBBQAEggEAR9/1a718d2Td97UHJd6TLLkjHaY5sBV3gWP6dJr0XlEXIfbOmvqQ6zJCQ2Ezy2abnt690k21q7WfMQ/GYzp0kMQZ8Uf28KlpBSmCIitYVhTpsrNh7g9gTaF8KfEM78hWc6rRS6i0cPUMbIQCFR5Dh9/qCHKd3HRU4nbmbWb0a8HIcGH8XLhU9INfPrUwD7/QSTHnOnZJY03ea3jKc10sZxyhn+O47tZ/ysOUB+8h0eUpl90mIkFplhpjgWd2ybeobMy/U0CZKhQXnv7MvLY0nEj4l4NhK0+gDei8CT0KNEpigAM5fCX8eAt4T2paQRpsMa/UZa1rqBNEyi6a9BC66zCABgkqhkiG9w0BBwEwHQYJYIZIAWUDBAEqBBCV28RKBUhVs1BExOG1SNSpgECGODQ0peD7ut4nZbYNO5V5munxgHX4O13aS5C/kbcXu8qoNabAMFoc8mQegqQBubeOfxRRJjDNJoElqQcYfbidAAAAAAAAAAA=|

