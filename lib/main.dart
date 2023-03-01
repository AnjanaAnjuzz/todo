import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_page.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  build (BuildContext context){
    return MaterialApp(
      home:HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}