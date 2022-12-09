import 'package:blocexamples/go_router/eerorgo.dart';
import 'package:blocexamples/go_router/gohome.dart';
import 'package:blocexamples/go_router/gopage1.dart';
import 'package:blocexamples/go_router/gopage2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter router =GoRouter(
  errorBuilder: (context, state) => Erroego(),
  routes:[
  
GoRoute
(path: "/",
builder: (BuildContext context,GoRouterState state) => Gohome()
,routes: [
  GoRoute(path: "page1/:string",builder: (context, state) => Gopage1(string: state.params["string"]!,),),
    GoRoute(path: "page2",builder: (context, state) => Gopage2(number:int.parse(state.extra.toString()) ),),
]
)

]);