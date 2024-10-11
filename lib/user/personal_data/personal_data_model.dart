import '/backend/supabase/supabase.dart';
import '/cross/menu/menu_widget.dart';
import '/cross/user_side_bar/user_side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'personal_data_widget.dart' show PersonalDataWidget;
import 'package:flutter/material.dart';

class PersonalDataModel extends FlutterFlowModel<PersonalDataWidget> {
  ///  Local state fields for this page.

  List<ProductViewRow> productListPageVar = [];
  void addToProductListPageVar(ProductViewRow item) =>
      productListPageVar.add(item);
  void removeFromProductListPageVar(ProductViewRow item) =>
      productListPageVar.remove(item);
  void removeAtIndexFromProductListPageVar(int index) =>
      productListPageVar.removeAt(index);
  void insertAtIndexInProductListPageVar(int index, ProductViewRow item) =>
      productListPageVar.insert(index, item);
  void updateProductListPageVarAtIndex(
          int index, Function(ProductViewRow) updateFn) =>
      productListPageVar[index] = updateFn(productListPageVar[index]);

  bool editable = true;

  UsersRow? userDataVar;

  ///  State fields for stateful widgets in this page.

  // Model for menu component.
  late MenuModel menuModel;
  // Model for userSideBar component.
  late UserSideBarModel userSideBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    userSideBarModel = createModel(context, () => UserSideBarModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    userSideBarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
