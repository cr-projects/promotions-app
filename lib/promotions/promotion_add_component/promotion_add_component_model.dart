import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'promotion_add_component_widget.dart' show PromotionAddComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class PromotionAddComponentModel
    extends FlutterFlowModel<PromotionAddComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for promo_name widget.
  FocusNode? promoNameFocusNode;
  TextEditingController? promoNameTextController;
  String? Function(BuildContext, String?)? promoNameTextControllerValidator;
  // State field(s) for promo_link widget.
  FocusNode? promoLinkFocusNode;
  TextEditingController? promoLinkTextController;
  String? Function(BuildContext, String?)? promoLinkTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for DropDownBrand widget.
  int? dropDownBrandValue;
  FormFieldController<int>? dropDownBrandValueController;
  // Stores action output result for [Backend Call - API (ProductsByBrandId)] action in DropDownBrand widget.
  ApiCallResponse? productListResult;
  // State field(s) for DropDownProduct widget.
  int? dropDownProductValue;
  FormFieldController<int>? dropDownProductValueController;
  // Stores action output result for [Bottom Sheet - productAddComponent] action in IconButtonAddProduct widget.
  bool? addProductComponentResult;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for DropDownPaymentMehods widget.
  int? dropDownPaymentMehodsValue;
  FormFieldController<int>? dropDownPaymentMehodsValueController;
  // State field(s) for DropDownPaymentMediaType widget.
  int? dropDownPaymentMediaTypeValue;
  FormFieldController<int>? dropDownPaymentMediaTypeValueController;
  // State field(s) for DropDownCards widget.
  int? dropDownCardsValue;
  FormFieldController<int>? dropDownCardsValueController;
  // State field(s) for DropDownTipoEntidad widget.
  int? dropDownTipoEntidadValue;
  FormFieldController<int>? dropDownTipoEntidadValueController;
  // Stores action output result for [Backend Call - API (FinantiaEntitiesByCardAndFinantialEntityType)] action in DropDownTipoEntidad widget.
  ApiCallResponse? finantialEntityAPIResponse;
  // State field(s) for DropDownBank widget.
  int? dropDownBankValue;
  FormFieldController<int>? dropDownBankValueController;
  // State field(s) for ExpandableDiscount widget.
  late ExpandableController expandableDiscountExpandableController;

  // State field(s) for DropDownDiscountTypes widget.
  int? dropDownDiscountTypesValue;
  FormFieldController<int>? dropDownDiscountTypesValueController;
  // State field(s) for DropDownDays widget.
  List<int>? dropDownDaysValue;
  FormFieldController<List<int>>? dropDownDaysValueController;
  // State field(s) for amount_discount widget.
  FocusNode? amountDiscountFocusNode1;
  TextEditingController? amountDiscountTextController1;
  String? Function(BuildContext, String?)?
      amountDiscountTextController1Validator;
  // State field(s) for top_amount_discount widget.
  FocusNode? topAmountDiscountFocusNode;
  TextEditingController? topAmountDiscountTextController;
  String? Function(BuildContext, String?)?
      topAmountDiscountTextControllerValidator;
  // State field(s) for DropDownFrecuence widget.
  int? dropDownFrecuenceValue;
  FormFieldController<int>? dropDownFrecuenceValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for DropDownAditionalMehods widget.
  List<int>? dropDownAditionalMehodsValue;
  FormFieldController<List<int>>? dropDownAditionalMehodsValueController;
  // State field(s) for DropDownAditionalDiscountType widget.
  int? dropDownAditionalDiscountTypeValue;
  FormFieldController<int>? dropDownAditionalDiscountTypeValueController;
  // State field(s) for amount_discount widget.
  FocusNode? amountDiscountFocusNode2;
  TextEditingController? amountDiscountTextController2;
  String? Function(BuildContext, String?)?
      amountDiscountTextController2Validator;
  // State field(s) for amount_discount widget.
  FocusNode? amountDiscountFocusNode3;
  TextEditingController? amountDiscountTextController3;
  String? Function(BuildContext, String?)?
      amountDiscountTextController3Validator;
  // State field(s) for aditionalComments widget.
  FocusNode? aditionalCommentsFocusNode;
  TextEditingController? aditionalCommentsTextController;
  String? Function(BuildContext, String?)?
      aditionalCommentsTextControllerValidator;
  // State field(s) for comments widget.
  FocusNode? commentsFocusNode;
  TextEditingController? commentsTextController;
  String? Function(BuildContext, String?)? commentsTextControllerValidator;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? formValid;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PromotionRow? postResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    promoNameFocusNode?.dispose();
    promoNameTextController?.dispose();

    promoLinkFocusNode?.dispose();
    promoLinkTextController?.dispose();

    expandableExpandableController1.dispose();
    expandableDiscountExpandableController.dispose();
    amountDiscountFocusNode1?.dispose();
    amountDiscountTextController1?.dispose();

    topAmountDiscountFocusNode?.dispose();
    topAmountDiscountTextController?.dispose();

    expandableExpandableController2.dispose();
    amountDiscountFocusNode2?.dispose();
    amountDiscountTextController2?.dispose();

    amountDiscountFocusNode3?.dispose();
    amountDiscountTextController3?.dispose();

    aditionalCommentsFocusNode?.dispose();
    aditionalCommentsTextController?.dispose();

    commentsFocusNode?.dispose();
    commentsTextController?.dispose();
  }
}
