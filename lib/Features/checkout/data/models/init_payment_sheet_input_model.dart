class Initpaymentsheetinputmodel {
  final String clientSecret;
  final String customerId;
  final String ephemeralKeySecret;

  Initpaymentsheetinputmodel(
      {required this.clientSecret,
      required this.customerId,
      required this.ephemeralKeySecret});
}
