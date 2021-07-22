import 'package:flutter/material.dart';
import '../models/widget_route.dart';
import '../resources/route_constants.dart';
import '../utils/ui_constants.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<WidgetRoute> _widgetList;

  List<WidgetRoute> _generateRoutes() {
    List<WidgetRoute> _routeList = [];
    _routeList.add(
      WidgetRoute(
        title: UiConstants.customAppBarTitle,
        widgetRoute: customAppBar,
      ),
    );
    _routeList.add(
      WidgetRoute(
        title: UiConstants.movieDescriptionTitle,
        widgetRoute: movieDescription,
      ),
    );
    _routeList.add(
      WidgetRoute(
        title: UiConstants.movieMainInfoTitle,
        widgetRoute: movieMainInfo,
      ),
    );

    return _routeList;
  }

  @override
  void initState() {
    super.initState();
    _widgetList = _generateRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              UiConstants.appBarTitle,
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.black87,
        alignment: Alignment.center,
        child: ListView.builder(
          itemCount: _widgetList.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  _widgetList[index].widgetRoute,
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: UiConstants.containerTopPadding,
                ),
                child: Container(
                  height: UiConstants.containerHeight,
                  color: Colors.purple,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _widgetList[index].title,
                          style: TextStyle(
                            fontSize: UiConstants.containerTitleFontSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
