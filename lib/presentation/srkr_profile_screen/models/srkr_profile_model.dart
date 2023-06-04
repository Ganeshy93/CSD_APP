// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'srkr_profile_item_model.dart';

/// This class defines the variables used in the [srkr_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SrkrProfileModel extends Equatable {
  SrkrProfileModel({this.srkrProfileItemList = const []});

  List<SrkrProfileItemModel> srkrProfileItemList;

  SrkrProfileModel copyWith({List<SrkrProfileItemModel>? srkrProfileItemList}) {
    return SrkrProfileModel(
      srkrProfileItemList: srkrProfileItemList ?? this.srkrProfileItemList,
    );
  }

  @override
  List<Object?> get props => [srkrProfileItemList];
}
