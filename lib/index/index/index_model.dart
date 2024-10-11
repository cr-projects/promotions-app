import '/backend/supabase/supabase.dart';
import '/cross/menu/menu_widget.dart';
import '/cross/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'index_widget.dart' show IndexWidget;
import 'package:flutter/material.dart';

class IndexModel extends FlutterFlowModel<IndexWidget> {
  ///  Local state fields for this page.

  bool compactView = false;

  UsersRow? userDataVar;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in index widget.
  List<UsersRow>? userData;
  // Stores action output result for [Backend Call - Insert Row] action in index widget.
  UsersRow? userAfterInsert;
  // Model for menu component.
  late MenuModel menuModel;
  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for DropDownProductTypeId widget.
  int? dropDownProductTypeIdValue;
  FormFieldController<int>? dropDownProductTypeIdValueController;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    sideBarModel.dispose();
  }
}
