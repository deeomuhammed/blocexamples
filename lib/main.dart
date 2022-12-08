import 'package:blocexamples/apicalll/bloc/bloc/apicall_bloc.dart';
import 'package:blocexamples/apicalll/dogpage.dart';
import 'package:blocexamples/apicalll/repository.dart';
import 'package:blocexamples/checkbox/bloc/checkbox_bloc.dart';
import 'package:blocexamples/checkbox/checkbox.dart';
import 'package:blocexamples/counter/logic/counter/counter_bloc.dart';
import 'package:blocexamples/counter/screen/counter.dart';
import 'package:blocexamples/switch/bloc/Switchdart.dart';
import 'package:blocexamples/switch/bloc/switch_bloc.dart';
import 'package:blocexamples/textfeild/bloc/textfeild_bloc.dart';
import 'package:blocexamples/textfeild/textchange.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

// api app
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return RepositoryProvider(
//       create: (context) => Userrepository(),
//       child: BlocProvider(
//         // lazy: false,
//         create: (context) =>
//             ApicallBloc(RepositoryProvider.of<Userrepository>(context))
//               ..add(ApiloadEvent()),
//         child: MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Flutter Demo',
//             theme: ThemeData(
//               primarySwatch: Colors.blue,
//             ),
//             home: DogPage()),
//       ),
//     );
//   }
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return
//      BlocProvider(

//         create: (context) =>
//             CheckboxBloc(),

//         child:
//         MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Flutter Demo',
//             theme: ThemeData(
//               primarySwatch: Colors.blue,
//             ),
//             home: CheckBoxListTileDemo())

//     )
//     ;
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextfeildBloc(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Textchange()),
    );
  }
}
