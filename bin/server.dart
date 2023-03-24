import 'dart:io';

import 'package:server/HomeController.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

void main() async {
  var port = int.tryParse(Platform.environment['PORT'] ?? '') ?? 8080;
  final home = Api();
  var server = await shelf_io.serve(home.handler, '0.0.0.0', port);

  print('Serving at http://${server.address.host}:${server.port}');
}
