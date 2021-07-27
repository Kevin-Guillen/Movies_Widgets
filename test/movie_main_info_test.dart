import 'package:flutter/material.dart';
import 'package:movies_widgets/movies_project_widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  Widget _buildWidget() {
    return MaterialApp(
      home: Scaffold(
        body: MovieMainInfo(
          releaseDate: '26/06/08',
          voteAverage: '6.8',
          title: 'Cars',
        ),
      ),
    );
  }

  testWidgets(
    "it should generate the movie main info from details cards",
    (WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          _buildWidget(),
        ),
      );
      expect(
        find.text(
          '26/06/08',
        ),
        findsOneWidget,
      );
      expect(
        find.text(
          '6.8',
        ),
        findsOneWidget,
      );
      expect(
        find.text(
          'Cars',
        ),
        findsOneWidget,
      );
    },
  );
}
