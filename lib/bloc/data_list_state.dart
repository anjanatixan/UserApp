part of 'data_list_bloc.dart';

@freezed
class DataListState with _$DataListState {
  const factory DataListState(
      {required BlocStatus status,
      int? index,
      int? initialIndex,
      int? count,
      UserModel? userModel}) = _DataListState;
}
