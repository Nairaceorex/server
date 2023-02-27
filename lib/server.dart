import 'dart:io';

Future<void> main() async {
  final server = await createServer();
  print('Server started: ${server.address} port ${server.port}');
}

Future<HttpServer> createServer() async {
  final address = InternetAddress.loopbackIPv4;
  const port = 4040;
  return await HttpServer.bind(address, port);
}
