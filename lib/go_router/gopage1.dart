// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Gopage1 extends StatelessWidget {
  String string;
   Gopage1({
    Key? key,
    required this.string,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(string),),body: Center(child: ElevatedButton(onPressed: (){context.go('/page2',extra: 203);}, child:Text( "go 2")),),);
}}
