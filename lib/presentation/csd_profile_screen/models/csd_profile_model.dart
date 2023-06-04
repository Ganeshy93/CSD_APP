// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'csd_profile_item_model.dart';

/// This class defines the variables used in the [csd_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CsdProfileModel extends Equatable {
  CsdProfileModel({this.csdProfileItemList = const []});

  List<CsdProfileItemModel> csdProfileItemList;

  CsdProfileModel copyWith({List<CsdProfileItemModel>? csdProfileItemList}) {
    return CsdProfileModel(
      csdProfileItemList: csdProfileItemList ?? this.csdProfileItemList,
    );
  }

  @override
  List<Object?> get props => [csdProfileItemList];
}
