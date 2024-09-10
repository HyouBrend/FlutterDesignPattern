import 'package:equatable/equatable.dart';

abstract class ListDropdownEvent extends Equatable {
  const ListDropdownEvent();
}

class FetchListDropdownData extends ListDropdownEvent {
  @override
  List<Object?> get props => [];
}

class ChangeMarkdown extends ListDropdownEvent {
  final int resourceId;

  const ChangeMarkdown(this.resourceId);

  @override
  List<Object?> get props => [resourceId];
}
