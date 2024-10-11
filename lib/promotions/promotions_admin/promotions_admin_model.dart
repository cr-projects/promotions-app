import '/backend/supabase/supabase.dart';
import '/cross/menu/menu_widget.dart';
import '/cross/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'promotions_admin_widget.dart' show PromotionsAdminWidget;
import 'package:flutter/material.dart';

class PromotionsAdminModel extends FlutterFlowModel<PromotionsAdminWidget> {
  ///  Local state fields for this page.

  List<PromotionViewRow> promotionListPageVar = [];
  void addToPromotionListPageVar(PromotionViewRow item) =>
      promotionListPageVar.add(item);
  void removeFromPromotionListPageVar(PromotionViewRow item) =>
      promotionListPageVar.remove(item);
  void removeAtIndexFromPromotionListPageVar(int index) =>
      promotionListPageVar.removeAt(index);
  void insertAtIndexInPromotionListPageVar(int index, PromotionViewRow item) =>
      promotionListPageVar.insert(index, item);
  void updatePromotionListPageVarAtIndex(
          int index, Function(PromotionViewRow) updateFn) =>
      promotionListPageVar[index] = updateFn(promotionListPageVar[index]);

  List<PromotionViewRow> selRows = [];
  void addToSelRows(PromotionViewRow item) => selRows.add(item);
  void removeFromSelRows(PromotionViewRow item) => selRows.remove(item);
  void removeAtIndexFromSelRows(int index) => selRows.removeAt(index);
  void insertAtIndexInSelRows(int index, PromotionViewRow item) =>
      selRows.insert(index, item);
  void updateSelRowsAtIndex(int index, Function(PromotionViewRow) updateFn) =>
      selRows[index] = updateFn(selRows[index]);

  List<int> selDays = [1];
  void addToSelDays(int item) => selDays.add(item);
  void removeFromSelDays(int item) => selDays.remove(item);
  void removeAtIndexFromSelDays(int index) => selDays.removeAt(index);
  void insertAtIndexInSelDays(int index, int item) =>
      selDays.insert(index, item);
  void updateSelDaysAtIndex(int index, Function(int) updateFn) =>
      selDays[index] = updateFn(selDays[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in promotionsAdmin widget.
  List<PromotionViewRow>? promoSupabaseViewList;
  // Model for menu component.
  late MenuModel menuModel;
  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for searchTextField widget.
  FocusNode? searchTextFieldFocusNode;
  TextEditingController? searchTextFieldTextController;
  String? Function(BuildContext, String?)?
      searchTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in searchButton widget.
  List<PromotionViewRow>? promoViewQuery;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<PromotionViewRow>? promoSupabaseAfterAdd;
  // Stores action output result for [Backend Call - Query Rows] action in delButton widget.
  List<PromotionViewRow>? newPromoAfterDel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<PromotionViewRow>();
  // Stores action output result for [Backend Call - Query Rows] action in viewButton widget.
  List<RelPromotionPaymentMediaRow>? paymentMediaIdsByPromotionIdView;
  // Stores action output result for [Backend Call - Query Rows] action in viewButton widget.
  List<PaymentMediaRow>? paymentMediasView;
  // Stores action output result for [Backend Call - Query Rows] action in viewButton widget.
  List<PaymentMediaRow>? finantialPaymenMediaView;
  // Stores action output result for [Backend Call - Query Rows] action in viewButton widget.
  List<FinantialEntityRow>? finantialEntitiesView;
  // Stores action output result for [Backend Call - Query Rows] action in viewButton widget.
  List<RelPromotionPaymentMethodRow>? paymentMethodsByPromotionIdView;
  // Stores action output result for [Backend Call - Query Rows] action in viewButton widget.
  List<PaymentMethodRow>? paymentMethodsView;
  // Stores action output result for [Backend Call - Query Rows] action in viewButton widget.
  List<RelPromotionAditionalPaymentMethodRow>?
      relPromotionPaymentMethodViewList;
  // Stores action output result for [Backend Call - Query Rows] action in viewButton widget.
  List<AditionalPaymentMethodRow>? aditionalPaymentMethodViewList;
  // Stores action output result for [Backend Call - Query Rows] action in viewButton widget.
  List<RelPromotionDayRow>? daysByPromotionIdView;
  // Stores action output result for [Backend Call - Query Rows] action in viewButton widget.
  List<PromotionViewRow>? promotionViewAfterUpdate;
  // Stores action output result for [Backend Call - Query Rows] action in editButton widget.
  List<RelPromotionPaymentMediaRow>? paymentMediaIdsByPromotionId;
  // Stores action output result for [Backend Call - Query Rows] action in editButton widget.
  List<PaymentMediaRow>? paymentMedias;
  // Stores action output result for [Backend Call - Query Rows] action in editButton widget.
  List<PaymentMediaRow>? finantialPaymenMedia;
  // Stores action output result for [Backend Call - Query Rows] action in editButton widget.
  List<FinantialEntityRow>? finantialEntities;
  // Stores action output result for [Backend Call - Query Rows] action in editButton widget.
  List<RelPromotionPaymentMethodRow>? getPaymentMethodsByPromotionId;
  // Stores action output result for [Backend Call - Query Rows] action in editButton widget.
  List<PaymentMethodRow>? paymentMethod;
  // Stores action output result for [Backend Call - Query Rows] action in editButton widget.
  List<RelPromotionAditionalPaymentMethodRow>? relAditionalPaymentMethodList;
  // Stores action output result for [Backend Call - Query Rows] action in editButton widget.
  List<AditionalPaymentMethodRow>? aditionalPaymentMethodList;
  // Stores action output result for [Backend Call - Query Rows] action in editButton widget.
  List<RelPromotionDayRow>? daysByPromotionId;
  // Stores action output result for [Backend Call - Query Rows] action in delButton widget.
  List<PromotionViewRow>? promotionAfterDeleteQuery;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    sideBarModel.dispose();
    searchTextFieldFocusNode?.dispose();
    searchTextFieldTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}
