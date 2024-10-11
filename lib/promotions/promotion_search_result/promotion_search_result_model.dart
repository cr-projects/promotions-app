import '/backend/supabase/supabase.dart';
import '/cross/menu/menu_widget.dart';
import '/cross/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'promotion_search_result_widget.dart' show PromotionSearchResultWidget;
import 'package:flutter/material.dart';

class PromotionSearchResultModel
    extends FlutterFlowModel<PromotionSearchResultWidget> {
  ///  Local state fields for this page.

  List<PromotionViewRow> promotions = [];
  void addToPromotions(PromotionViewRow item) => promotions.add(item);
  void removeFromPromotions(PromotionViewRow item) => promotions.remove(item);
  void removeAtIndexFromPromotions(int index) => promotions.removeAt(index);
  void insertAtIndexInPromotions(int index, PromotionViewRow item) =>
      promotions.insert(index, item);
  void updatePromotionsAtIndex(
          int index, Function(PromotionViewRow) updateFn) =>
      promotions[index] = updateFn(promotions[index]);

  String? productTypeName;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in promotionSearchResult widget.
  List<ProductTypeRow>? productTypeNameById;
  // Model for menu component.
  late MenuModel menuModel;
  // Model for sideBar component.
  late SideBarModel sideBarModel;

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
