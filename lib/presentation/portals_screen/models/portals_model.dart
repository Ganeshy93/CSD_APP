// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'portals_item_model.dart';

/// This class defines the variables used in the [portals_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PortalsModel extends Equatable {
  PortalsModel({this.portalsItemList = const []});

  List<PortalsItemModel> portalsItemList;

  PortalsModel copyWith({List<PortalsItemModel>? portalsItemList}) {
    return PortalsModel(
      portalsItemList: portalsItemList ?? this.portalsItemList,
    );
  }

  @override
  List<Object?> get props => [portalsItemList];
}
