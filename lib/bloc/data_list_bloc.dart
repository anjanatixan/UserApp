import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sampleuser/helper/utils.dart';
import 'package:sampleuser/model/user_model.dart';
import 'package:sampleuser/repo/user_repo.dart';
part 'data_list_event.dart';
part 'data_list_state.dart';
part 'data_list_bloc.freezed.dart';

class DataListBloc extends Bloc<DataListEvent, DataListState> {
  UserRepo? userRepo;
  int count = 20;


  DataListBloc() : super(DataListState(status: BlocStatus.initial)) {
    on<Started>((event, emit) async {
      userRepo = UserRepo();

      UserModel? users = await userRepo!.getUserlist(count);
      emit(state.copyWith(userModel: users, status: BlocStatus.success));
    });
   

    on<Increment>((event, emit) {  
      emit(state.copyWith(index: event.index+1));
    });

    on<Decrement>((event, emit) {
      emit(state.copyWith(index: event.index-1));
    });

    on<InitialIndex>((event, emit) {
      emit(state.copyWith(index: event.initialIndex));
    });

    on<updateCount>((event, emit) {
      emit(state.copyWith(count: event.count));
    });
  }
  }
    
    
  // start(FetchUserDataList event, emit) {
  //   // int data=    event.count;
  //   // emit(state.copyWith(count:data));
  // }

