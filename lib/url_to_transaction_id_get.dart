void main() {
  String url = 'https://payment.payfast.io/eng/process/finish/4b97a834-e6c9-4781-98e2-132d1afe4e97';
  Uri uri = Uri.parse(url);
  String transactionId = uri.pathSegments.last;
  print('Transaction ID: $transactionId');
}
