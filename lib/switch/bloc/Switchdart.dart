import 'package:blocexamples/switch/bloc/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Switc extends StatelessWidget {
  const Switc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: context.select((SwitchBloc bloc) => bloc.state.checkBoxes.length),
          itemBuilder: (ctx, index) {
            return BlocBuilder<SwitchBloc, SwitchState>(
              builder: (context, state) {
                return SwitchListTile(
                  title:  Text( state.checkBoxes[index].name),
                  value: state.checkBoxes[index].val,
                  onChanged: (bool value) {
                    context
                        .read<SwitchBloc>()
                        .add(Switchclickevent(value, index));
                  },
                  secondary: const Icon(Icons.lightbulb_outline),
                );
              },
            );
          }),
    );
  }
}
