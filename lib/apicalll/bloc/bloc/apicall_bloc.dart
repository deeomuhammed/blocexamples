import 'package:bloc/bloc.dart';
import 'package:blocexamples/apicalll/repository.dart';
import 'package:equatable/equatable.dart';

part 'apicall_event.dart';
part 'apicall_state.dart';

class ApicallBloc extends Bloc<ApicallEvent, ApicallState> {
  Userrepository userrepository;

  ApicallBloc(this.userrepository) : super(ApicallLodingstate()) {
    on<ApiloadEvent>((event, emit)async {
   emit(ApicallLodingstate());
   print('hy');

   try {
     final dogs=await userrepository.getdog();
   emit(ApicallLodedstate(dogs));
   } catch (e) {
     
   }

    });
  }
}
