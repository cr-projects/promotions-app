import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/products/product_add_component/product_add_component_widget.dart';
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
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'promotion_edit_component_model.dart';
export 'promotion_edit_component_model.dart';

class PromotionEditComponentWidget extends StatefulWidget {
  const PromotionEditComponentWidget({
    super.key,
    required this.promotion,
    required this.promotionTitle,
    required this.promotionsReadOnly,
    required this.paymentMediaList,
    this.finantialEntity,
    required this.selDays,
    required this.paymentMethod,
    this.paymentMedia,
    required this.aditionalPaymentMethodList,
  });

  final PromotionViewRow? promotion;
  final String? promotionTitle;
  final bool? promotionsReadOnly;
  final List<PaymentMediaRow>? paymentMediaList;
  final FinantialEntityRow? finantialEntity;
  final List<int>? selDays;
  final List<PaymentMethodRow>? paymentMethod;
  final PaymentMediaRow? paymentMedia;
  final List<AditionalPaymentMethodRow>? aditionalPaymentMethodList;

  @override
  State<PromotionEditComponentWidget> createState() =>
      _PromotionEditComponentWidgetState();
}

class _PromotionEditComponentWidgetState
    extends State<PromotionEditComponentWidget> {
  late PromotionEditComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PromotionEditComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await RelPromotionPaymentMediaTable().delete(
        matchingRows: (rows) => rows
            .eq(
              'promotion_id',
              widget.promotion?.id,
            )
            .eq(
              'active',
              false,
            ),
      );
      FFAppState().promotionsEditViewTitle = widget.promotionTitle!;
      safeSetState(() {});
      FFAppState().promotionsReadOnly = widget.promotionsReadOnly!;
      safeSetState(() {});
    });

    _model.textFieldNameTextController ??=
        TextEditingController(text: widget.promotion?.name);
    _model.textFieldNameFocusNode ??= FocusNode();

    _model.promoLinkTextController ??= TextEditingController();
    _model.promoLinkFocusNode ??= FocusNode();

    _model.fechaInicioTextController ??= TextEditingController(
        text: widget.promotion?.promotionDiscountStartDate);
    _model.fechaInicioFocusNode ??= FocusNode();

    _model.fechaFinTextController ??= TextEditingController(
        text: widget.promotion?.promotionDiscountEndDate);
    _model.fechaFinFocusNode ??= FocusNode();

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableDiscountExpandableController =
        ExpandableController(initialExpanded: false);
    _model.amountDiscountTextController1 ??= TextEditingController(
        text: widget.promotion?.promotionDiscountQuantity?.toString());
    _model.amountDiscountFocusNode1 ??= FocusNode();

    _model.topAmountDiscountTextController ??= TextEditingController(
        text: widget.promotion?.promotionDiscountQuantityTop?.toString());
    _model.topAmountDiscountFocusNode ??= FocusNode();

    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.amountDiscountTextController2 ??= TextEditingController(
        text: widget.promotion?.aditionalDiscountAmount?.toString());
    _model.amountDiscountFocusNode2 ??= FocusNode();

    _model.amountDiscountTextController3 ??= TextEditingController(
        text: widget.promotion?.aditionalDiscountTop?.toString());
    _model.amountDiscountFocusNode3 ??= FocusNode();

    _model.aditionalCommentsTextController ??=
        TextEditingController(text: widget.promotion?.aditionalComments);
    _model.aditionalCommentsFocusNode ??= FocusNode();

    _model.textFieldCommentsTextController ??=
        TextEditingController(text: widget.promotion?.comments);
    _model.textFieldCommentsFocusNode ??= FocusNode();

    _model.textFieldConditionsTextController ??=
        TextEditingController(text: widget.promotion?.conditions);
    _model.textFieldConditionsFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primary,
                            FlutterFlowTheme.of(context).secondary
                          ],
                          stops: const [0.0, 1.0],
                          begin: const AlignmentDirectional(0.0, -1.0),
                          end: const AlignmentDirectional(0, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Flexible(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.95,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 20.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 50.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_backspace,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 40.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              FFAppState()
                                                                  .promotionsEditViewTitle,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Flexible(
                                                            child: Form(
                                                              key: _model
                                                                  .formKey,
                                                              autovalidateMode:
                                                                  AutovalidateMode
                                                                      .disabled,
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Container(
                                                                                      height: FFAppConstants.dropDownHighNormal.toDouble(),
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      child: TextFormField(
                                                                                        controller: _model.textFieldNameTextController,
                                                                                        focusNode: _model.textFieldNameFocusNode,
                                                                                        autofocus: true,
                                                                                        readOnly: FFAppState().promotionsReadOnly,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          alignLabelWithHint: true,
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        validator: _model.textFieldNameTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(-1.0, -1.0),
                                                                                      child: Container(
                                                                                        height: FFAppConstants.dropDownHighNormal.toDouble(),
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                            child: SizedBox(
                                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                              child: TextFormField(
                                                                                                controller: _model.promoLinkTextController,
                                                                                                focusNode: _model.promoLinkFocusNode,
                                                                                                autofocus: true,
                                                                                                autofillHints: const [
                                                                                                  AutofillHints.name
                                                                                                ],
                                                                                                readOnly: FFAppState().promotionsReadOnly,
                                                                                                obscureText: false,
                                                                                                decoration: InputDecoration(
                                                                                                  labelText: FFLocalizations.of(context).getText(
                                                                                                    '0bodbbmi' /* Link a información de la promo */,
                                                                                                  ),
                                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                        fontFamily: 'Readex Pro',
                                                                                                        fontSize: 12.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                  enabledBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                  ),
                                                                                                  focusedBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                  ),
                                                                                                  errorBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                  ),
                                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                  ),
                                                                                                  filled: true,
                                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  contentPadding: const EdgeInsets.all(10.0),
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                keyboardType: TextInputType.emailAddress,
                                                                                                cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                                validator: _model.promoLinkTextControllerValidator.asValidator(context),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Container(
                                                                                      height: 50.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Flexible(
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Flexible(
                                                                                                        child: Align(
                                                                                                          alignment: const AlignmentDirectional(0.0, -1.0),
                                                                                                          child: Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'gwztidh3' /* Fecha Inicio */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Flexible(
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Flexible(
                                                                                                          child: Align(
                                                                                                            alignment: const AlignmentDirectional(0.0, -1.0),
                                                                                                            child: Container(
                                                                                                              height: 40.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              ),
                                                                                                              child: Align(
                                                                                                                alignment: const AlignmentDirectional(0.0, -1.0),
                                                                                                                child: Padding(
                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                  child: TextFormField(
                                                                                                                    controller: _model.fechaInicioTextController,
                                                                                                                    focusNode: _model.fechaInicioFocusNode,
                                                                                                                    autofocus: true,
                                                                                                                    readOnly: true,
                                                                                                                    obscureText: false,
                                                                                                                    decoration: InputDecoration(
                                                                                                                      hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                            fontFamily: 'Readex Pro',
                                                                                                                            letterSpacing: 0.0,
                                                                                                                          ),
                                                                                                                      enabledBorder: InputBorder.none,
                                                                                                                      focusedBorder: InputBorder.none,
                                                                                                                      errorBorder: InputBorder.none,
                                                                                                                      focusedErrorBorder: InputBorder.none,
                                                                                                                    ),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Readex Pro',
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    validator: _model.fechaInicioTextControllerValidator.asValidator(context),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Flexible(
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                                    child: Container(
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      ),
                                                                                                      child: Align(
                                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                        child: FFButtonWidget(
                                                                                                          onPressed: FFAppState().promotionsReadOnly
                                                                                                              ? null
                                                                                                              : () async {
                                                                                                                  final datePicked1Date = await showDatePicker(
                                                                                                                    context: context,
                                                                                                                    initialDate: getCurrentTimestamp,
                                                                                                                    firstDate: DateTime(1900),
                                                                                                                    lastDate: DateTime(2050),
                                                                                                                    builder: (context, child) {
                                                                                                                      return wrapInMaterialDatePickerTheme(
                                                                                                                        context,
                                                                                                                        child!,
                                                                                                                        headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                        headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                        headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                              fontFamily: 'Poppins',
                                                                                                                              fontSize: 32.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                            ),
                                                                                                                        pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                        pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                        selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                        selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                        actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                        iconSize: 24.0,
                                                                                                                      );
                                                                                                                    },
                                                                                                                  );

                                                                                                                  if (datePicked1Date != null) {
                                                                                                                    safeSetState(() {
                                                                                                                      _model.datePicked1 = DateTime(
                                                                                                                        datePicked1Date.year,
                                                                                                                        datePicked1Date.month,
                                                                                                                        datePicked1Date.day,
                                                                                                                      );
                                                                                                                    });
                                                                                                                  }
                                                                                                                  safeSetState(() {
                                                                                                                    _model.fechaInicioTextController?.text = dateTimeFormat(
                                                                                                                      "d/M/y",
                                                                                                                      _model.datePicked1,
                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                    );
                                                                                                                    _model.fechaInicioTextController?.selection = TextSelection.collapsed(offset: _model.fechaInicioTextController!.text.length);
                                                                                                                  });
                                                                                                                },
                                                                                                          text: FFLocalizations.of(context).getText(
                                                                                                            'vl2fchrb' /*  */,
                                                                                                          ),
                                                                                                          icon: const Icon(
                                                                                                            Icons.edit_calendar,
                                                                                                            size: 20.0,
                                                                                                          ),
                                                                                                          options: FFButtonOptions(
                                                                                                            width: 50.0,
                                                                                                            height: 50.0,
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                  color: Colors.white,
                                                                                                                  fontSize: 12.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                ),
                                                                                                            elevation: 1.0,
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: Colors.transparent,
                                                                                                              width: 1.0,
                                                                                                            ),
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Flexible(
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          height: 50.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Flexible(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Flexible(
                                                                                                            child: Align(
                                                                                                              alignment: const AlignmentDirectional(0.0, -1.0),
                                                                                                              child: Text(
                                                                                                                FFLocalizations.of(context).getText(
                                                                                                                  'nlt7rd3d' /* Fecha Fin */,
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                                      fontFamily: 'Readex Pro',
                                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      Flexible(
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Flexible(
                                                                                                              child: Align(
                                                                                                                alignment: const AlignmentDirectional(0.0, -1.0),
                                                                                                                child: Container(
                                                                                                                  height: 40.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  ),
                                                                                                                  child: Align(
                                                                                                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                                                                                                    child: Padding(
                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                      child: TextFormField(
                                                                                                                        controller: _model.fechaFinTextController,
                                                                                                                        focusNode: _model.fechaFinFocusNode,
                                                                                                                        autofocus: true,
                                                                                                                        readOnly: true,
                                                                                                                        obscureText: false,
                                                                                                                        decoration: InputDecoration(
                                                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                fontSize: 12.0,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                              ),
                                                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                letterSpacing: 0.0,
                                                                                                                              ),
                                                                                                                          enabledBorder: InputBorder.none,
                                                                                                                          focusedBorder: InputBorder.none,
                                                                                                                          errorBorder: InputBorder.none,
                                                                                                                          focusedErrorBorder: InputBorder.none,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                            ),
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        validator: _model.fechaFinTextControllerValidator.asValidator(context),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Flexible(
                                                                                                      child: Align(
                                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Padding(
                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                                          child: Container(
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            ),
                                                                                                            child: Align(
                                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                              child: FFButtonWidget(
                                                                                                                onPressed: FFAppState().promotionsReadOnly
                                                                                                                    ? null
                                                                                                                    : () async {
                                                                                                                        final datePicked2Date = await showDatePicker(
                                                                                                                          context: context,
                                                                                                                          initialDate: getCurrentTimestamp,
                                                                                                                          firstDate: getCurrentTimestamp,
                                                                                                                          lastDate: DateTime(2050),
                                                                                                                          builder: (context, child) {
                                                                                                                            return wrapInMaterialDatePickerTheme(
                                                                                                                              context,
                                                                                                                              child!,
                                                                                                                              headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                              headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                              headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                                    fontFamily: 'Poppins',
                                                                                                                                    fontSize: 32.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                  ),
                                                                                                                              pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                              pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                              selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                              selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                              actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                              iconSize: 24.0,
                                                                                                                            );
                                                                                                                          },
                                                                                                                        );

                                                                                                                        if (datePicked2Date != null) {
                                                                                                                          safeSetState(() {
                                                                                                                            _model.datePicked2 = DateTime(
                                                                                                                              datePicked2Date.year,
                                                                                                                              datePicked2Date.month,
                                                                                                                              datePicked2Date.day,
                                                                                                                            );
                                                                                                                          });
                                                                                                                        }
                                                                                                                        safeSetState(() {
                                                                                                                          _model.fechaFinTextController?.text = dateTimeFormat(
                                                                                                                            "d/M/y",
                                                                                                                            _model.datePicked2,
                                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                                          );
                                                                                                                          _model.fechaFinTextController?.selection = TextSelection.collapsed(offset: _model.fechaFinTextController!.text.length);
                                                                                                                        });
                                                                                                                      },
                                                                                                                text: FFLocalizations.of(context).getText(
                                                                                                                  'u3u1widh' /*  */,
                                                                                                                ),
                                                                                                                icon: const Icon(
                                                                                                                  Icons.edit_calendar,
                                                                                                                  size: 20.0,
                                                                                                                ),
                                                                                                                options: FFButtonOptions(
                                                                                                                  width: 50.0,
                                                                                                                  height: 50.0,
                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                        color: Colors.white,
                                                                                                                        fontSize: 12.0,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                  elevation: 1.0,
                                                                                                                  borderSide: const BorderSide(
                                                                                                                    color: Colors.transparent,
                                                                                                                    width: 1.0,
                                                                                                                  ),
                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'injyi58n' /* Seleccionar la empresa y produ... */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Container(
                                                                                        height: FFAppConstants.dropDownHighNormal.toDouble(),
                                                                                        decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                        ),
                                                                                        child: FutureBuilder<List<BrandRow>>(
                                                                                          future: BrandTable().queryRows(
                                                                                            queryFn: (q) => q.order('name', ascending: true),
                                                                                          ),
                                                                                          builder: (context, snapshot) {
                                                                                            // Customize what your widget looks like when it's loading.
                                                                                            if (!snapshot.hasData) {
                                                                                              return Center(
                                                                                                child: SizedBox(
                                                                                                  width: 50.0,
                                                                                                  height: 50.0,
                                                                                                  child: CircularProgressIndicator(
                                                                                                    valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                      FlutterFlowTheme.of(context).primary,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                            List<BrandRow> dropDownBrandBrandRowList = snapshot.data!;

                                                                                            return FlutterFlowDropDown<int>(
                                                                                              controller: _model.dropDownBrandValueController ??= FormFieldController<int>(
                                                                                                _model.dropDownBrandValue ??= widget.promotion?.brandId,
                                                                                              ),
                                                                                              options: List<int>.from(dropDownBrandBrandRowList
                                                                                                  .map((e) => valueOrDefault<int>(
                                                                                                        e.id,
                                                                                                        1,
                                                                                                      ))
                                                                                                  .toList()),
                                                                                              optionLabels: dropDownBrandBrandRowList
                                                                                                  .map((e) => valueOrDefault<String>(
                                                                                                        e.name,
                                                                                                        '-',
                                                                                                      ))
                                                                                                  .toList(),
                                                                                              onChanged: (val) async {
                                                                                                safeSetState(() => _model.dropDownBrandValue = val);
                                                                                                if ((_model.dropDownBrandValue != 1) && (_model.dropDownBrandValue != null)) {
                                                                                                  // set BrandId
                                                                                                  FFAppState().brandId = _model.dropDownBrandValue!;
                                                                                                  _model.updatePage(() {});
                                                                                                  // set BrandSet true
                                                                                                  FFAppState().brandSet = true;
                                                                                                  safeSetState(() {});
                                                                                                  _model.productListByBrand = await ProductTable().queryRows(
                                                                                                    queryFn: (q) => q.eq(
                                                                                                      'brand_id',
                                                                                                      _model.dropDownBrandValue,
                                                                                                    ),
                                                                                                  );
                                                                                                } else {
                                                                                                  FFAppState().brandBordercolor = FlutterFlowTheme.of(context).error;
                                                                                                  safeSetState(() {});
                                                                                                }

                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                              height: FFAppConstants.dropDownHighNormal.toDouble(),
                                                                                              maxHeight: 300.0,
                                                                                              searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                                '2mqu340i' /* Marca */,
                                                                                              ),
                                                                                              searchHintText: FFLocalizations.of(context).getText(
                                                                                                'e0wopkom' /* Seleccionar Producto */,
                                                                                              ),
                                                                                              icon: Icon(
                                                                                                Icons.keyboard_arrow_down_rounded,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              elevation: 2.0,
                                                                                              borderColor: Colors.transparent,
                                                                                              borderWidth: 1.0,
                                                                                              borderRadius: 8.0,
                                                                                              margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                              hidesUnderline: true,
                                                                                              disabled: FFAppState().promotionsReadOnly,
                                                                                              isOverButton: true,
                                                                                              isSearchable: true,
                                                                                              isMultiSelect: false,
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Flexible(
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Container(
                                                                                              height: 45.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Visibility(
                                                                                                visible: FFAppState().brandSet == true,
                                                                                                child: FutureBuilder<List<ProductRow>>(
                                                                                                  future: ProductTable().queryRows(
                                                                                                    queryFn: (q) => q
                                                                                                        .eq(
                                                                                                          'brand_id',
                                                                                                          FFAppState().brandId,
                                                                                                        )
                                                                                                        .order('id', ascending: true),
                                                                                                  ),
                                                                                                  builder: (context, snapshot) {
                                                                                                    // Customize what your widget looks like when it's loading.
                                                                                                    if (!snapshot.hasData) {
                                                                                                      return Center(
                                                                                                        child: SizedBox(
                                                                                                          width: 50.0,
                                                                                                          height: 50.0,
                                                                                                          child: CircularProgressIndicator(
                                                                                                            valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                              FlutterFlowTheme.of(context).primary,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    }
                                                                                                    List<ProductRow> dropDownProductProductRowList = snapshot.data!;

                                                                                                    return FlutterFlowDropDown<int>(
                                                                                                      controller: _model.dropDownProductValueController ??= FormFieldController<int>(
                                                                                                        _model.dropDownProductValue ??= widget.promotion?.productId,
                                                                                                      ),
                                                                                                      options: List<int>.from(dropDownProductProductRowList.map((e) => e.id).toList()),
                                                                                                      optionLabels: dropDownProductProductRowList.map((e) => e.name).withoutNulls.toList(),
                                                                                                      onChanged: (val) => safeSetState(() => _model.dropDownProductValue = val),
                                                                                                      height: 50.0,
                                                                                                      maxHeight: 200.0,
                                                                                                      textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                            fontFamily: 'Readex Pro',
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 12.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                      hintText: FFLocalizations.of(context).getText(
                                                                                                        '57u412sl' /* Producto */,
                                                                                                      ),
                                                                                                      icon: Icon(
                                                                                                        Icons.keyboard_arrow_down_rounded,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 24.0,
                                                                                                      ),
                                                                                                      elevation: 2.0,
                                                                                                      borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                                      borderWidth: 2.0,
                                                                                                      borderRadius: 8.0,
                                                                                                      margin: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 4.0),
                                                                                                      hidesUnderline: true,
                                                                                                      disabled: widget.promotionsReadOnly!,
                                                                                                      isOverButton: true,
                                                                                                      isSearchable: false,
                                                                                                      isMultiSelect: false,
                                                                                                      labelText: FFLocalizations.of(context).getText(
                                                                                                        'fxznx8gf' /*  */,
                                                                                                      ),
                                                                                                      labelTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Readex Pro',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                          child: Container(
                                                                                            height: FFAppConstants.dropDownHighNormal.toDouble(),
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Visibility(
                                                                                              visible: FFAppState().brandSet == true,
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                  child: FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 8.0,
                                                                                                    buttonSize: 40.0,
                                                                                                    fillColor: FlutterFlowTheme.of(context).primary,
                                                                                                    icon: Icon(
                                                                                                      Icons.add_circle,
                                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      await showModalBottomSheet(
                                                                                                        isScrollControlled: true,
                                                                                                        backgroundColor: Colors.transparent,
                                                                                                        enableDrag: false,
                                                                                                        context: context,
                                                                                                        builder: (context) {
                                                                                                          return Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: const SizedBox(
                                                                                                              height: double.infinity,
                                                                                                              child: ProductAddComponentWidget(),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ).then((value) => safeSetState(() => _model.addProductComponentResult = value));

                                                                                                      safeSetState(() {});
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              borderRadius: const BorderRadius.only(
                                                                                bottomLeft: Radius.circular(10.0),
                                                                                bottomRight: Radius.circular(10.0),
                                                                                topLeft: Radius.circular(10.0),
                                                                                topRight: Radius.circular(10.0),
                                                                              ),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 2.0,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 2.0, 5.0),
                                                                              child: Container(
                                                                                width: double.infinity,
                                                                                color: const Color(0x00000000),
                                                                                child: ExpandableNotifier(
                                                                                  controller: _model.expandableExpandableController1,
                                                                                  child: ExpandablePanel(
                                                                                    header: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'fv525pdc' /* Configuración de Medio y Forma... */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 14.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                    collapsed: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: double.infinity,
                                                                                          decoration: const BoxDecoration(
                                                                                            borderRadius: BorderRadius.only(
                                                                                              bottomLeft: Radius.circular(10.0),
                                                                                              bottomRight: Radius.circular(10.0),
                                                                                              topLeft: Radius.circular(10.0),
                                                                                              topRight: Radius.circular(10.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    expanded: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Flexible(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                        child: Container(
                                                                                                          height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                                          decoration: const BoxDecoration(),
                                                                                                          child: wrapWithModel(
                                                                                                            model: _model.paymentMethodTypeComponentModel,
                                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                                            child: PaymentMethodTypeComponentWidget(
                                                                                                              paymentMethod: widget.paymentMethod!,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Flexible(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                                        decoration: BoxDecoration(
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                        child: wrapWithModel(
                                                                                                          model: _model.paymentMediaTypeComponentModel,
                                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                                          updateOnChange: true,
                                                                                                          child: PaymentMediaTypeComponentWidget(
                                                                                                            paymentMedia: widget.paymentMediaList!,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          if (FFAppState().fiinantialVisibility)
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.min,
                                                                                                children: [
                                                                                                  Flexible(
                                                                                                    child: Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Container(
                                                                                                            height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                                            decoration: const BoxDecoration(),
                                                                                                            child: Visibility(
                                                                                                              visible: FFAppState().fiinantialVisibility,
                                                                                                              child: wrapWithModel(
                                                                                                                model: _model.cardComponentModel,
                                                                                                                updateCallback: () => safeSetState(() {}),
                                                                                                                updateOnChange: true,
                                                                                                                child: CardComponentWidget(
                                                                                                                  paymentMedia: widget.paymentMedia,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Flexible(
                                                                                                    child: Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Container(
                                                                                                            height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                                            decoration: const BoxDecoration(),
                                                                                                            child: Visibility(
                                                                                                              visible: FFAppState().fiinantialVisibility,
                                                                                                              child: wrapWithModel(
                                                                                                                model: _model.finantialEntityTypeComponentModel,
                                                                                                                updateCallback: () => safeSetState(() {}),
                                                                                                                updateOnChange: true,
                                                                                                                child: FinantialEntityTypeComponentWidget(
                                                                                                                  finantialEntity: widget.finantialEntity,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Flexible(
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Container(
                                                                                                          height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                                          decoration: const BoxDecoration(),
                                                                                                          child: Visibility(
                                                                                                            visible: FFAppState().fiinantialVisibility,
                                                                                                            child: wrapWithModel(
                                                                                                              model: _model.finantialEntityComponentModel,
                                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                                              updateOnChange: true,
                                                                                                              child: FinantialEntityComponentWidget(
                                                                                                                finantialEntity: widget.finantialEntity,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    theme: const ExpandableThemeData(
                                                                                      tapHeaderToExpand: true,
                                                                                      tapBodyToExpand: true,
                                                                                      tapBodyToCollapse: true,
                                                                                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                      hasIcon: true,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              borderRadius: const BorderRadius.only(
                                                                                bottomLeft: Radius.circular(10.0),
                                                                                bottomRight: Radius.circular(10.0),
                                                                                topLeft: Radius.circular(10.0),
                                                                                topRight: Radius.circular(10.0),
                                                                              ),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 2.0,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 2.0, 5.0),
                                                                              child: Container(
                                                                                width: double.infinity,
                                                                                color: const Color(0x00000000),
                                                                                child: ExpandableNotifier(
                                                                                  controller: _model.expandableDiscountExpandableController,
                                                                                  child: ExpandablePanel(
                                                                                    header: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '4aylnc3u' /* Configuración de Descuento */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 14.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                    collapsed: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: double.infinity,
                                                                                          decoration: const BoxDecoration(
                                                                                            borderRadius: BorderRadius.only(
                                                                                              bottomLeft: Radius.circular(10.0),
                                                                                              bottomRight: Radius.circular(10.0),
                                                                                              topLeft: Radius.circular(10.0),
                                                                                              topRight: Radius.circular(10.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    expanded: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Flexible(
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Align(
                                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Container(
                                                                                                            height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                                            constraints: const BoxConstraints(
                                                                                                              maxHeight: 90.0,
                                                                                                            ),
                                                                                                            decoration: const BoxDecoration(),
                                                                                                            child: wrapWithModel(
                                                                                                              model: _model.discountTypeComponentModel,
                                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                                              child: DiscountTypeComponentWidget(
                                                                                                                discountTypeId: widget.promotion!.discountTypeId!,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Flexible(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                                        decoration: const BoxDecoration(),
                                                                                                        child: wrapWithModel(
                                                                                                          model: _model.daysComponentModel,
                                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                                          child: DaysComponentWidget(
                                                                                                            days: widget.selDays!,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Flexible(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        height: FFAppConstants.dropDownHighNormal.toDouble(),
                                                                                                        decoration: const BoxDecoration(),
                                                                                                        child: Align(
                                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                            child: SizedBox(
                                                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                              child: TextFormField(
                                                                                                                controller: _model.amountDiscountTextController1,
                                                                                                                focusNode: _model.amountDiscountFocusNode1,
                                                                                                                autofocus: true,
                                                                                                                readOnly: widget.promotionsReadOnly!,
                                                                                                                obscureText: false,
                                                                                                                decoration: InputDecoration(
                                                                                                                  labelText: FFLocalizations.of(context).getText(
                                                                                                                    '4xchc1l9' /* Monto */,
                                                                                                                  ),
                                                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                        fontSize: 12.0,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                  enabledBorder: OutlineInputBorder(
                                                                                                                    borderSide: BorderSide(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      width: 2.0,
                                                                                                                    ),
                                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                                  ),
                                                                                                                  focusedBorder: OutlineInputBorder(
                                                                                                                    borderSide: BorderSide(
                                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                                      width: 2.0,
                                                                                                                    ),
                                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                                  ),
                                                                                                                  errorBorder: OutlineInputBorder(
                                                                                                                    borderSide: BorderSide(
                                                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                                                      width: 2.0,
                                                                                                                    ),
                                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                                  ),
                                                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                                                    borderSide: BorderSide(
                                                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                                                      width: 2.0,
                                                                                                                    ),
                                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                                  ),
                                                                                                                  filled: true,
                                                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  contentPadding: const EdgeInsets.all(10.0),
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Readex Pro',
                                                                                                                      fontSize: 14.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                                                                                                cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                                                validator: _model.amountDiscountTextController1Validator.asValidator(context),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Flexible(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        height: FFAppConstants.dropDownHighNormal.toDouble(),
                                                                                                        decoration: const BoxDecoration(),
                                                                                                        child: Align(
                                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                            child: SizedBox(
                                                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                              child: TextFormField(
                                                                                                                controller: _model.topAmountDiscountTextController,
                                                                                                                focusNode: _model.topAmountDiscountFocusNode,
                                                                                                                autofocus: true,
                                                                                                                readOnly: widget.promotionsReadOnly!,
                                                                                                                obscureText: false,
                                                                                                                decoration: InputDecoration(
                                                                                                                  labelText: FFLocalizations.of(context).getText(
                                                                                                                    'agqohaa8' /* Monto Tope */,
                                                                                                                  ),
                                                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                        fontSize: 12.0,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                  enabledBorder: OutlineInputBorder(
                                                                                                                    borderSide: BorderSide(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      width: 2.0,
                                                                                                                    ),
                                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                                  ),
                                                                                                                  focusedBorder: OutlineInputBorder(
                                                                                                                    borderSide: BorderSide(
                                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                                      width: 2.0,
                                                                                                                    ),
                                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                                  ),
                                                                                                                  errorBorder: OutlineInputBorder(
                                                                                                                    borderSide: BorderSide(
                                                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                                                      width: 2.0,
                                                                                                                    ),
                                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                                  ),
                                                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                                                    borderSide: BorderSide(
                                                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                                                      width: 2.0,
                                                                                                                    ),
                                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                                  ),
                                                                                                                  filled: true,
                                                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  contentPadding: const EdgeInsets.all(10.0),
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Readex Pro',
                                                                                                                      fontSize: 12.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                                                                                                cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                                                validator: _model.topAmountDiscountTextControllerValidator.asValidator(context),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Flexible(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                                        decoration: const BoxDecoration(),
                                                                                                        child: wrapWithModel(
                                                                                                          model: _model.frecuenceComponentModel,
                                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                                          child: FrecuenceComponentWidget(
                                                                                                            promotions: widget.promotion,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    theme: const ExpandableThemeData(
                                                                                      tapHeaderToExpand: true,
                                                                                      tapBodyToExpand: true,
                                                                                      tapBodyToCollapse: true,
                                                                                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                      hasIcon: true,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              borderRadius: const BorderRadius.only(
                                                                                bottomLeft: Radius.circular(10.0),
                                                                                bottomRight: Radius.circular(10.0),
                                                                                topLeft: Radius.circular(10.0),
                                                                                topRight: Radius.circular(10.0),
                                                                              ),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 2.0,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 2.0, 5.0),
                                                                              child: Container(
                                                                                width: double.infinity,
                                                                                color: const Color(0x00000000),
                                                                                child: ExpandableNotifier(
                                                                                  controller: _model.expandableExpandableController2,
                                                                                  child: ExpandablePanel(
                                                                                    header: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'pwuzs6zb' /* Configurar Otros Descuentos Ac... */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    collapsed: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: double.infinity,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              bottomLeft: Radius.circular(10.0),
                                                                                              bottomRight: Radius.circular(10.0),
                                                                                              topLeft: Radius.circular(10.0),
                                                                                              topRight: Radius.circular(10.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    expanded: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Flexible(
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Container(
                                                                                                      height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                                      decoration: const BoxDecoration(),
                                                                                                      child: Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                                        child: wrapWithModel(
                                                                                                          model: _model.aditionalPaymentMethodTypeComponentModel,
                                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                                          child: AditionalPaymentMethodTypeComponentWidget(
                                                                                                            aditionalPaymentMethod: widget.aditionalPaymentMethodList!,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              Flexible(
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Container(
                                                                                                      height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                                      decoration: const BoxDecoration(),
                                                                                                      child: wrapWithModel(
                                                                                                        model: _model.aditionalDiscountTypeComponentModel,
                                                                                                        updateCallback: () => safeSetState(() {}),
                                                                                                        child: AditionalDiscountTypeComponentWidget(
                                                                                                          discountTypeId: widget.promotion!.aditionalDiscountTypeId!,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                                      child: SizedBox(
                                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                        child: TextFormField(
                                                                                                          controller: _model.amountDiscountTextController2,
                                                                                                          focusNode: _model.amountDiscountFocusNode2,
                                                                                                          autofocus: true,
                                                                                                          readOnly: widget.promotionsReadOnly!,
                                                                                                          obscureText: false,
                                                                                                          decoration: InputDecoration(
                                                                                                            labelText: FFLocalizations.of(context).getText(
                                                                                                              '57397w6g' /* Monto acumulable */,
                                                                                                            ),
                                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                  fontSize: 12.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                ),
                                                                                                            enabledBorder: OutlineInputBorder(
                                                                                                              borderSide: BorderSide(
                                                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                                                width: 2.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                                            ),
                                                                                                            focusedBorder: OutlineInputBorder(
                                                                                                              borderSide: BorderSide(
                                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                                width: 2.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                                            ),
                                                                                                            errorBorder: OutlineInputBorder(
                                                                                                              borderSide: BorderSide(
                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                width: 2.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                                            ),
                                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                                              borderSide: BorderSide(
                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                width: 2.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                                            ),
                                                                                                            filled: true,
                                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            contentPadding: const EdgeInsets.all(10.0),
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                          keyboardType: TextInputType.number,
                                                                                                          cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                                          validator: _model.amountDiscountTextController2Validator.asValidator(context),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                      child: SizedBox(
                                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                        child: TextFormField(
                                                                                                          controller: _model.amountDiscountTextController3,
                                                                                                          focusNode: _model.amountDiscountFocusNode3,
                                                                                                          autofocus: true,
                                                                                                          readOnly: widget.promotionsReadOnly!,
                                                                                                          obscureText: false,
                                                                                                          decoration: InputDecoration(
                                                                                                            labelText: FFLocalizations.of(context).getText(
                                                                                                              '6chuxlvk' /* Monto Tope Acumulable */,
                                                                                                            ),
                                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                  fontSize: 12.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                ),
                                                                                                            enabledBorder: OutlineInputBorder(
                                                                                                              borderSide: BorderSide(
                                                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                                                width: 2.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                                            ),
                                                                                                            focusedBorder: OutlineInputBorder(
                                                                                                              borderSide: BorderSide(
                                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                                width: 2.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                                            ),
                                                                                                            errorBorder: OutlineInputBorder(
                                                                                                              borderSide: BorderSide(
                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                width: 2.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                                            ),
                                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                                              borderSide: BorderSide(
                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                width: 2.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                                            ),
                                                                                                            filled: true,
                                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            contentPadding: const EdgeInsets.all(10.0),
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                          keyboardType: TextInputType.number,
                                                                                                          cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                                          validator: _model.amountDiscountTextController3Validator.asValidator(context),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Flexible(
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: SizedBox(
                                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                      child: TextFormField(
                                                                                                        controller: _model.aditionalCommentsTextController,
                                                                                                        focusNode: _model.aditionalCommentsFocusNode,
                                                                                                        autofocus: true,
                                                                                                        readOnly: widget.promotionsReadOnly!,
                                                                                                        obscureText: false,
                                                                                                        decoration: InputDecoration(
                                                                                                          labelText: FFLocalizations.of(context).getText(
                                                                                                            'f06vkvdc' /* Comentarios sobre Descuento Ac... */,
                                                                                                          ),
                                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                          enabledBorder: OutlineInputBorder(
                                                                                                            borderSide: BorderSide(
                                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                          ),
                                                                                                          focusedBorder: OutlineInputBorder(
                                                                                                            borderSide: BorderSide(
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                          ),
                                                                                                          errorBorder: OutlineInputBorder(
                                                                                                            borderSide: BorderSide(
                                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                          ),
                                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                                            borderSide: BorderSide(
                                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                          ),
                                                                                                          filled: true,
                                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          contentPadding: const EdgeInsets.all(10.0),
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Readex Pro',
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                        maxLines: 10,
                                                                                                        minLines: 2,
                                                                                                        cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                                        validator: _model.aditionalCommentsTextControllerValidator.asValidator(context),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    theme: const ExpandableThemeData(
                                                                                      tapHeaderToExpand: true,
                                                                                      tapBodyToExpand: true,
                                                                                      tapBodyToCollapse: true,
                                                                                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                      hasIcon: true,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Container(
                                                                                      height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                      ),
                                                                                      child: TextFormField(
                                                                                        controller: _model.textFieldCommentsTextController,
                                                                                        focusNode: _model.textFieldCommentsFocusNode,
                                                                                        autofocus: true,
                                                                                        readOnly: FFAppState().promotionsReadOnly,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          labelText: FFLocalizations.of(context).getText(
                                                                                            'il05yxux' /* Comentario */,
                                                                                          ),
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          hintText: widget.promotion?.comments,
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          filled: true,
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        maxLines: null,
                                                                                        minLines: 2,
                                                                                        validator: _model.textFieldCommentsTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Container(
                                                                                      height: FFAppConstants.dropDownHighMax.toDouble(),
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: TextFormField(
                                                                                        controller: _model.textFieldConditionsTextController,
                                                                                        focusNode: _model.textFieldConditionsFocusNode,
                                                                                        autofocus: true,
                                                                                        readOnly: widget.promotionsReadOnly!,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          labelText: FFLocalizations.of(context).getText(
                                                                                            'ye4vr40l' /* Condiciones */,
                                                                                          ),
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          filled: true,
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        maxLines: null,
                                                                                        minLines: 2,
                                                                                        validator: _model.textFieldConditionsTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (widget.promotionsReadOnly ==
                                                                                false)
                                                                              Expanded(
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                    child: FlutterFlowIconButton(
                                                                                      borderRadius: 20.0,
                                                                                      borderWidth: 1.0,
                                                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      icon: Icon(
                                                                                        Icons.check_circle,
                                                                                        color: FlutterFlowTheme.of(context).success,
                                                                                        size: 50.0,
                                                                                      ),
                                                                                      onPressed: () async {
                                                                                        _model.updateProduct = await PromotionTable().update(
                                                                                          data: {
                                                                                            'name': _model.textFieldNameTextController.text,
                                                                                            'product_id': _model.dropDownProductValue,
                                                                                            'comments': _model.textFieldCommentsTextController.text,
                                                                                            'conditions': _model.textFieldConditionsTextController.text,
                                                                                            'promotion_discount_start_date': _model.fechaInicioTextController.text,
                                                                                            'promotion_discount_end_date': _model.fechaFinTextController.text,
                                                                                            'promotion_discount_frecuence': _model.frecuenceComponentModel.dropDownFrecuenceValue,
                                                                                            'aditional_id': _model.aditionalDiscountTypeComponentModel.dropDownAditionalDiscountTypeValue,
                                                                                            'aditional_discount_type_id': _model.aditionalDiscountTypeComponentModel.dropDownAditionalDiscountTypeValue,
                                                                                          },
                                                                                          matchingRows: (rows) => rows.eq(
                                                                                            'id',
                                                                                            widget.promotion?.id,
                                                                                          ),
                                                                                          returnRows: true,
                                                                                        );
                                                                                        _model.insert = await FnInsertRelPromotionPaymentMediaCall.call(
                                                                                          promotionIdParam: widget.promotion?.id,
                                                                                          paymentMediaTypeIdsList: _model.paymentMediaTypeComponentModel.dropDownPaymentMediaTypeValue,
                                                                                          cardId: _model.cardComponentModel.dropDownCardValue,
                                                                                          finantialEntityId: _model.finantialEntityComponentModel.dropDownFinantialEntityValue,
                                                                                        );

                                                                                        await FnInsertRelPromotionDaysCall.call(
                                                                                          promotionIdParam: widget.promotion?.id,
                                                                                          daysParamList: _model.daysComponentModel.daysDropDownValue,
                                                                                        );

                                                                                        await FnInsertRelPromotionAditionalPaymentMethodCall.call(
                                                                                          promotionIdParam: widget.promotion?.id,
                                                                                          aditionalPaymentMethodIdParamList: _model.aditionalPaymentMethodTypeComponentModel.dropDownAditionalPaymentMethodTypeValue,
                                                                                        );

                                                                                        if ((_model.insert?.succeeded ?? true)) {
                                                                                          await showDialog(
                                                                                            context: context,
                                                                                            builder: (alertDialogContext) {
                                                                                              return AlertDialog(
                                                                                                title: const Text('Actualización'),
                                                                                                content: const Text('Realizada con Éxito'),
                                                                                                actions: [
                                                                                                  TextButton(
                                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                    child: const Text('Ok'),
                                                                                                  ),
                                                                                                ],
                                                                                              );
                                                                                            },
                                                                                          );
                                                                                        } else {
                                                                                          await showDialog(
                                                                                            context: context,
                                                                                            builder: (alertDialogContext) {
                                                                                              return AlertDialog(
                                                                                                title: const Text('Actualización'),
                                                                                                content: const Text('Erronea'),
                                                                                                actions: [
                                                                                                  TextButton(
                                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                    child: const Text('Ok'),
                                                                                                  ),
                                                                                                ],
                                                                                              );
                                                                                            },
                                                                                          );
                                                                                        }

                                                                                        context.pushNamed(
                                                                                          'promotionsAdmin',
                                                                                          extra: <String, dynamic>{
                                                                                            kTransitionInfoKey: const TransitionInfo(
                                                                                              hasTransition: true,
                                                                                              transitionType: PageTransitionType.fade,
                                                                                              duration: Duration(milliseconds: 2000),
                                                                                            ),
                                                                                          },
                                                                                        );

                                                                                        safeSetState(() {});
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
