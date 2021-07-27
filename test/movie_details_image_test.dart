import 'package:flutter/material.dart';
import 'package:movies_widgets/movies_project_widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  Widget _buildWidget() {
    return MaterialApp(
      home: Scaffold(
        body: MovieDetailsImage(
          movieImage:
              'https://www.themoviedb.org/t/p/w1280/qa6HCwP4Z15l3hpsASz3auugEW6.jpg',
        ),
      ),
    );
  }

  testWidgets(
    "it should generate the movie image from details cards",
    (WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          _buildWidget(),
        ),
      );
      expect(
        find.byType(
          Image,
        ),
        findsOneWidget,
      );
    },
  );
}
