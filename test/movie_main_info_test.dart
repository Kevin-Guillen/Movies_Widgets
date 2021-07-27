import 'package:movies_widgets/movies_project_widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'build_widget_method.dart';

void main() {
  testWidgets(
    "Should display the movie main info from details cards",
    (tester) async {
      await tester.pumpWidget(
        buildWidget(
          MovieMainInfo(
            releaseDate: '26/06/08',
            voteAverage: '6.8',
            title: 'Cars',
          ),
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
