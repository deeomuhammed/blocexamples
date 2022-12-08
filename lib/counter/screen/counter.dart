
import 'package:blocexamples/counter/logic/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class Counterpage extends StatelessWidget {
  const Counterpage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
              title: Text('Counter App'),
            ),
            body: Builder(
              builder: (context) {
              print('outer builder');
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'COUNT:',
                      ),
        //             BlocBuilder<CounterBloc, CounterState>(
        //               //con6tex.select
        // builder: (context, state) {
        //   print('bloc builder');
        //   if(state is Counterready){

        //   return 
                   Builder(
                     builder: (context) {
                      print('inner ');
                      bool s= context.select(
                               (CounterBloc bloc) =>bloc.state is Counterready);
                      
                       return s? Text(
                        context.select(
                               (CounterBloc bloc) =>(bloc.state as Counterready).countvalue.toString()),
                                   ):Container();
                     }
                   )
                    
                      // ;}else{return Container();}})
                    ],
                  ),
                );
              }
            ),
            persistentFooterButtons: [
              FloatingActionButton(
                onPressed: (() {
             context.read<CounterBloc>().add(Decrement());
                }),
               
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: (() {
                       context.read<CounterBloc>().add(Increamenrt());
                }),
            
                child: const Icon(Icons.add),
              ),
                   FloatingActionButton(
                onPressed: (() {
                      context.read<CounterBloc>().add(Reset());
                }),
            
                child: const Text('Reset'),
              ),
            ],
          
        
      
    );
  }
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}