import 'dart:developer';

import 'package:blocexamples/checkbox/bloc/checkbox_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBoxListTileDemo extends StatefulWidget {
  @override
  CheckBoxListTileDemoState createState() => CheckBoxListTileDemoState();
}

class CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      getList(),
  //     floatingActionButton: Row(children: [
  //       FloatingActionButton(onPressed: (){context.read<CheckboxBloc>().add(Buttonclickevent(false,0));}),
  //       FloatingActionButton(onPressed: (){context.read<CheckboxBloc>().add(Buttonclickevent(true,0));})
  //     ]),
    );
  }


  Widget getList() {
// 
    // return Column(children: [
    //   Text(context.select((CheckboxBloc b) => b.state.checkBoxes[0].name),style: TextStyle(color: context.select((CheckboxBloc b) => b.state.checkBoxes[0].val?Colors.red:Colors.blue),),),
    //   Text(context.select((CheckboxBloc b) => b.state.checkBoxes[1].name)),
    // ],);

    return ListView.builder(
          itemCount: context.select((CheckboxBloc bloc) => bloc.state.checkBoxes.length),
          itemBuilder: (context, index) {
            
            return Builder(
              builder: (context) {
                final data = context.select((CheckboxBloc bloc) => bloc.state.checkBoxes[index]);
                print('Building $index');
                return CheckboxListTile(
                  title: Text(data.name),
                  value: data.val,
                  onChanged: (newValue) {
                    // state.checkBoxes[index]['isChecked']=newValue;
                    log(newValue.toString());
                    context
                      .read<CheckboxBloc>().add(Buttonclickevent(newValue!,index));
                  }
                );
              }
            );
          },
        );
  }
}

