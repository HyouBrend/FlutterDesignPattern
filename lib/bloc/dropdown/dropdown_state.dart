import 'package:equatable/equatable.dart';

abstract class ListDropdownContentState extends Equatable {
  const ListDropdownContentState();

  @override
  List<Object> get props => [];
}

class ListDropdownContentInitial extends ListDropdownContentState {}

class ListDropdownContentEmpty extends ListDropdownContentState {}

class ListDropdownContentLoading extends ListDropdownContentState {}

class ListDropdownContentError extends ListDropdownContentState {
  final String errMessage;

  const ListDropdownContentError(this.errMessage);

  @override
  List<Object> get props => [errMessage];
}

class ListDropdownContentHasData extends ListDropdownContentState {
  final dynamic data;

  const ListDropdownContentHasData(this.data);

  @override
  List<Object> get props => [data];
}
