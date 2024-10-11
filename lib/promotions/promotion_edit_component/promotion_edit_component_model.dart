import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/promotions/aditional_discount_type_component/aditional_discount_type_component_widget.dart';
import '/promotions/aditional_payment_method_type_component/aditional_payment_method_type_component_widget.dart';
import '/promotions/card_component/card_component_widget.dart';
import '/promotions/days_component/days_component_widget.dart';
import '/promotions/discount_type_component/discount_type_component_widget.dart';
import '/promotions/finantial_entity_component/finantial_entity_component_widget.dart';
import '/promotions/finantial_entity_type_component/finantial_entity_type_component_widget.dart';
import '/promotions/frecuence_component/frecuence_component_widget.dart';
import '/promotions/payment_media_type_component/payment_media_type_component_widget.dart';
import '/promotions/payment_method_type_component/payment_method_type_component_widget.dart';
import 'promotion_edit_component_widget.dart' show PromotionEditComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class PromotionEditComponentModel
    extends FlutterFlowModel<PromotionEditComponentWidget> {
  ///  Local state fields for this component.

  List<ProductRow> productList = [];
  void addToProductList(ProductRow item) => productList.add(item);
  void removeFromProductList(ProductRow item) => productList.remove(item);
  void removeAtIndexFromProductList(int index) => productList.removeAt(index);
  void insertAtIndexInProductList(int index, ProductRow item) =>
      productList.insert(index, item);
  void updateProductListAtIndex(int index, Function(ProductRow) updateFn) =>
      productList[index] = updateFn(productList[index]);

  List<PaymentMediaRow> paymentMedias = [];
  void addToPaymentMedias(PaymentMediaRow item) => paymentMedias.add(item);
  void removeFromPaymentMedias(PaymentMediaRow item) =>
      paymentMedias.remove(item);
  void removeAtIndexFromPaymentMedias(int index) =>
      paymentMedias.removeAt(index);
  void insertAtIndexInPaymentMedias(int index, PaymentMediaRow item) =>
      paymentMedias.insert(index, item);
  void updatePaymentMediasAtIndex(
          int index, Function(PaymentMediaRow) updateFn) =>
      paymentMedias[index] = updateFn(paymentMedias[index]);

  PaymentMediaRow? paymentMedia;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  String? _textFieldNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'xw8no77w' /* Nombre de producto requerido */,
      );
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    return null;
  }

  // State field(s) for promo_link widget.
  FocusNode? promoLinkFocusNode;
  TextEditingController? promoLinkTextController;
  String? Function(BuildContext, String?)? promoLinkTextControllerValidator;
  // State field(s) for fechaInicio widget.
  FocusNode? fechaInicioFocusNode;
  TextEditingController? fechaInicioTextController;
  String? Function(BuildContext, String?)? fechaInicioTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for fechaFin widget.
  FocusNode? fechaFinFocusNode;
  TextEditingController? fechaFinTextController;
  String? Function(BuildContext, String?)? fechaFinTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for DropDownBrand widget.
  int? dropDownBrandValue;
  FormFieldController<int>? dropDownBrandValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDownBrand widget.
  List<ProductRow>? productListByBrand;
  // State field(s) for DropDownProduct widget.
  int? dropDownProductValue;
  FormFieldController<int>? dropDownProductValueController;
  // Stores action output result for [Bottom Sheet - productAddComponent] action in IconButtonAddProduct widget.
  bool? addProductComponentResult;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for payment_method_type_component component.
  late PaymentMethodTypeComponentModel paymentMethodTypeComponentModel;
  // Model for payment_media_type_component component.
  late PaymentMediaTypeComponentModel paymentMediaTypeComponentModel;
  // Model for card_component component.
  late CardComponentModel cardComponentModel;
  // Model for finantial_entity_type_component component.
  late FinantialEntityTypeComponentModel finantialEntityTypeComponentModel;
  // Model for finantial_entity_component component.
  late FinantialEntityComponentModel finantialEntityComponentModel;
  // State field(s) for ExpandableDiscount widget.
  late ExpandableController expandableDiscountExpandableController;

  // Model for discount_type_component component.
  late DiscountTypeComponentModel discountTypeComponentModel;
  // Model for days_component component.
  late DaysComponentModel daysComponentModel;
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
  // Model for frecuence_component component.
  late FrecuenceComponentModel frecuenceComponentModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Model for aditional_payment_method_type_component component.
  late AditionalPaymentMethodTypeComponentModel
      aditionalPaymentMethodTypeComponentModel;
  // Model for aditional_discount_type_component component.
  late AditionalDiscountTypeComponentModel aditionalDiscountTypeComponentModel;
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
  // State field(s) for TextFieldComments widget.
  FocusNode? textFieldCommentsFocusNode;
  TextEditingController? textFieldCommentsTextController;
  String? Function(BuildContext, String?)?
      textFieldCommentsTextControllerValidator;
  // State field(s) for TextFieldConditions widget.
  FocusNode? textFieldConditionsFocusNode;
  TextEditingController? textFieldConditionsTextController;
  String? Function(BuildContext, String?)?
      textFieldConditionsTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in IconButton widget.
  List<PromotionRow>? updateProduct;
  // Stores action output result for [Backend Call - API (FnInsertRelPromotionPaymentMedia)] action in IconButton widget.
  ApiCallResponse? insert;

  @override
  void initState(BuildContext context) {
    textFieldNameTextControllerValidator =
        _textFieldNameTextControllerValidator;
    paymentMethodTypeComponentModel =
        createModel(context, () => PaymentMethodTypeComponentModel());
    paymentMediaTypeComponentModel =
        createModel(context, () => PaymentMediaTypeComponentModel());
    cardComponentModel = createModel(context, () => CardComponentModel());
    finantialEntityTypeComponentModel =
        createModel(context, () => FinantialEntityTypeComponentModel());
    finantialEntityComponentModel =
        createModel(context, () => FinantialEntityComponentModel());
    discountTypeComponentModel =
        createModel(context, () => DiscountTypeComponentModel());
    daysComponentModel = createModel(context, () => DaysComponentModel());
    frecuenceComponentModel =
        createModel(context, () => FrecuenceComponentModel());
    aditionalPaymentMethodTypeComponentModel =
        createModel(context, () => AditionalPaymentMethodTypeComponentModel());
    aditionalDiscountTypeComponentModel =
        createModel(context, () => AditionalDiscountTypeComponentModel());
  }

  @override
  void dispose() {
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    promoLinkFocusNode?.dispose();
    promoLinkTextController?.dispose();

    fechaInicioFocusNode?.dispose();
    fechaInicioTextController?.dispose();

    fechaFinFocusNode?.dispose();
    fechaFinTextController?.dispose();

    expandableExpandableController1.dispose();
    paymentMethodTypeComponentModel.dispose();
    paymentMediaTypeComponentModel.dispose();
    cardComponentModel.dispose();
    finantialEntityTypeComponentModel.dispose();
    finantialEntityComponentModel.dispose();
    expandableDiscountExpandableController.dispose();
    discountTypeComponentModel.dispose();
    daysComponentModel.dispose();
    amountDiscountFocusNode1?.dispose();
    amountDiscountTextController1?.dispose();

    topAmountDiscountFocusNode?.dispose();
    topAmountDiscountTextController?.dispose();

    frecuenceComponentModel.dispose();
    expandableExpandableController2.dispose();
    aditionalPaymentMethodTypeComponentModel.dispose();
    aditionalDiscountTypeComponentModel.dispose();
    amountDiscountFocusNode2?.dispose();
    amountDiscountTextController2?.dispose();

    amountDiscountFocusNode3?.dispose();
    amountDiscountTextController3?.dispose();

    aditionalCommentsFocusNode?.dispose();
    aditionalCommentsTextController?.dispose();

    textFieldCommentsFocusNode?.dispose();
    textFieldCommentsTextController?.dispose();

    textFieldConditionsFocusNode?.dispose();
    textFieldConditionsTextController?.dispose();
  }
}
