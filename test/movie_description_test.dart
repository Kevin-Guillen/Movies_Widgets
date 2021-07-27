import 'package:movies_widgets/movies_project_widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'build_widget_method.dart';

void main() {
  testWidgets(
    "Should display an overview of a movie",
    (tester) async {
      await tester.pumpWidget(
        buildWidget(
          MovieDescription(
            overView:
                'Lightning McQueen, a hotshot rookie race car driven to succeed, discovers that life is about the journey, not the finish line, when he finds himself unexpectedly detoured in the sleepy Route 66 town of Radiator Springs. '
                'On route across the country to the big Piston Cup Championship in California to compete against two seasoned pros, McQueen gets to know the towns offbeat characters.',
          ),
        ),
      );
      expect(
        find.text(
          'Lightning McQueen, a hotshot rookie race car driven to succeed, discovers that life is about the journey, not the finish line, when he finds himself unexpectedly detoured in the sleepy Route 66 town of Radiator Springs. '
          'On route across the country to the big Piston Cup Championship in California to compete against two seasoned pros, McQueen gets to know the towns offbeat characters.',
        ),
        findsOneWidget,
      );
    },
  );
}
