Feature: Prueba de getIDnVMethodList
  Background:
    * def urltoken = "https://bfa-pe-tkz-qa-01-priv.fif.tech/issuer/igwapi/v2.0/checkCardEligibility"
    * def requestSendOTP = read('classpath:/Data/getIDnVMethodList/getIDnVMethodList.json')


  Scenario Outline: Solicitud de Métodos de ID&V a Emisores en Caso de No Provisión Tras Digitalización de la Tarjeta de Solicitud por TSH
    Given url urlToken
    When request requestgetIDnVMethodList
    And headers {"x-correlation-id": "correlation","x-issuer-id": "<issuerId>"}

    And method POST
    Then status 200

    Examples:
      |walletProviderId|x-correlation-id|x-issuer-id|
      |GOOGLE_PAY|8885910237699|FALAB_PE_1|
