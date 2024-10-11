import '/backend/supabase/supabase.dart';
import '/cross/menu/menu_widget.dart';
import '/cross/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'products_admin_widget.dart' show ProductsAdminWidget;
import 'package:flutter/material.dart';

class ProductsAdminModel extends FlutterFlowModel<ProductsAdminWidget> {
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

  // Stores action output result for [Backend Call - Query Rows] action in productsAdmin widget.
  List<ProductViewRow>? productSupabaseViewList;
  // Model for menu component.
  late MenuModel menuModel;
  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // Stores action output result for [Bottom Sheet - productAddComponent] action in addButton widget.
  bool? addProductComponentResult;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProductViewRow>();
  // Stores action output result for [Backend Call - Query Rows] action in editButton widget.
  List<ProductViewRow>? productViewAfterUpdate;
  // Stores action output result for [Backend Call - Query Rows] action in delButton widget.
  List<ProductViewRow>? productAfterDeleteQuery;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    sideBarModel.dispose();
    paginatedDataTableController.dispose();
  }
}
