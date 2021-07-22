import 'package:flutter/material.dart';
import '../utils/ui_constants.dart';

class MovieDetailsImage extends StatelessWidget {
  const MovieDetailsImage({
    Key? key,
    required this.movieImage,
  }) : super(key: key);

  final String movieImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        UiConstants.posterPathBorderRadius,
      ),
      child: Image(
        image: NetworkImage(
          movieImage,
        ),
        height: UiConstants.posterPathHeight,
      ),
    );
  }
}
