import 'package:blocexamples/apicalll/bloc/bloc/apicall_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DogPage extends StatelessWidget {
  const DogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ApicallBloc, ApicallState>(
        builder: (context, state) {
          print(state);
          if(state is ApicallLodingstate){return Center(child: CircularProgressIndicator(),);}
                  if(state is ApicallLodedstate){return Center(child:Container(height: 200,width: 200, child: Image.network(state.dogs.message!)),);}
          else{
            return Container();
          }
        }
      
         
      ),
    );
  }
}
