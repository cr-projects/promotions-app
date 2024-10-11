import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/cross/menu/menu_widget.dart';
import '/cross/user_side_bar/user_side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'personal_payment_media_widget.dart' show PersonalPaymentMediaWidget;
import 'package:flutter/material.dart';

class PersonalPaymentMediaModel
    extends FlutterFlowModel<PersonalPaymentMediaWidget> {
  ///  Local state fields for this page.

  bool editable = true;

  List<FinantialEntityRow> finantialEntities = [];
  void addToFinantialEntities(FinantialEntityRow item) =>
      finantialEntities.add(item);
  void removeFromFinantialEntities(FinantialEntityRow item) =>
      finantialEntities.remove(item);
  void removeAtIndexFromFinantialEntities(int index) =>
      finantialEntities.removeAt(index);
  void insertAtIndexInFinantialEntities(int index, FinantialEntityRow item) =>
      finantialEntities.insert(index, item);
  void updateFinantialEntitiesAtIndex(
          int index, Function(FinantialEntityRow) updateFn) =>
      finantialEntities[index] = updateFn(finantialEntities[index]);

  ///  State fields for stateful widgets in this page.

  // Model for menu component.
  late MenuModel menuModel;
  // Model for userSideBar component.
  late UserSideBarModel userSideBarModel;
  // State field(s) for CheckboxCash widget.
  bool? checkboxCashValue;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr01;
  // State field(s) for CheckboxAppCash widget.
  bool? checkboxAppCashValue;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr02;
  // State field(s) for DropDownTDVISABank widget.
  List<int>? dropDownTDVISABankValue;
  FormFieldController<List<int>>? dropDownTDVISABankValueController;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr1;
  // State field(s) for DropDownTDVISAFinanc widget.
  List<int>? dropDownTDVISAFinancValue;
  FormFieldController<List<int>>? dropDownTDVISAFinancValueController;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr2;
  // State field(s) for DropDownTDMasterBank widget.
  List<int>? dropDownTDMasterBankValue;
  FormFieldController<List<int>>? dropDownTDMasterBankValueController;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr3;
  // State field(s) for DropDownTDMasterFinantial widget.
  List<int>? dropDownTDMasterFinantialValue;
  FormFieldController<List<int>>? dropDownTDMasterFinantialValueController;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr4;
  // State field(s) for DropDownTDAMEXBankFinantial widget.
  List<int>? dropDownTDAMEXBankFinantialValue;
  FormFieldController<List<int>>? dropDownTDAMEXBankFinantialValueController;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr5;
  // State field(s) for DropDownTCVISABank widget.
  List<int>? dropDownTCVISABankValue;
  FormFieldController<List<int>>? dropDownTCVISABankValueController;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr6;
  // State field(s) for DropDownTCVISAFinantial widget.
  List<int>? dropDownTCVISAFinantialValue;
  FormFieldController<List<int>>? dropDownTCVISAFinantialValueController;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr7;
  // State field(s) for DropDownTCMASTERBank widget.
  List<int>? dropDownTCMASTERBankValue;
  FormFieldController<List<int>>? dropDownTCMASTERBankValueController;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr8;
  // State field(s) for DropDownTCMasterFinantial widget.
  List<int>? dropDownTCMasterFinantialValue;
  FormFieldController<List<int>>? dropDownTCMasterFinantialValueController;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr9;
  // State field(s) for DropDownTCAMEXBank widget.
  List<int>? dropDownTCAMEXBankValue;
  FormFieldController<List<int>>? dropDownTCAMEXBankValueController;
  // Stores action output result for [Backend Call - API (fnInsertRelUserPaymentMedia)] action in IconButton widget.
  ApiCallResponse? apiResulttr10;

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
