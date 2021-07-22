import 'package:flutter/material.dart';
import 'package:movies_widgets/movies_project_widgets.dart';
import 'route_constants.dart';
import '../screen/home_page.dart';
import '../utils/ui_constants.dart';

class NavigationRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case customAppBar:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text(
                UiConstants.customAppBarTitle,
              ),
            ),
            body: Container(
              color: Colors.black87,
              child: CustomScrollView(
                slivers: [
                  CustomAppBar(
                    movieImage: UiConstants.defaultMovieImage,
                  ),
                ],
              ),
            ),
          ),
        );
      case movieDescription:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text(
                UiConstants.movieDescriptionTitle,
              ),
            ),
            body: Container(
              color: Colors.black87,
              child: MovieDescription(
                overView: UiConstants.defaultOverView,
              ),
            ),
          ),
        );
      case movieMainInfo:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text(
                UiConstants.movieMainInfoTitle,
              ),
            ),
            body: Container(
              color: Colors.black87,
              child: Column(
                children: [
                  Container(
                    child: MovieMainInfo(
                      movieImage: UiConstants.defaultMovieImage,
                      title: UiConstants.defaultMovieTitle,
                      releaseDate: UiConstants.defaultReleaseDate,
                      voteAverage: UiConstants.defaultVoteAverage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                UiConstants.defaultErrorMessage,
              ),
            ),
          ),
        );
    }
  }
}
