
@SendOTP @tokenizacion
Feature: Prueba de sendOTP
 Background:
   * def requestSendOTP = read('classpath:/Data/sendOTP/RequestSendOTP.json')
   * def urlToken = "https://bfa-pe-tkz-qa-01-priv.fif.tech/issuer/igwapi/v2.0/sendOTP"
  @envioMSN
  Scenario Outline: Enviar un mensaje OTP a un numero telefonico del Peru
    Given url urlToken
    When request requestSendOTP
    And headers { "x-correlation-id": "<correlatioId>", "x-issuer-id": "<issuerid>"}
    And method POST
    Then status 200



  Examples:
    |correlatioId|issuerid|wallet|issuer|value|
    |8885910237654|FALAB_PE_1|GOOGLE_PLAY|afb3b17ef0ffac2c316ddc0d0dac9037c3947c2d4324d036|789456|