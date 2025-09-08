
@tokenizacion @notifyVirtualCardChange
Feature: Prueba de notifyVirtualCardChange
 Background:
   * def requestvirtualcard = read('classpath:/Data/VirtualCardChange/requestvirtualcard.json')
   * def urlToken = "http://localhost:8080/fifpe/v2/notifyVirtualCardChange"
  @recepcionNotificacion
  Scenario Outline: Recepción de Notificacion
    Given url urlToken
    When request requestvirtualcard
    And headers { "x-correlation-id": "<correlation>", "x-issuer-id": "<issuer>" }
    And method POST
    Then status 200

    Examples:
      |issue| prime| Pay|V|Suspend|correlation|issuer|
      |82fa211d99bc4bd43fd34e3d012dcc1096974f470689d2ca|primervirtualcar1|Bank Pay|true|Suspend|8885910237653|E2EVTSBKV3|
