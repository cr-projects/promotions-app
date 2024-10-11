import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/cross/menu/menu_widget.dart';
import '/cross/user_side_bar/user_side_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'personal_payment_media_model.dart';
export 'personal_payment_media_model.dart';

class PersonalPaymentMediaWidget extends StatefulWidget {
  const PersonalPaymentMediaWidget({
    super.key,
    this.tDVisaBankList,
    required this.userData,
  });

  final List<int>? tDVisaBankList;
  final UsersRow? userData;

  @override
  State<PersonalPaymentMediaWidget> createState() =>
      _PersonalPaymentMediaWidgetState();
}

class _PersonalPaymentMediaWidgetState
    extends State<PersonalPaymentMediaWidget> {
  late PersonalPaymentMediaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonalPaymentMediaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: SafeArea(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
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
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: wrapWithModel(
                                      model: _model.menuModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const MenuWidget(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    wrapWithModel(
                                      model: _model.userSideBarModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const UserSideBarWidget(),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 10.0),
                                            child: Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.9,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0),
                                                  bottomRight:
                                                      Radius.circular(10.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 20.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            50.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 500.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Theme(
                                                                                      data: ThemeData(
                                                                                        checkboxTheme: const CheckboxThemeData(
                                                                                          visualDensity: VisualDensity.compact,
                                                                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                        ),
                                                                                        unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      child: CheckboxListTile(
                                                                                        value: _model.checkboxCashValue ??= FFAppState().checkCashValue,
                                                                                        onChanged: (newValue) async {
                                                                                          safeSetState(() => _model.checkboxCashValue = newValue!);
                                                                                          if (newValue!) {
                                                                                            FFAppState().checkCashSave = false;
                                                                                            safeSetState(() {});
                                                                                          } else {
                                                                                            FFAppState().checkCashSave = false;
                                                                                            safeSetState(() {});
                                                                                          }
                                                                                        },
                                                                                        title: Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            '65x4p9b4' /* Efectivo */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                        activeColor: FlutterFlowTheme.of(context).primary,
                                                                                        checkColor: FlutterFlowTheme.of(context).info,
                                                                                        dense: false,
                                                                                        controlAffinity: ListTileControlAffinity.trailing,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: FlutterFlowIconButton(
                                                                                      borderColor: Colors.transparent,
                                                                                      borderRadius: 20.0,
                                                                                      borderWidth: 1.0,
                                                                                      buttonSize: 40.0,
                                                                                      icon: Icon(
                                                                                        Icons.check_circle_outline,
                                                                                        color: FFAppState().checkCashSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 25.0,
                                                                                      ),
                                                                                      showLoadingIndicator: true,
                                                                                      onPressed: () async {
                                                                                        if (_model.checkboxCashValue!) {
                                                                                          _model.apiResulttr01 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                            userIdParam: widget.userData?.id,
                                                                                            cardIdParam: 1,
                                                                                            paymentMediaTypeId: 2,
                                                                                            finantialEntityIdsParamList: FFAppConstants.arrInt1,
                                                                                          );
                                                                                        } else {
                                                                                          await RelUserPaymentMediaTable().delete(
                                                                                            matchingRows: (rows) => rows
                                                                                                .eq(
                                                                                                  'user_id',
                                                                                                  widget.userData?.id,
                                                                                                )
                                                                                                .eq(
                                                                                                  'payment_media_id',
                                                                                                  2,
                                                                                                ),
                                                                                          );
                                                                                        }

                                                                                        FFAppState().checkCashSave = true;
                                                                                        safeSetState(() {});

                                                                                        safeSetState(() {});
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Theme(
                                                                                      data: ThemeData(
                                                                                        checkboxTheme: const CheckboxThemeData(
                                                                                          visualDensity: VisualDensity.compact,
                                                                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                        ),
                                                                                        unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      child: CheckboxListTile(
                                                                                        value: _model.checkboxAppCashValue ??= FFAppState().checkAppCashValue,
                                                                                        onChanged: (newValue) async {
                                                                                          safeSetState(() => _model.checkboxAppCashValue = newValue!);
                                                                                          if (newValue!) {
                                                                                            FFAppState().checkAppCashSave = false;
                                                                                            safeSetState(() {});
                                                                                          } else {
                                                                                            FFAppState().checkAppCashSave = false;
                                                                                            safeSetState(() {});
                                                                                          }
                                                                                        },
                                                                                        title: Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'iiiixo28' /* Dinero en Cuenta (Billetera o ... */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                        activeColor: FlutterFlowTheme.of(context).primary,
                                                                                        checkColor: FlutterFlowTheme.of(context).info,
                                                                                        dense: false,
                                                                                        controlAffinity: ListTileControlAffinity.trailing,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: FlutterFlowIconButton(
                                                                                      borderColor: Colors.transparent,
                                                                                      borderRadius: 20.0,
                                                                                      borderWidth: 1.0,
                                                                                      buttonSize: 40.0,
                                                                                      icon: Icon(
                                                                                        Icons.check_circle_outline,
                                                                                        color: FFAppState().checkAppCashSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 25.0,
                                                                                      ),
                                                                                      showLoadingIndicator: true,
                                                                                      onPressed: () async {
                                                                                        if (_model.checkboxAppCashValue!) {
                                                                                          _model.apiResulttr02 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                            userIdParam: widget.userData?.id,
                                                                                            cardIdParam: 1,
                                                                                            paymentMediaTypeId: 4,
                                                                                            finantialEntityIdsParamList: FFAppConstants.arrInt1,
                                                                                          );
                                                                                        } else {
                                                                                          await RelUserPaymentMediaTable().delete(
                                                                                            matchingRows: (rows) => rows
                                                                                                .eq(
                                                                                                  'user_id',
                                                                                                  widget.userData?.id,
                                                                                                )
                                                                                                .eq(
                                                                                                  'payment_media_id',
                                                                                                  4,
                                                                                                ),
                                                                                          );
                                                                                        }

                                                                                        safeSetState(() {});
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, -1.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'n0663b8d' /* Cuentas Bancarias */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: const Color(0x0A39D2C0),
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(-1.0, -1.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.min,
                                                                                                children: [
                                                                                                  Flexible(
                                                                                                    child: Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                      child: Container(
                                                                                                        decoration: BoxDecoration(
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                          border: Border.all(
                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                            width: 1.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Column(
                                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Align(
                                                                                                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                                                                                                    child: Column(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                      children: [
                                                                                                                        Container(
                                                                                                                          width: 200.0,
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                          child: Text(
                                                                                                                            FFLocalizations.of(context).getText(
                                                                                                                              'wv7ei514' /* Tarjeta de Débito */,
                                                                                                                            ),
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Align(
                                                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                                        child: Container(
                                                                                                                          width: 200.0,
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                          child: Text(
                                                                                                                            FFLocalizations.of(context).getText(
                                                                                                                              'd6rnoz81' /* VISA */,
                                                                                                                            ),
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: Text(
                                                                                                                          FFLocalizations.of(context).getText(
                                                                                                                            '9nwygbg0' /* Banco */,
                                                                                                                          ),
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 400.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: FutureBuilder<List<FinantialEntityRow>>(
                                                                                                                          future: FinantialEntityTable().queryRows(
                                                                                                                            queryFn: (q) => q.eq(
                                                                                                                              'finantial_entity_type_id',
                                                                                                                              2,
                                                                                                                            ),
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
                                                                                                                            List<FinantialEntityRow> dropDownTDVISABankFinantialEntityRowList = snapshot.data!;

                                                                                                                            return FlutterFlowDropDown<int>(
                                                                                                                              multiSelectController: _model.dropDownTDVISABankValueController ??= FormListFieldController<int>(_model.dropDownTDVISABankValue ??= List<int>.from(
                                                                                                                                widget.tDVisaBankList ?? [],
                                                                                                                              )),
                                                                                                                              options: List<int>.from(dropDownTDVISABankFinantialEntityRowList.map((e) => e.id).toList()),
                                                                                                                              optionLabels: dropDownTDVISABankFinantialEntityRowList.map((e) => e.name).toList(),
                                                                                                                              width: 200.0,
                                                                                                                              height: 40.0,
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
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                                  ),
                                                                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                                                                'ry01ny8p' /* Entidad Financiera */,
                                                                                                                              ),
                                                                                                                              searchHintText: FFLocalizations.of(context).getText(
                                                                                                                                'shikw1em' /* Buscar... */,
                                                                                                                              ),
                                                                                                                              icon: Icon(
                                                                                                                                Icons.keyboard_arrow_down_rounded,
                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                size: 24.0,
                                                                                                                              ),
                                                                                                                              elevation: 2.0,
                                                                                                                              borderColor: Colors.transparent,
                                                                                                                              borderWidth: 0.0,
                                                                                                                              borderRadius: 8.0,
                                                                                                                              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                              hidesUnderline: true,
                                                                                                                              isOverButton: false,
                                                                                                                              isSearchable: true,
                                                                                                                              isMultiSelect: true,
                                                                                                                              onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownTDVISABankValue = val),
                                                                                                                            );
                                                                                                                          },
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: Align(
                                                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                          child: FlutterFlowIconButton(
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderRadius: 20.0,
                                                                                                                            borderWidth: 1.0,
                                                                                                                            buttonSize: 40.0,
                                                                                                                            icon: Icon(
                                                                                                                              Icons.check_circle_outline,
                                                                                                                              color: FFAppState().checkTDVISABankSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 25.0,
                                                                                                                            ),
                                                                                                                            onPressed: () async {
                                                                                                                              _model.apiResulttr1 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                                                                userIdParam: widget.userData?.id,
                                                                                                                                cardIdParam: 2,
                                                                                                                                paymentMediaTypeId: 5,
                                                                                                                                finantialEntityIdsParamList: _model.dropDownTDVISABankValue,
                                                                                                                              );

                                                                                                                              safeSetState(() {});
                                                                                                                            },
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: Text(
                                                                                                                          FFLocalizations.of(context).getText(
                                                                                                                            'atsqviza' /* Financiera */,
                                                                                                                          ),
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 400.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: FutureBuilder<List<FinantialEntityRow>>(
                                                                                                                          future: FinantialEntityTable().queryRows(
                                                                                                                            queryFn: (q) => q.eq(
                                                                                                                              'finantial_entity_type_id',
                                                                                                                              3,
                                                                                                                            ),
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
                                                                                                                            List<FinantialEntityRow> dropDownTDVISAFinancFinantialEntityRowList = snapshot.data!;

                                                                                                                            return FlutterFlowDropDown<int>(
                                                                                                                              multiSelectController: _model.dropDownTDVISAFinancValueController ??= FormListFieldController<int>(null),
                                                                                                                              options: List<int>.from(dropDownTDVISAFinancFinantialEntityRowList.map((e) => e.id).toList()),
                                                                                                                              optionLabels: dropDownTDVISAFinancFinantialEntityRowList.map((e) => e.name).toList(),
                                                                                                                              width: 200.0,
                                                                                                                              height: 40.0,
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
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                                  ),
                                                                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                                                                'dkgg20gv' /* Entidad Financiera */,
                                                                                                                              ),
                                                                                                                              searchHintText: FFLocalizations.of(context).getText(
                                                                                                                                'bscyhnfj' /* Buscar... */,
                                                                                                                              ),
                                                                                                                              icon: Icon(
                                                                                                                                Icons.keyboard_arrow_down_rounded,
                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                size: 24.0,
                                                                                                                              ),
                                                                                                                              elevation: 2.0,
                                                                                                                              borderColor: Colors.transparent,
                                                                                                                              borderWidth: 0.0,
                                                                                                                              borderRadius: 8.0,
                                                                                                                              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                              hidesUnderline: true,
                                                                                                                              isOverButton: false,
                                                                                                                              isSearchable: true,
                                                                                                                              isMultiSelect: true,
                                                                                                                              onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownTDVISAFinancValue = val),
                                                                                                                            );
                                                                                                                          },
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: Align(
                                                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                          child: FlutterFlowIconButton(
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderRadius: 20.0,
                                                                                                                            borderWidth: 1.0,
                                                                                                                            buttonSize: 40.0,
                                                                                                                            icon: Icon(
                                                                                                                              Icons.check_circle_outline,
                                                                                                                              color: FFAppState().checkTDVISAFinancSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 25.0,
                                                                                                                            ),
                                                                                                                            onPressed: () async {
                                                                                                                              _model.apiResulttr2 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                                                                userIdParam: widget.userData?.id,
                                                                                                                                cardIdParam: 2,
                                                                                                                                paymentMediaTypeId: 5,
                                                                                                                                finantialEntityIdsParamList: _model.dropDownTDVISAFinancValue,
                                                                                                                              );

                                                                                                                              safeSetState(() {});
                                                                                                                            },
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
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Flexible(
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                    child: Container(
                                                                                                      decoration: BoxDecoration(
                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                        border: Border.all(
                                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                                          width: 2.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          '5a1xuaxk' /* Tarjeta de Débito */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          'lvaky9m8' /* MASTERCARD */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          '5zekwlco' /* Banco */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 400.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: FutureBuilder<List<FinantialEntityRow>>(
                                                                                                                        future: FinantialEntityTable().queryRows(
                                                                                                                          queryFn: (q) => q.eq(
                                                                                                                            'finantial_entity_type_id',
                                                                                                                            2,
                                                                                                                          ),
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
                                                                                                                          List<FinantialEntityRow> dropDownTDMasterBankFinantialEntityRowList = snapshot.data!;

                                                                                                                          return FlutterFlowDropDown<int>(
                                                                                                                            multiSelectController: _model.dropDownTDMasterBankValueController ??= FormListFieldController<int>(null),
                                                                                                                            options: List<int>.from(dropDownTDMasterBankFinantialEntityRowList.map((e) => e.id).toList()),
                                                                                                                            optionLabels: dropDownTDMasterBankFinantialEntityRowList.map((e) => e.name).toList(),
                                                                                                                            width: 200.0,
                                                                                                                            height: 40.0,
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
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                                                              '292alhqk' /* Entidad Financiera */,
                                                                                                                            ),
                                                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                                                              '7vw75kuo' /* Buscar... */,
                                                                                                                            ),
                                                                                                                            icon: Icon(
                                                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 24.0,
                                                                                                                            ),
                                                                                                                            elevation: 2.0,
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderWidth: 0.0,
                                                                                                                            borderRadius: 8.0,
                                                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                            hidesUnderline: true,
                                                                                                                            isOverButton: false,
                                                                                                                            isSearchable: true,
                                                                                                                            isMultiSelect: true,
                                                                                                                            onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownTDMasterBankValue = val),
                                                                                                                          );
                                                                                                                        },
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Align(
                                                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                        child: FlutterFlowIconButton(
                                                                                                                          borderColor: Colors.transparent,
                                                                                                                          borderRadius: 20.0,
                                                                                                                          borderWidth: 1.0,
                                                                                                                          buttonSize: 40.0,
                                                                                                                          icon: Icon(
                                                                                                                            Icons.check_circle_outline,
                                                                                                                            color: FFAppState().checkTDMASTERBankSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                                                            size: 25.0,
                                                                                                                          ),
                                                                                                                          onPressed: () async {
                                                                                                                            _model.apiResulttr3 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                                                              userIdParam: widget.userData?.id,
                                                                                                                              cardIdParam: 2,
                                                                                                                              paymentMediaTypeId: 5,
                                                                                                                              finantialEntityIdsParamList: _model.dropDownTDMasterBankValue,
                                                                                                                            );

                                                                                                                            safeSetState(() {});
                                                                                                                          },
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          'wbmq8kts' /* Financiera */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 400.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: FutureBuilder<List<FinantialEntityRow>>(
                                                                                                                        future: FinantialEntityTable().queryRows(
                                                                                                                          queryFn: (q) => q.eq(
                                                                                                                            'finantial_entity_type_id',
                                                                                                                            3,
                                                                                                                          ),
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
                                                                                                                          List<FinantialEntityRow> dropDownTDMasterFinantialFinantialEntityRowList = snapshot.data!;

                                                                                                                          return FlutterFlowDropDown<int>(
                                                                                                                            multiSelectController: _model.dropDownTDMasterFinantialValueController ??= FormListFieldController<int>(null),
                                                                                                                            options: List<int>.from(dropDownTDMasterFinantialFinantialEntityRowList.map((e) => e.id).toList()),
                                                                                                                            optionLabels: dropDownTDMasterFinantialFinantialEntityRowList.map((e) => e.name).toList(),
                                                                                                                            width: 200.0,
                                                                                                                            height: 40.0,
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
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                                                              'sk3pfwiq' /* Entidad Financiera */,
                                                                                                                            ),
                                                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                                                              'uup573s9' /* Buscar... */,
                                                                                                                            ),
                                                                                                                            icon: Icon(
                                                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 24.0,
                                                                                                                            ),
                                                                                                                            elevation: 2.0,
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderWidth: 0.0,
                                                                                                                            borderRadius: 8.0,
                                                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                            hidesUnderline: true,
                                                                                                                            isOverButton: false,
                                                                                                                            isSearchable: true,
                                                                                                                            isMultiSelect: true,
                                                                                                                            onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownTDMasterFinantialValue = val),
                                                                                                                          );
                                                                                                                        },
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Align(
                                                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                        child: FlutterFlowIconButton(
                                                                                                                          borderColor: Colors.transparent,
                                                                                                                          borderRadius: 20.0,
                                                                                                                          borderWidth: 1.0,
                                                                                                                          buttonSize: 40.0,
                                                                                                                          icon: Icon(
                                                                                                                            Icons.check_circle_outline,
                                                                                                                            color: FFAppState().checkTDMASTERFinancSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                                                            size: 25.0,
                                                                                                                          ),
                                                                                                                          onPressed: () async {
                                                                                                                            _model.apiResulttr4 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                                                              userIdParam: widget.userData?.id,
                                                                                                                              cardIdParam: 2,
                                                                                                                              paymentMediaTypeId: 5,
                                                                                                                              finantialEntityIdsParamList: _model.dropDownTDMasterFinantialValue,
                                                                                                                            );

                                                                                                                            safeSetState(() {});
                                                                                                                          },
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
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Flexible(
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                    child: Container(
                                                                                                      decoration: BoxDecoration(
                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                        border: Border.all(
                                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                                          width: 2.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          'nvnwha5m' /* Tarjeta de Débito */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          'a9mby4fp' /* AMERICAN EXPRESS */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          'vhxzr9df' /* Banco */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 400.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: FutureBuilder<List<FinantialEntityRow>>(
                                                                                                                        future: FinantialEntityTable().queryRows(
                                                                                                                          queryFn: (q) => q.eq(
                                                                                                                            'finantial_entity_type_id',
                                                                                                                            2,
                                                                                                                          ),
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
                                                                                                                          List<FinantialEntityRow> dropDownTDAMEXBankFinantialFinantialEntityRowList = snapshot.data!;

                                                                                                                          return FlutterFlowDropDown<int>(
                                                                                                                            multiSelectController: _model.dropDownTDAMEXBankFinantialValueController ??= FormListFieldController<int>(null),
                                                                                                                            options: List<int>.from(dropDownTDAMEXBankFinantialFinantialEntityRowList.map((e) => e.id).toList()),
                                                                                                                            optionLabels: dropDownTDAMEXBankFinantialFinantialEntityRowList.map((e) => e.name).toList(),
                                                                                                                            width: 200.0,
                                                                                                                            height: 40.0,
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
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                                                              'uc895701' /* Entidad Financiera */,
                                                                                                                            ),
                                                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                                                              'xbtdxwj1' /* Buscar... */,
                                                                                                                            ),
                                                                                                                            icon: Icon(
                                                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 24.0,
                                                                                                                            ),
                                                                                                                            elevation: 2.0,
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderWidth: 0.0,
                                                                                                                            borderRadius: 8.0,
                                                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                            hidesUnderline: true,
                                                                                                                            isOverButton: false,
                                                                                                                            isSearchable: true,
                                                                                                                            isMultiSelect: true,
                                                                                                                            onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownTDAMEXBankFinantialValue = val),
                                                                                                                          );
                                                                                                                        },
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Align(
                                                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                        child: FlutterFlowIconButton(
                                                                                                                          borderColor: Colors.transparent,
                                                                                                                          borderRadius: 20.0,
                                                                                                                          borderWidth: 1.0,
                                                                                                                          buttonSize: 40.0,
                                                                                                                          icon: Icon(
                                                                                                                            Icons.check_circle_outline,
                                                                                                                            color: FFAppState().checkTDAMEXBankSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                                                            size: 25.0,
                                                                                                                          ),
                                                                                                                          onPressed: () async {
                                                                                                                            _model.apiResulttr5 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                                                              userIdParam: widget.userData?.id,
                                                                                                                              cardIdParam: 2,
                                                                                                                              paymentMediaTypeId: 5,
                                                                                                                              finantialEntityIdsParamList: _model.dropDownTDAMEXBankFinantialValue,
                                                                                                                            );

                                                                                                                            safeSetState(() {});
                                                                                                                          },
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
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: const Color(0x19EE8B60),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(-1.0, -1.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.min,
                                                                                                children: [
                                                                                                  Flexible(
                                                                                                    child: Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                      child: Container(
                                                                                                        width: MediaQuery.sizeOf(context).width * 0.9,
                                                                                                        decoration: BoxDecoration(
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                          border: Border.all(
                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                            width: 1.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Column(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Align(
                                                                                                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                                                                                                    child: Column(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                      children: [
                                                                                                                        Container(
                                                                                                                          width: 200.0,
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                          child: Text(
                                                                                                                            FFLocalizations.of(context).getText(
                                                                                                                              '979xx7iy' /* Tarjeta de Crédito */,
                                                                                                                            ),
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Align(
                                                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                                        child: Container(
                                                                                                                          width: 200.0,
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                          child: Text(
                                                                                                                            FFLocalizations.of(context).getText(
                                                                                                                              'v1ecixpo' /* VISA */,
                                                                                                                            ),
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: Text(
                                                                                                                          FFLocalizations.of(context).getText(
                                                                                                                            'w9je5u2e' /* Banco */,
                                                                                                                          ),
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 400.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: FutureBuilder<List<FinantialEntityRow>>(
                                                                                                                          future: FinantialEntityTable().queryRows(
                                                                                                                            queryFn: (q) => q.eq(
                                                                                                                              'finantial_entity_type_id',
                                                                                                                              2,
                                                                                                                            ),
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
                                                                                                                            List<FinantialEntityRow> dropDownTCVISABankFinantialEntityRowList = snapshot.data!;

                                                                                                                            return FlutterFlowDropDown<int>(
                                                                                                                              multiSelectController: _model.dropDownTCVISABankValueController ??= FormListFieldController<int>(null),
                                                                                                                              options: List<int>.from(dropDownTCVISABankFinantialEntityRowList.map((e) => e.id).toList()),
                                                                                                                              optionLabels: dropDownTCVISABankFinantialEntityRowList.map((e) => e.name).toList(),
                                                                                                                              width: 200.0,
                                                                                                                              height: 40.0,
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
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                                  ),
                                                                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                                                                '8ii78rpu' /* Entidad Financiera */,
                                                                                                                              ),
                                                                                                                              searchHintText: FFLocalizations.of(context).getText(
                                                                                                                                '0xinrp6x' /* Buscar... */,
                                                                                                                              ),
                                                                                                                              icon: Icon(
                                                                                                                                Icons.keyboard_arrow_down_rounded,
                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                size: 24.0,
                                                                                                                              ),
                                                                                                                              elevation: 2.0,
                                                                                                                              borderColor: Colors.transparent,
                                                                                                                              borderWidth: 0.0,
                                                                                                                              borderRadius: 8.0,
                                                                                                                              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                              hidesUnderline: true,
                                                                                                                              isOverButton: false,
                                                                                                                              isSearchable: true,
                                                                                                                              isMultiSelect: true,
                                                                                                                              onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownTCVISABankValue = val),
                                                                                                                            );
                                                                                                                          },
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: Align(
                                                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                          child: FlutterFlowIconButton(
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderRadius: 20.0,
                                                                                                                            borderWidth: 1.0,
                                                                                                                            buttonSize: 40.0,
                                                                                                                            icon: Icon(
                                                                                                                              Icons.check_circle_outline,
                                                                                                                              color: FFAppState().checkTCVISABankSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 25.0,
                                                                                                                            ),
                                                                                                                            onPressed: () async {
                                                                                                                              _model.apiResulttr6 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                                                                userIdParam: widget.userData?.id,
                                                                                                                                cardIdParam: 2,
                                                                                                                                paymentMediaTypeId: 5,
                                                                                                                                finantialEntityIdsParamList: _model.dropDownTDVISAFinancValue,
                                                                                                                              );

                                                                                                                              safeSetState(() {});
                                                                                                                            },
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: Text(
                                                                                                                          FFLocalizations.of(context).getText(
                                                                                                                            '5fpaijvr' /* Financiera */,
                                                                                                                          ),
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 400.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: FutureBuilder<List<FinantialEntityRow>>(
                                                                                                                          future: FinantialEntityTable().queryRows(
                                                                                                                            queryFn: (q) => q.eq(
                                                                                                                              'finantial_entity_type_id',
                                                                                                                              3,
                                                                                                                            ),
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
                                                                                                                            List<FinantialEntityRow> dropDownTCVISAFinantialFinantialEntityRowList = snapshot.data!;

                                                                                                                            return FlutterFlowDropDown<int>(
                                                                                                                              multiSelectController: _model.dropDownTCVISAFinantialValueController ??= FormListFieldController<int>(null),
                                                                                                                              options: List<int>.from(dropDownTCVISAFinantialFinantialEntityRowList.map((e) => e.id).toList()),
                                                                                                                              optionLabels: dropDownTCVISAFinantialFinantialEntityRowList.map((e) => e.name).toList(),
                                                                                                                              width: 200.0,
                                                                                                                              height: 40.0,
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
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                                  ),
                                                                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                                                                's3329edr' /* Entidad Financiera */,
                                                                                                                              ),
                                                                                                                              searchHintText: FFLocalizations.of(context).getText(
                                                                                                                                '24l96rwo' /* Buscar... */,
                                                                                                                              ),
                                                                                                                              icon: Icon(
                                                                                                                                Icons.keyboard_arrow_down_rounded,
                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                size: 24.0,
                                                                                                                              ),
                                                                                                                              elevation: 2.0,
                                                                                                                              borderColor: Colors.transparent,
                                                                                                                              borderWidth: 0.0,
                                                                                                                              borderRadius: 8.0,
                                                                                                                              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                              hidesUnderline: true,
                                                                                                                              isOverButton: false,
                                                                                                                              isSearchable: true,
                                                                                                                              isMultiSelect: true,
                                                                                                                              onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownTCVISAFinantialValue = val),
                                                                                                                            );
                                                                                                                          },
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: 200.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                        child: Align(
                                                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                          child: FlutterFlowIconButton(
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderRadius: 20.0,
                                                                                                                            borderWidth: 1.0,
                                                                                                                            buttonSize: 40.0,
                                                                                                                            icon: Icon(
                                                                                                                              Icons.check_circle_outline,
                                                                                                                              color: FFAppState().checkTCVISAFinancSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 25.0,
                                                                                                                            ),
                                                                                                                            onPressed: () async {
                                                                                                                              _model.apiResulttr7 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                                                                userIdParam: widget.userData?.id,
                                                                                                                                cardIdParam: 2,
                                                                                                                                paymentMediaTypeId: 5,
                                                                                                                                finantialEntityIdsParamList: _model.dropDownTCVISAFinantialValue,
                                                                                                                              );

                                                                                                                              safeSetState(() {});
                                                                                                                            },
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
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Flexible(
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                    child: Container(
                                                                                                      decoration: BoxDecoration(
                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                        border: Border.all(
                                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                                          width: 2.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          'api7eb2n' /* Tarjeta de Crédito */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          '3wo95770' /* MASTERCARD */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          'i287o8rv' /* Banco */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 400.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: FutureBuilder<List<FinantialEntityRow>>(
                                                                                                                        future: FinantialEntityTable().queryRows(
                                                                                                                          queryFn: (q) => q.eq(
                                                                                                                            'finantial_entity_type_id',
                                                                                                                            2,
                                                                                                                          ),
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
                                                                                                                          List<FinantialEntityRow> dropDownTCMASTERBankFinantialEntityRowList = snapshot.data!;

                                                                                                                          return FlutterFlowDropDown<int>(
                                                                                                                            multiSelectController: _model.dropDownTCMASTERBankValueController ??= FormListFieldController<int>(null),
                                                                                                                            options: List<int>.from(dropDownTCMASTERBankFinantialEntityRowList.map((e) => e.id).toList()),
                                                                                                                            optionLabels: dropDownTCMASTERBankFinantialEntityRowList.map((e) => e.name).toList(),
                                                                                                                            width: 200.0,
                                                                                                                            height: 40.0,
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
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                                                              '4nzl7otw' /* Entidad Financiera */,
                                                                                                                            ),
                                                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                                                              'c9p55d3i' /* Buscar... */,
                                                                                                                            ),
                                                                                                                            icon: Icon(
                                                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 24.0,
                                                                                                                            ),
                                                                                                                            elevation: 2.0,
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderWidth: 0.0,
                                                                                                                            borderRadius: 8.0,
                                                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                            hidesUnderline: true,
                                                                                                                            isOverButton: false,
                                                                                                                            isSearchable: true,
                                                                                                                            isMultiSelect: true,
                                                                                                                            onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownTCMASTERBankValue = val),
                                                                                                                          );
                                                                                                                        },
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Align(
                                                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                        child: FlutterFlowIconButton(
                                                                                                                          borderColor: Colors.transparent,
                                                                                                                          borderRadius: 20.0,
                                                                                                                          borderWidth: 1.0,
                                                                                                                          buttonSize: 40.0,
                                                                                                                          icon: Icon(
                                                                                                                            Icons.check_circle_outline,
                                                                                                                            color: FFAppState().checkTCMASTERBankSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                                                            size: 25.0,
                                                                                                                          ),
                                                                                                                          onPressed: () async {
                                                                                                                            _model.apiResulttr8 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                                                              userIdParam: widget.userData?.id,
                                                                                                                              cardIdParam: 2,
                                                                                                                              paymentMediaTypeId: 5,
                                                                                                                              finantialEntityIdsParamList: _model.dropDownTCMASTERBankValue,
                                                                                                                            );

                                                                                                                            safeSetState(() {});
                                                                                                                          },
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          'vw55j7vj' /* Financiera */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 400.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: FutureBuilder<List<FinantialEntityRow>>(
                                                                                                                        future: FinantialEntityTable().queryRows(
                                                                                                                          queryFn: (q) => q.eq(
                                                                                                                            'finantial_entity_type_id',
                                                                                                                            3,
                                                                                                                          ),
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
                                                                                                                          List<FinantialEntityRow> dropDownTCMasterFinantialFinantialEntityRowList = snapshot.data!;

                                                                                                                          return FlutterFlowDropDown<int>(
                                                                                                                            multiSelectController: _model.dropDownTCMasterFinantialValueController ??= FormListFieldController<int>(null),
                                                                                                                            options: List<int>.from(dropDownTCMasterFinantialFinantialEntityRowList.map((e) => e.id).toList()),
                                                                                                                            optionLabels: dropDownTCMasterFinantialFinantialEntityRowList.map((e) => e.name).toList(),
                                                                                                                            width: 200.0,
                                                                                                                            height: 40.0,
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
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                                                              'xtaazv69' /* Entidad Financiera */,
                                                                                                                            ),
                                                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                                                              'udldx8s4' /* Buscar... */,
                                                                                                                            ),
                                                                                                                            icon: Icon(
                                                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 24.0,
                                                                                                                            ),
                                                                                                                            elevation: 2.0,
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderWidth: 0.0,
                                                                                                                            borderRadius: 8.0,
                                                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                            hidesUnderline: true,
                                                                                                                            isOverButton: false,
                                                                                                                            isSearchable: true,
                                                                                                                            isMultiSelect: true,
                                                                                                                            onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownTCMasterFinantialValue = val),
                                                                                                                          );
                                                                                                                        },
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Align(
                                                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                        child: FlutterFlowIconButton(
                                                                                                                          borderColor: Colors.transparent,
                                                                                                                          borderRadius: 20.0,
                                                                                                                          borderWidth: 1.0,
                                                                                                                          buttonSize: 40.0,
                                                                                                                          icon: Icon(
                                                                                                                            Icons.check_circle_outline,
                                                                                                                            color: FFAppState().checkTCMASTERFinancSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                                                            size: 25.0,
                                                                                                                          ),
                                                                                                                          onPressed: () async {
                                                                                                                            _model.apiResulttr9 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                                                              userIdParam: widget.userData?.id,
                                                                                                                              cardIdParam: 2,
                                                                                                                              paymentMediaTypeId: 5,
                                                                                                                              finantialEntityIdsParamList: _model.dropDownTCMasterFinantialValue,
                                                                                                                            );

                                                                                                                            safeSetState(() {});
                                                                                                                          },
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
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Flexible(
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                    child: Container(
                                                                                                      decoration: BoxDecoration(
                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                        border: Border.all(
                                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                                          width: 2.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          'lq389arl' /* Tarjeta de Crédito */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          'hngegq2x' /* AMERICAN EXPRESS */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Text(
                                                                                                                        FFLocalizations.of(context).getText(
                                                                                                                          'an0mc1ja' /* Banco */,
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 400.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: FutureBuilder<List<FinantialEntityRow>>(
                                                                                                                        future: FinantialEntityTable().queryRows(
                                                                                                                          queryFn: (q) => q.eq(
                                                                                                                            'finantial_entity_type_id',
                                                                                                                            2,
                                                                                                                          ),
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
                                                                                                                          List<FinantialEntityRow> dropDownTCAMEXBankFinantialEntityRowList = snapshot.data!;

                                                                                                                          return FlutterFlowDropDown<int>(
                                                                                                                            multiSelectController: _model.dropDownTCAMEXBankValueController ??= FormListFieldController<int>(null),
                                                                                                                            options: List<int>.from(dropDownTCAMEXBankFinantialEntityRowList.map((e) => e.id).toList()),
                                                                                                                            optionLabels: dropDownTCAMEXBankFinantialEntityRowList.map((e) => e.name).toList(),
                                                                                                                            width: 200.0,
                                                                                                                            height: 40.0,
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
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                                                              'mg8fpceg' /* Entidad Financiera */,
                                                                                                                            ),
                                                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                                                              'd3xy8v8c' /* Buscar... */,
                                                                                                                            ),
                                                                                                                            icon: Icon(
                                                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 24.0,
                                                                                                                            ),
                                                                                                                            elevation: 2.0,
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderWidth: 0.0,
                                                                                                                            borderRadius: 8.0,
                                                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                            hidesUnderline: true,
                                                                                                                            isOverButton: false,
                                                                                                                            isSearchable: true,
                                                                                                                            isMultiSelect: true,
                                                                                                                            onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownTCAMEXBankValue = val),
                                                                                                                          );
                                                                                                                        },
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: 200.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                      child: Align(
                                                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                        child: FlutterFlowIconButton(
                                                                                                                          borderColor: Colors.transparent,
                                                                                                                          borderRadius: 20.0,
                                                                                                                          borderWidth: 1.0,
                                                                                                                          buttonSize: 40.0,
                                                                                                                          icon: Icon(
                                                                                                                            Icons.check_circle_outline,
                                                                                                                            color: FFAppState().checkTCAMEXBankSave ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                                                            size: 25.0,
                                                                                                                          ),
                                                                                                                          onPressed: () async {
                                                                                                                            _model.apiResulttr10 = await FnInsertRelUserPaymentMediaCall.call(
                                                                                                                              userIdParam: widget.userData?.id,
                                                                                                                              cardIdParam: 2,
                                                                                                                              paymentMediaTypeId: 5,
                                                                                                                              finantialEntityIdsParamList: _model.dropDownTCAMEXBankValue,
                                                                                                                            );

                                                                                                                            safeSetState(() {});
                                                                                                                          },
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
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
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
                                      ),
                                    ],
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
          ],
        ),
      ),
    );
  }
}
