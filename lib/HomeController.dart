import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class Api {
  Handler get handler {
    final router = Router();

    router.get('/', (Request request) {
      return Response.ok('Hello World');
    });

    // Write your logic here
    router.post('/text', (Request request) async {
      print('post text kek!');
      return Response.ok('you are kek');
    });
    //router.get('/txt', () => 'I am a lol');

    router.get('/txt', (Request request) {
      print('post txt lol!');
      return Response.ok('I am a lol');
    });

    return router;
  }
}
