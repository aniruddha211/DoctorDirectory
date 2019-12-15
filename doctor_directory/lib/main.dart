import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_network/constants/route_constants.dart';
import 'package:flutter_network/core/LocalDB/DoctorDirDB.dart';
import 'package:flutter_network/core/router_utility.dart' as router;
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        Provider<DoctorDirDB>(create: (_) => DoctorDirDB()),
      ],
      child: DoctorDirectoryApp(),
    ));

class DoctorDirectoryApp extends StatefulWidget {
  @override
  _DoctorDirectoryAppState createState() => _DoctorDirectoryAppState();
}

class _DoctorDirectoryAppState extends State<DoctorDirectoryApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, //top bar color
      statusBarIconBrightness: Brightness.dark, //top bar icons
      systemNavigationBarColor: Colors.white, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
    ));
    return MaterialApp(
      title: 'Better doctor',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Color(0xFF8d89cc),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Doctor Directory"),
          centerTitle: true,
        ),
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: DoctorScreenRoute,
    );
  }
}
