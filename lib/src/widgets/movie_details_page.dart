import 'package:flutter/material.dart';
import '../utils/ui_constants.dart';
import 'custom_appbar.dart';
import 'movie_description.dart';
import 'movie_main_info.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage(
    this.posterPath, {
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.voteAverage,
    required this.overView,
    Key? key,
  }) : super(key: key);

  final String posterPath;
  final int id;
  final String title;
  final String releaseDate;
  final num voteAverage;
  final String overView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(
          UiConstants.bodyPadding,
        ),
        decoration: const BoxDecoration(
          color: Colors.black87,
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            CustomAppBar(
              movieImage: posterPath,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(
                    height: UiConstants.detailsSizeBoxHeight,
                  ),
                  MovieMainInfo(
                    movieImage: posterPath,
                    id: id,
                    title: title,
                    releaseDate: releaseDate,
                    voteAverage: voteAverage,
                  ),
                  MovieDescription(
                    overView: overView,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
