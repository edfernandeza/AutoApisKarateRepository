@sebastian
Feature: Autorizacion de Endpoints de Seguros
  Background:
    * def endpoint = "https://integracion-bfcl-qa.fif.tech/parameters-management/v1/loans/limits"
    * def authorizationFeature = callonce read('classpath:Features/getTokenAuth.feature')
    * console.log("HOLA SEBAS:" + authorizationFeature.accessToken)
    * def Authorization = 'Bearer ' + authorizationFeature.accessToken
    * console.log("HOLA TOLE:" + Authorization)


  @esc1
  Scenario: Obtener Cuotas Exitosamente
    Given url endpoint
    When param Type = 2001
    And headers { "X-Country": "CL", "X-Channel": "SMARTIX", "X-Commerce": "FALABELLA", "X-Session-Id": "852910FE8FG64A18E17E146A9BD5917F", "X-Functionality": "CREDITO_CONSUMO", "X-True-Client-Ip": "190.251.23.5", "X-Date-Time": "2006-01-02T15:04:05-00:00", "X-Trace-Id": "32d440a3-f7cb-4dcf-8b18-2493e206ab61", "X-App-Version": "1.15.0", "X-App-Platform": "Android OS", "X-Customer-Hash": "CL_RUT_b1CCee99996d0b84ab1a23279c6ee411960ec9809f6169dbc1b081614a94511C", "X-Forwarded-Proto": "https", "X-Forwarded-For": "190.251.23.5,10.185.125.31", "X-Forwarded-Host": "gateway-api-cl-gcp-sawest-1-preprod-chile-xzcfss.bfcl-np-gcp-alfa-sawest1-prod.fif.tech", "X-Forwarded-Port": "443", "X-Request-Id": "88eb4ad4-e4c6-4d87-9209-4e107fddeabe", "X-Branch": "170", "X-Customer-Id": "115946145" }
    And headers { "Authorization": "#(Authorization)" }
    And method GET
    Then status 200


