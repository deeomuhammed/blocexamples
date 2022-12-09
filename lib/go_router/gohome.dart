import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class Gohome extends StatelessWidget {
  const Gohome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Gohome'),),body: Center(child: ElevatedButton(onPressed: (){context.go('/page1/hellodeeo');}, child:Text( "go 1")),),);
}}