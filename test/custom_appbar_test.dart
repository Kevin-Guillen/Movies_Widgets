import 'package:flutter/material.dart';
import 'package:movies_widgets/movies_project_widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'build_widget_method.dart';

void main() {
  testWidgets(
    "Should generate the movie image from the custom appbar of details page",
    (tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          buildWidget(
            CustomScrollView(
              slivers: [
                CustomAppBar(
                  movieImage:
                      'https://www.themoviedb.org/t/p/w1280/qa6HCwP4Z15l3hpsASz3auugEW6.jpg',
                ),
              ],
            ),
          ),
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
