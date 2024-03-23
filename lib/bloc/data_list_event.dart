part of 'data_list_bloc.dart';

@freezed
class DataListEvent with _$DataListEvent {
  const factory DataListEvent.started() = Started;
  const factory DataListEvent.initialIndex(int initialIndex) = InitialIndex;
  const factory DataListEvent.increment(int index) = Increment;
  const factory DataListEvent.decrement(int index) = Decrement;
  const factory DataListEvent.updateCount(int count) = updateCount;
}