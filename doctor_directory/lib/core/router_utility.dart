import 'package:flutter/material.dart';
import 'package:flutter_network/constants/route_constants.dart';
import 'package:flutter_network/ui/SearchWidget.dart';
import 'package:flutter_network/ui/doctors/DoctorScreen.dart';
import 'package:flutter_network/ui/specialties/SpecialityViewModel.dart';
import 'package:flutter_network/ui/specialties/SpecialtiesList.dart';
import 'package:provider/provider.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Root:
      return MaterialPageRoute(builder: (context) => SearchWidget());

    case FirstWidgetRoute:
      return MaterialPageRoute(builder: (context) => SearchWidget());

    case DoctorScreenRoute:
      return MaterialPageRoute(builder: (context) => DoctorScreen());

    case SpecialtiesListRoute:
      return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
              create: (_) => SpecialityViewModel(),
              child: SpecialtiesList()));

    default:
      return MaterialPageRoute(builder: (context) => SearchWidget());
  }
}
