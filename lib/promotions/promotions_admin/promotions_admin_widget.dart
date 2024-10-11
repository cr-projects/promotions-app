import '/backend/supabase/supabase.dart';
import '/cross/menu/menu_widget.dart';
import '/cross/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/promotions/promotion_add_component/promotion_add_component_widget.dart';
import '/promotions/promotion_edit_component/promotion_edit_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'promotions_admin_model.dart';
export 'promotions_admin_model.dart';

class PromotionsAdminWidget extends StatefulWidget {
  const PromotionsAdminWidget({super.key});

  @override
  State<PromotionsAdminWidget> createState() => _PromotionsAdminWidgetState();
}

class _PromotionsAdminWidgetState extends State<PromotionsAdminWidget> {
  late PromotionsAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PromotionsAdminModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.promoSupabaseViewList = await PromotionViewTable().queryRows(
        queryFn: (q) => q.order('id', ascending: true),
      );
      _model.paginatedDataTableController.paginatorController
          .setRowsPerPage(25);
      _model.promotionListPageVar =
          _model.promoSupabaseViewList!.toList().cast<PromotionViewRow>();
      safeSetState(() {});
      FFAppState().daysLeyend = false;
      safeSetState(() {});
    });

    _model.searchTextFieldTextController ??= TextEditingController();
    _model.searchTextFieldFocusNode ??= FocusNode();

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
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
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
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
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: wrapWithModel(
                                        model: _model.sideBarModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const SideBarWidget(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: SafeArea(
                                            child: Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.9,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Container(
                                                              width: 900.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 2.0, 0.0),
                                                                                    child: SizedBox(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.3,
                                                                                      child: TextFormField(
                                                                                        controller: _model.searchTextFieldTextController,
                                                                                        focusNode: _model.searchTextFieldFocusNode,
                                                                                        autofocus: true,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          labelText: FFLocalizations.of(context).getText(
                                                                                            'e2e1yjuc' /* Texto a buscar */,
                                                                                          ),
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Readex Pro',
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
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        validator: _model.searchTextFieldTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                      child: FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 20.0,
                                                                                        borderWidth: 1.0,
                                                                                        buttonSize: 50.0,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        icon: const Icon(
                                                                                          Icons.search_sharp,
                                                                                          color: Color(0xFF1338BE),
                                                                                          size: 30.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          _model.promoViewQuery = await PromotionViewTable().queryRows(
                                                                                            queryFn: (q) => q.order('id', ascending: true),
                                                                                          );
                                                                                          _model.promotionListPageVar = _model.promoViewQuery!.toList().cast<PromotionViewRow>();
                                                                                          safeSetState(() {});
                                                                                          _model.promotionListPageVar = functions.searchPromoViewList(_model.promotionListPageVar.toList(), _model.searchTextFieldTextController.text).toList().cast<PromotionViewRow>();
                                                                                          safeSetState(() {});

                                                                                          safeSetState(() {});
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                      child: FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 20.0,
                                                                                        borderWidth: 1.0,
                                                                                        buttonSize: 50.0,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        icon: const Icon(
                                                                                          Icons.add_circle,
                                                                                          color: Color(0xFF1338BE),
                                                                                          size: 30.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          FFAppState().brandSet = false;
                                                                                          safeSetState(() {});
                                                                                          FFAppState().dataPickerInitBorderColor = FlutterFlowTheme.of(context).alternate;
                                                                                          FFAppState().dataPickerEndBorderColor = FlutterFlowTheme.of(context).alternate;
                                                                                          safeSetState(() {});
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return GestureDetector(
                                                                                                onTap: () => FocusScope.of(context).unfocus(),
                                                                                                child: Padding(
                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                  child: const PromotionAddComponentWidget(),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));

                                                                                          _model.promoSupabaseAfterAdd = await PromotionViewTable().queryRows(
                                                                                            queryFn: (q) => q.order('id', ascending: true),
                                                                                          );
                                                                                          _model.promotionListPageVar = _model.promoSupabaseViewList!.toList().cast<PromotionViewRow>();
                                                                                          safeSetState(() {});

                                                                                          safeSetState(() {});
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 20.0,
                                                                                        borderWidth: 1.0,
                                                                                        buttonSize: 50.0,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        icon: const Icon(
                                                                                          Icons.delete_rounded,
                                                                                          color: Color(0xFF1338BE),
                                                                                          size: 30.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          _model.selRows = functions.selRowsPromotionView(_model.paginatedDataTableController.selectedRows.toList(), _model.promotionListPageVar.toList()).toList().cast<PromotionViewRow>();
                                                                                          safeSetState(() {});
                                                                                          var confirmDialogResponse = await showDialog<bool>(
                                                                                                context: context,
                                                                                                builder: (alertDialogContext) {
                                                                                                  return AlertDialog(
                                                                                                    title: const Text('Eliminación de Promoción'),
                                                                                                    content: const Text('¿Desea eliminar la promoción?'),
                                                                                                    actions: [
                                                                                                      TextButton(
                                                                                                        onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                        child: const Text('Cancel'),
                                                                                                      ),
                                                                                                      TextButton(
                                                                                                        onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                        child: const Text('Confirm'),
                                                                                                      ),
                                                                                                    ],
                                                                                                  );
                                                                                                },
                                                                                              ) ??
                                                                                              false;
                                                                                          if (confirmDialogResponse) {
                                                                                            await PromotionTable().delete(
                                                                                              matchingRows: (rows) => rows.in_(
                                                                                                'id',
                                                                                                _model.selRows.map((e) => e.id).withoutNulls.toList(),
                                                                                              ),
                                                                                            );
                                                                                            _model.newPromoAfterDel = await PromotionViewTable().queryRows(
                                                                                              queryFn: (q) => q.order('id', ascending: true),
                                                                                            );
                                                                                            _model.promotionListPageVar = _model.newPromoAfterDel!.toList().cast<PromotionViewRow>();
                                                                                            safeSetState(() {});
                                                                                          }

                                                                                          safeSetState(() {});
                                                                                        },
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
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Flexible(
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              child: Container(
                                                                width: 900.0,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.9,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final promotionListTable = _model
                                                                        .promotionListPageVar
                                                                        .toList();

                                                                    return FlutterFlowDataTable<
                                                                        PromotionViewRow>(
                                                                      controller:
                                                                          _model
                                                                              .paginatedDataTableController,
                                                                      data:
                                                                          promotionListTable,
                                                                      columnsBuilder:
                                                                          (onSortChanged) =>
                                                                              [
                                                                        DataColumn2(
                                                                          label:
                                                                              DefaultTextStyle.merge(
                                                                            softWrap:
                                                                                true,
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'ig0w7m42' /* # */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          fixedWidth:
                                                                              30.0,
                                                                          onSort:
                                                                              onSortChanged,
                                                                        ),
                                                                        DataColumn2(
                                                                          label:
                                                                              DefaultTextStyle.merge(
                                                                            softWrap:
                                                                                true,
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                '3dovze40' /* Nombre */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          fixedWidth:
                                                                              180.0,
                                                                        ),
                                                                        DataColumn2(
                                                                          label:
                                                                              DefaultTextStyle.merge(
                                                                            softWrap:
                                                                                true,
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'hjsdv3q4' /* Producto */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          fixedWidth:
                                                                              150.0,
                                                                        ),
                                                                        DataColumn2(
                                                                          label:
                                                                              DefaultTextStyle.merge(
                                                                            softWrap:
                                                                                true,
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                '6b4djg5s' /* Empresa / Marca */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          fixedWidth:
                                                                              130.0,
                                                                        ),
                                                                        DataColumn2(
                                                                          label:
                                                                              DefaultTextStyle.merge(
                                                                            softWrap:
                                                                                true,
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'u30qrklh' /* Días */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          fixedWidth:
                                                                              0.0,
                                                                        ),
                                                                        DataColumn2(
                                                                          label:
                                                                              DefaultTextStyle.merge(
                                                                            softWrap:
                                                                                true,
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'ellr44es' /* Fecha Inicio */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          fixedWidth:
                                                                              100.0,
                                                                        ),
                                                                        DataColumn2(
                                                                          label:
                                                                              DefaultTextStyle.merge(
                                                                            softWrap:
                                                                                true,
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                '5kqyd3p4' /* Fecha Fin */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          fixedWidth:
                                                                              100.0,
                                                                        ),
                                                                        DataColumn2(
                                                                          label:
                                                                              DefaultTextStyle.merge(
                                                                            softWrap:
                                                                                true,
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'ay60iz3s' /* Acciones */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          fixedWidth:
                                                                              130.0,
                                                                        ),
                                                                      ],
                                                                      dataRowBuilder: (promotionListTableItem,
                                                                              promotionListTableIndex,
                                                                              selected,
                                                                              onSelectChanged) =>
                                                                          DataRow(
                                                                        selected:
                                                                            selected,
                                                                        onSelectChanged: onSelectChanged !=
                                                                                null
                                                                            ? (val) {
                                                                                onSelectChanged(val);
                                                                                safeSetState(() {});
                                                                              }
                                                                            : null,
                                                                        color: WidgetStateProperty
                                                                            .all(
                                                                          promotionListTableIndex % 2 == 0
                                                                              ? FlutterFlowTheme.of(context).secondaryBackground
                                                                              : FlutterFlowTheme.of(context).primaryBackground,
                                                                        ),
                                                                        cells: [
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              promotionListTableItem.id?.toString(),
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              promotionListTableItem.name,
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              promotionListTableItem.productName,
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              promotionListTableItem.brandName,
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              promotionListTableItem.promotionDiscountStartDate,
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    promotionListTableItem.promotionDiscountEndDate,
                                                                                    '-',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.stretch,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Container(
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Flexible(
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                            borderRadius: 8.0,
                                                                                            borderWidth: 1.0,
                                                                                            buttonSize: 40.0,
                                                                                            fillColor: FlutterFlowTheme.of(context).primary,
                                                                                            icon: Icon(
                                                                                              Icons.remove_red_eye,
                                                                                              color: FlutterFlowTheme.of(context).info,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            showLoadingIndicator: true,
                                                                                            onPressed: () async {
                                                                                              await Future.wait([
                                                                                                Future(() async {
                                                                                                  // getPaymentMediaIds By PromotionId
                                                                                                  _model.paymentMediaIdsByPromotionIdView = await RelPromotionPaymentMediaTable().queryRows(
                                                                                                    queryFn: (q) => q
                                                                                                        .eq(
                                                                                                          'promotion_id',
                                                                                                          promotionListTableItem.id,
                                                                                                        )
                                                                                                        .eq(
                                                                                                          'active',
                                                                                                          true,
                                                                                                        ),
                                                                                                  );
                                                                                                  // getPaymentMedias
                                                                                                  _model.paymentMediasView = await PaymentMediaTable().queryRows(
                                                                                                    queryFn: (q) => q.in_(
                                                                                                      'id',
                                                                                                      _model.paymentMediaIdsByPromotionIdView!
                                                                                                          .map((e) => valueOrDefault<int>(
                                                                                                                e.paymentMediaId,
                                                                                                                1,
                                                                                                              ))
                                                                                                          .toList(),
                                                                                                    ),
                                                                                                  );
                                                                                                  // FinantialPaymentMedia
                                                                                                  _model.finantialPaymenMediaView = await PaymentMediaTable().queryRows(
                                                                                                    queryFn: (q) => q
                                                                                                        .in_(
                                                                                                          'id',
                                                                                                          _model.paymentMediasView!.map((e) => e.id).toList(),
                                                                                                        )
                                                                                                        .neq(
                                                                                                          'finantial_entity_id',
                                                                                                          1,
                                                                                                        ),
                                                                                                  );
                                                                                                  // getFinantialEntitys
                                                                                                  _model.finantialEntitiesView = await FinantialEntityTable().queryRows(
                                                                                                    queryFn: (q) => q.in_(
                                                                                                      'id',
                                                                                                      _model.paymentMediasView!
                                                                                                          .map((e) => valueOrDefault<int>(
                                                                                                                e.id,
                                                                                                                1,
                                                                                                              ))
                                                                                                          .toList(),
                                                                                                    ),
                                                                                                  );
                                                                                                }),
                                                                                                Future(() async {
                                                                                                  // getRelPromotionPaymentMethod
                                                                                                  _model.paymentMethodsByPromotionIdView = await RelPromotionPaymentMethodTable().queryRows(
                                                                                                    queryFn: (q) => q.eq(
                                                                                                      'promotion_id',
                                                                                                      promotionListTableItem.id,
                                                                                                    ),
                                                                                                  );
                                                                                                  // getPaymentMethods
                                                                                                  _model.paymentMethodsView = await PaymentMethodTable().queryRows(
                                                                                                    queryFn: (q) => q.in_(
                                                                                                      'id',
                                                                                                      _model.paymentMethodsByPromotionIdView!.map((e) => e.paymentMethodId).withoutNulls.toList(),
                                                                                                    ),
                                                                                                  );
                                                                                                  _model.relPromotionPaymentMethodViewList = await RelPromotionAditionalPaymentMethodTable().queryRows(
                                                                                                    queryFn: (q) => q.eq(
                                                                                                      'promotion_id',
                                                                                                      promotionListTableItem.id,
                                                                                                    ),
                                                                                                  );
                                                                                                  _model.aditionalPaymentMethodViewList = await AditionalPaymentMethodTable().queryRows(
                                                                                                    queryFn: (q) => q.in_(
                                                                                                      'id',
                                                                                                      _model.relPromotionPaymentMethodViewList!.map((e) => e.aditionalPaymentMethodId).withoutNulls.toList(),
                                                                                                    ),
                                                                                                  );
                                                                                                }),
                                                                                                Future(() async {
                                                                                                  // Days
                                                                                                  _model.daysByPromotionIdView = await RelPromotionDayTable().queryRows(
                                                                                                    queryFn: (q) => q.eq(
                                                                                                      'promotion_id',
                                                                                                      promotionListTableItem.id,
                                                                                                    ),
                                                                                                  );
                                                                                                  _model.selDays = _model.daysByPromotionIdView!.map((e) => e.dayId).toList().cast<int>();
                                                                                                  safeSetState(() {});
                                                                                                  FFAppState().daysLeyend = true;
                                                                                                  safeSetState(() {});
                                                                                                }),
                                                                                              ]);
                                                                                              // set Values
                                                                                              FFAppState().brandSet = true;
                                                                                              FFAppState().brandId = promotionListTableItem.brandId!;
                                                                                              FFAppState().brandBordercolor = FlutterFlowTheme.of(context).alternate;
                                                                                              FFAppState().promotionsReadOnly = true;
                                                                                              safeSetState(() {});
                                                                                              if (_model.finantialPaymenMedia != null && (_model.finantialPaymenMedia)!.isNotEmpty) {
                                                                                                FFAppState().fiinantialVisibility = true;
                                                                                                safeSetState(() {});
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return GestureDetector(
                                                                                                      onTap: () => FocusScope.of(context).unfocus(),
                                                                                                      child: Padding(
                                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                                        child: PromotionEditComponentWidget(
                                                                                                          promotion: promotionListTableItem,
                                                                                                          promotionTitle: 'Visualizar Promoción',
                                                                                                          promotionsReadOnly: true,
                                                                                                          paymentMediaList: _model.paymentMediasView!,
                                                                                                          finantialEntity: _model.finantialEntitiesView?.first,
                                                                                                          selDays: _model.selDays,
                                                                                                          paymentMethod: _model.paymentMethodsView!,
                                                                                                          paymentMedia: _model.finantialPaymenMediaView?.first,
                                                                                                          aditionalPaymentMethodList: _model.aditionalPaymentMethodViewList!,
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              } else {
                                                                                                FFAppState().fiinantialVisibility = false;
                                                                                                safeSetState(() {});
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return GestureDetector(
                                                                                                      onTap: () => FocusScope.of(context).unfocus(),
                                                                                                      child: Padding(
                                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                                        child: PromotionEditComponentWidget(
                                                                                                          promotion: promotionListTableItem,
                                                                                                          promotionTitle: 'Visualizar Promoción',
                                                                                                          promotionsReadOnly: true,
                                                                                                          paymentMediaList: _model.paymentMediasView!,
                                                                                                          selDays: _model.selDays,
                                                                                                          paymentMethod: _model.paymentMethodsView!,
                                                                                                          aditionalPaymentMethodList: _model.aditionalPaymentMethodViewList!,
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              }

                                                                                              FFAppState().daysLeyend = false;
                                                                                              safeSetState(() {});
                                                                                              if (!FFAppState().promotionsReadOnly) {
                                                                                                _model.promotionViewAfterUpdate = await PromotionViewTable().queryRows(
                                                                                                  queryFn: (q) => q.order('name', ascending: true),
                                                                                                );
                                                                                                _model.promotionListPageVar = _model.promotionViewAfterUpdate!.toList().cast<PromotionViewRow>();
                                                                                                safeSetState(() {});
                                                                                              }

                                                                                              safeSetState(() {});
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                        Flexible(
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                            borderRadius: 8.0,
                                                                                            borderWidth: 1.0,
                                                                                            buttonSize: 40.0,
                                                                                            fillColor: FlutterFlowTheme.of(context).secondary,
                                                                                            icon: Icon(
                                                                                              Icons.edit,
                                                                                              color: FlutterFlowTheme.of(context).info,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            showLoadingIndicator: true,
                                                                                            onPressed: () async {
                                                                                              await Future.wait([
                                                                                                Future(() async {
                                                                                                  // getPaymentMediaIds By PromotionId
                                                                                                  _model.paymentMediaIdsByPromotionId = await RelPromotionPaymentMediaTable().queryRows(
                                                                                                    queryFn: (q) => q
                                                                                                        .eq(
                                                                                                          'promotion_id',
                                                                                                          promotionListTableItem.id,
                                                                                                        )
                                                                                                        .eq(
                                                                                                          'active',
                                                                                                          true,
                                                                                                        ),
                                                                                                  );
                                                                                                  // getPaymentMedias
                                                                                                  _model.paymentMedias = await PaymentMediaTable().queryRows(
                                                                                                    queryFn: (q) => q.in_(
                                                                                                      'id',
                                                                                                      _model.paymentMediaIdsByPromotionId!
                                                                                                          .map((e) => valueOrDefault<int>(
                                                                                                                e.paymentMediaId,
                                                                                                                1,
                                                                                                              ))
                                                                                                          .toList(),
                                                                                                    ),
                                                                                                  );
                                                                                                  // FinantialPaymentMedia
                                                                                                  _model.finantialPaymenMedia = await PaymentMediaTable().queryRows(
                                                                                                    queryFn: (q) => q
                                                                                                        .in_(
                                                                                                          'id',
                                                                                                          _model.paymentMedias!.map((e) => e.id).toList(),
                                                                                                        )
                                                                                                        .neq(
                                                                                                          'finantial_entity_id',
                                                                                                          1,
                                                                                                        ),
                                                                                                  );
                                                                                                  // getFinantialEntitys
                                                                                                  _model.finantialEntities = await FinantialEntityTable().queryRows(
                                                                                                    queryFn: (q) => q.in_(
                                                                                                      'id',
                                                                                                      _model.paymentMedias!
                                                                                                          .map((e) => valueOrDefault<int>(
                                                                                                                e.finantialEntityId,
                                                                                                                1,
                                                                                                              ))
                                                                                                          .toList(),
                                                                                                    ),
                                                                                                  );
                                                                                                }),
                                                                                                Future(() async {
                                                                                                  // getRelPromotionPaymentMethod
                                                                                                  _model.getPaymentMethodsByPromotionId = await RelPromotionPaymentMethodTable().queryRows(
                                                                                                    queryFn: (q) => q.eq(
                                                                                                      'promotion_id',
                                                                                                      promotionListTableItem.id,
                                                                                                    ),
                                                                                                  );
                                                                                                  // paymentMethod
                                                                                                  _model.paymentMethod = await PaymentMethodTable().queryRows(
                                                                                                    queryFn: (q) => q.in_(
                                                                                                      'id',
                                                                                                      _model.getPaymentMethodsByPromotionId!.map((e) => e.paymentMethodId).withoutNulls.toList(),
                                                                                                    ),
                                                                                                  );
                                                                                                  _model.relAditionalPaymentMethodList = await RelPromotionAditionalPaymentMethodTable().queryRows(
                                                                                                    queryFn: (q) => q.eq(
                                                                                                      'promotion_id',
                                                                                                      promotionListTableItem.id,
                                                                                                    ),
                                                                                                  );
                                                                                                  _model.aditionalPaymentMethodList = await AditionalPaymentMethodTable().queryRows(
                                                                                                    queryFn: (q) => q.in_(
                                                                                                      'id',
                                                                                                      _model.relAditionalPaymentMethodList!.map((e) => e.aditionalPaymentMethodId).withoutNulls.toList(),
                                                                                                    ),
                                                                                                  );
                                                                                                }),
                                                                                                Future(() async {
                                                                                                  // getDays
                                                                                                  _model.daysByPromotionId = await RelPromotionDayTable().queryRows(
                                                                                                    queryFn: (q) => q.eq(
                                                                                                      'promotion_id',
                                                                                                      promotionListTableItem.id,
                                                                                                    ),
                                                                                                  );
                                                                                                  // selDays List
                                                                                                  _model.selDays = _model.daysByPromotionId!.map((e) => e.dayId).toList().cast<int>();
                                                                                                  safeSetState(() {});
                                                                                                  // daysLeyend - true
                                                                                                  FFAppState().daysLeyend = true;
                                                                                                  safeSetState(() {});
                                                                                                }),
                                                                                              ]);
                                                                                              // set Values
                                                                                              FFAppState().brandSet = true;
                                                                                              FFAppState().brandId = promotionListTableItem.brandId!;
                                                                                              FFAppState().brandBordercolor = FlutterFlowTheme.of(context).alternate;
                                                                                              safeSetState(() {});
                                                                                              if (_model.finantialPaymenMedia != null && (_model.finantialPaymenMedia)!.isNotEmpty) {
                                                                                                FFAppState().fiinantialVisibility = true;
                                                                                                safeSetState(() {});
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return GestureDetector(
                                                                                                      onTap: () => FocusScope.of(context).unfocus(),
                                                                                                      child: Padding(
                                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                                        child: PromotionEditComponentWidget(
                                                                                                          promotion: promotionListTableItem,
                                                                                                          promotionTitle: 'Editar Promoción',
                                                                                                          promotionsReadOnly: false,
                                                                                                          paymentMediaList: _model.paymentMedias!,
                                                                                                          finantialEntity: _model.finantialEntities?.first,
                                                                                                          selDays: _model.selDays,
                                                                                                          paymentMethod: _model.paymentMethod!,
                                                                                                          paymentMedia: _model.finantialPaymenMedia?.first,
                                                                                                          aditionalPaymentMethodList: _model.aditionalPaymentMethodList!,
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              } else {
                                                                                                FFAppState().fiinantialVisibility = false;
                                                                                                safeSetState(() {});
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return GestureDetector(
                                                                                                      onTap: () => FocusScope.of(context).unfocus(),
                                                                                                      child: Padding(
                                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                                        child: PromotionEditComponentWidget(
                                                                                                          promotion: promotionListTableItem,
                                                                                                          promotionTitle: 'Editar Promoción',
                                                                                                          promotionsReadOnly: false,
                                                                                                          paymentMediaList: _model.paymentMedias!,
                                                                                                          selDays: _model.selDays,
                                                                                                          paymentMethod: _model.paymentMethod!,
                                                                                                          aditionalPaymentMethodList: _model.aditionalPaymentMethodList!,
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              }

                                                                                              FFAppState().daysLeyend = false;
                                                                                              safeSetState(() {});

                                                                                              safeSetState(() {});
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                        Flexible(
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                            borderRadius: 8.0,
                                                                                            borderWidth: 1.0,
                                                                                            buttonSize: 40.0,
                                                                                            fillColor: FlutterFlowTheme.of(context).error,
                                                                                            icon: Icon(
                                                                                              Icons.delete_sharp,
                                                                                              color: FlutterFlowTheme.of(context).info,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            onPressed: () async {
                                                                                              var shouldSetState = false;
                                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                                    context: context,
                                                                                                    builder: (alertDialogContext) {
                                                                                                      return AlertDialog(
                                                                                                        title: const Text('Eliminación'),
                                                                                                        content: Text('¿Desea eliminar la promoción  ${promotionListTableItem.name}?'),
                                                                                                        actions: [
                                                                                                          TextButton(
                                                                                                            onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                            child: const Text('Cancelar'),
                                                                                                          ),
                                                                                                          TextButton(
                                                                                                            onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                            child: const Text('Confirmar'),
                                                                                                          ),
                                                                                                        ],
                                                                                                      );
                                                                                                    },
                                                                                                  ) ??
                                                                                                  false;
                                                                                              if (confirmDialogResponse) {
                                                                                                await PromotionTable().delete(
                                                                                                  matchingRows: (rows) => rows.eq(
                                                                                                    'id',
                                                                                                    promotionListTableItem.id,
                                                                                                  ),
                                                                                                );
                                                                                              } else {
                                                                                                if (shouldSetState) safeSetState(() {});
                                                                                                return;
                                                                                              }

                                                                                              _model.promotionAfterDeleteQuery = await PromotionViewTable().queryRows(
                                                                                                queryFn: (q) => q.order('name', ascending: true),
                                                                                              );
                                                                                              shouldSetState = true;
                                                                                              _model.promotionListPageVar = _model.promotionAfterDeleteQuery!.toList().cast<PromotionViewRow>();
                                                                                              safeSetState(() {});
                                                                                              if (shouldSetState) safeSetState(() {});
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ]
                                                                            .map((c) =>
                                                                                DataCell(c))
                                                                            .toList(),
                                                                      ),
                                                                      onSortChanged:
                                                                          (columnIndex,
                                                                              ascending) async {
                                                                        _model.promotionListPageVar = functions
                                                                            .sortPromotionViewList(
                                                                                columnIndex,
                                                                                ascending,
                                                                                _model.promotionListPageVar.toList())
                                                                            .toList()
                                                                            .cast<PromotionViewRow>();
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      paginated:
                                                                          true,
                                                                      selectable:
                                                                          true,
                                                                      hidePaginator:
                                                                          false,
                                                                      showFirstLastButtons:
                                                                          false,
                                                                      width: double
                                                                          .infinity,
                                                                      height: double
                                                                          .infinity,
                                                                      minWidth:
                                                                          50.0,
                                                                      headingRowHeight:
                                                                          56.0,
                                                                      dataRowHeight:
                                                                          50.0,
                                                                      columnSpacing:
                                                                          20.0,
                                                                      headingRowColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .headerTableColor,
                                                                      sortIconColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(10.0),
                                                                        bottomRight:
                                                                            Radius.circular(10.0),
                                                                        topLeft:
                                                                            Radius.circular(10.0),
                                                                        topRight:
                                                                            Radius.circular(10.0),
                                                                      ),
                                                                      addHorizontalDivider:
                                                                          true,
                                                                      addTopAndBottomDivider:
                                                                          true,
                                                                      hideDefaultHorizontalDivider:
                                                                          true,
                                                                      horizontalDividerColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      horizontalDividerThickness:
                                                                          1.0,
                                                                      addVerticalDivider:
                                                                          true,
                                                                      verticalDividerColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      verticalDividerThickness:
                                                                          1.0,
                                                                      checkboxUnselectedFillColor:
                                                                          Colors
                                                                              .transparent,
                                                                      checkboxSelectedFillColor:
                                                                          Colors
                                                                              .transparent,
                                                                      checkboxCheckColor:
                                                                          const Color(
                                                                              0x8A000000),
                                                                      checkboxUnselectedBorderColor:
                                                                          const Color(
                                                                              0x8A000000),
                                                                      checkboxSelectedBorderColor:
                                                                          const Color(
                                                                              0x8A000000),
                                                                    );
                                                                  },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
