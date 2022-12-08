import 'package:blocexamples/textfeild/bloc/textfeild_bloc.dart';
import 'package:blocexamples/textfeild/bloc/textfeild_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Textchange extends StatelessWidget {
   Textchange({super.key});
TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.grey,
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [Padding(
        padding: const EdgeInsets.all(15),
        child: Card(
          child: TextField(
          controller: textEditingController,
          onChanged: (val){
            context.read<TextfeildBloc>().add(OnchnageEvent(textEditingController.text));
          },
            ),
        ),
      ),
      SizedBox(height: 20,),
      BlocBuilder<TextfeildBloc, TextfeildState>(
      builder: (context, state) {
        return Text(state.stateText);
      },
    )],),),);
  }
}