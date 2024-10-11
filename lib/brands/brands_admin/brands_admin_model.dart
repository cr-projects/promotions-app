import '/backend/supabase/supabase.dart';
import '/cross/menu/menu_widget.dart';
import '/cross/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'brands_admin_widget.dart' show BrandsAdminWidget;
import 'package:flutter/material.dart';

class BrandsAdminModel extends FlutterFlowModel<BrandsAdminWidget> {
  ///  Local state fields for this page.

  List<BrandViewRow> brandListPageVar = [];
  void addToBrandListPageVar(BrandViewRow item) => brandListPageVar.add(item);
  void removeFromBrandListPageVar(BrandViewRow item) =>
      brandListPageVar.remove(item);
  void removeAtIndexFromBrandListPageVar(int index) =>
      brandListPageVar.removeAt(index);
  void insertAtIndexInBrandListPageVar(int index, BrandViewRow item) =>
      brandListPageVar.insert(index, item);
  void updateBrandListPageVarAtIndex(
          int index, Function(BrandViewRow) updateFn) =>
      brandListPageVar[index] = updateFn(brandListPageVar[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in brandsAdmin widget.
  List<BrandViewRow>? brandSupabaseViewList;
  // Model for menu component.
  late MenuModel menuModel;
  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // Stores action output result for [Bottom Sheet - productAddComponent] action in IconButton widget.
  bool? addProductComponentResult;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<BrandViewRow>();
  // State field(s) for Checkbox widget.
  Map<BrandViewRow, bool> checkboxValueMap = {};
  List<BrandViewRow> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Stores action output result for [Backend Call - Query Rows] action in ButtonEdit widget.
  List<BrandViewRow>? brandViewAfterUpdate;
  // Stores action output result for [Backend Call - Delete Row(s)] action in ButtonDel widget.
  List<BrandRow>? brandDeleted;
  // Stores action output result for [Backend Call - Query Rows] action in ButtonDel widget.
  List<BrandViewRow>? brandAfterDeleteQuery;

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
