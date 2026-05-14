import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:unit_widget_test/features/screens/fetch_album.dart';

import 'fetch_album_test.mocks.dart';


@GenerateMocks([http.Client])
void main() {
  test('Returns correct album data', () async {
    final mockClient = MockClient();

    when(mockClient.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
        .thenAnswer((_) async {
          return http.Response(
              '{"userId": 1, "id": 125, "title": "test"}',
              200,
            );
        });

    final album = await fetchAlbum(mockClient);
    expect(await fetchAlbum(mockClient), isA<Album>());
    expect(album.title, "test");
    expect(album.id, 125);
    expect(album.userId, 1);
  });



group('Fetch Album during exeptions', (){
  test('Throws an exception if the http call completes with an error', () async {
    final mockClient = MockClient();

    when(mockClient.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
        .thenAnswer((_) async {
          return http.Response('Not Found', 404);
        });

    expect(await fetchAlbum(mockClient), throwsException);
    expect(
  () => fetchAlbum(mockClient),
  throwsException,
);
});
 });

}
