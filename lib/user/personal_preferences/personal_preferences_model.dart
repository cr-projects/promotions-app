import '/backend/supabase/supabase.dart';
import '/cross/menu/menu_widget.dart';
import '/cross/user_side_bar/user_side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'personal_preferences_widget.dart' show PersonalPreferencesWidget;
import 'package:flutter/material.dart';

class PersonalPreferencesModel
    extends FlutterFlowModel<PersonalPreferencesWidget> {
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

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in personalPreferences widget.
  List<UsersRow>? userData;
  // Model for menu component.
  late MenuModel menuModel;
  // Model for userSideBar component.
  late UserSideBarModel userSideBarModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    userSideBarModel = createModel(context, () => UserSideBarModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    userSideBarModel.dispose();
  }
}
