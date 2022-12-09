// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Gopage2 extends StatelessWidget {
  int number;
   Gopage2({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(number.toString()),),body: Center(child: ElevatedButton(onPressed: (){context.go("/");}, child:Text( "go home")),),);
}}
