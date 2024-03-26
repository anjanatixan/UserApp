import 'package:get_it/get_it.dart';
import 'package:sampleuser/bloc/data_list_bloc.dart';



setupGetIt(){
  GetIt.I.registerSingleton<DataListBloc>(DataListBloc());
}