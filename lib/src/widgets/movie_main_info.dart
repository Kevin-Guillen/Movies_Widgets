import 'package:flutter/material.dart';
import '../utils/ui_constants.dart';

class MovieMainInfo extends StatelessWidget {
  const MovieMainInfo({
    Key? key,
    required this.title,
    required this.releaseDate,
    required this.voteAverage,
  }) : super(key: key);

  final String title;
  final String releaseDate;
  final String voteAverage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: UiConstants.movieInfoSizeBox,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: UiConstants.movieTitleFontSize,
                  fontFamily: 'Play-Bold',
                ),
              ),
              Text(
                releaseDate,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: UiConstants.releaseDateFontSize,
                ),
              ),
              Row(
                children: [
                  Text(
                    voteAverage,
                    style: TextStyle(
                      fontSize: UiConstants.releaseDateFontSize,
                      color: Colors.amber.shade300,
                    ),
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    color: Colors.amber.shade300,
                    size: UiConstants.voteAverageFontSize,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
