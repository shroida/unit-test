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
        .thenAnswer((_) async => http.Response(
              '{"userId": 1, "id": 1, "title": "test"}',
              200,
            ));

    final album = await fetchAlbum(mockClient);

    expect(album.title, "test");
  });
}