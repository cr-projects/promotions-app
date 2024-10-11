import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'aditional_payment_method_type_component_model.dart';
export 'aditional_payment_method_type_component_model.dart';

class AditionalPaymentMethodTypeComponentWidget extends StatefulWidget {
  const AditionalPaymentMethodTypeComponentWidget({
    super.key,
    required this.aditionalPaymentMethod,
  });

  final List<AditionalPaymentMethodRow>? aditionalPaymentMethod;

  @override
  State<AditionalPaymentMethodTypeComponentWidget> createState() =>
      _AditionalPaymentMethodTypeComponentWidgetState();
}

class _AditionalPaymentMethodTypeComponentWidgetState
    extends State<AditionalPaymentMethodTypeComponentWidget> {
  late AditionalPaymentMethodTypeComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AditionalPaymentMethodTypeComponentModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Text(
            FFLocalizations.of(context).getText(
              'wi36ekbc' /* Medio de Pago */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                ),
          ),
        ),
        FutureBuilder<List<AditionalPaymentMethodRow>>(
          future: AditionalPaymentMethodTable().queryRows(
            queryFn: (q) => q.order('id', ascending: true),
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
            List<AditionalPaymentMethodRow>
                dropDownAditionalPaymentMethodTypeAditionalPaymentMethodRowList =
                snapshot.data!;

            return FlutterFlowDropDown<int>(
              multiSelectController:
                  _model.dropDownAditionalPaymentMethodTypeValueController ??=
                      FormListFieldController<int>(
                          _model.dropDownAditionalPaymentMethodTypeValue ??=
                              List<int>.from(
                widget.aditionalPaymentMethod?.map((e) => e.id).toList() ?? [],
              )),
              options: List<int>.from(
                  dropDownAditionalPaymentMethodTypeAditionalPaymentMethodRowList
                      .map((e) => e.id)
                      .toList()),
              optionLabels:
                  dropDownAditionalPaymentMethodTypeAditionalPaymentMethodRowList
                      .map((e) => e.name)
                      .withoutNulls
                      .toList(),
              height: FFAppConstants.dropDownHighNormal.toDouble(),
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
              hintText: FFLocalizations.of(context).getText(
                'zywohqlv' /* Medio de Pago Adicionales */,
              ),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 10.0, 4.0),
              hidesUnderline: true,
              disabled: FFAppState().promotionsReadOnly,
              isOverButton: true,
              isSearchable: false,
              isMultiSelect: true,
              onMultiSelectChanged: (val) => safeSetState(
                  () => _model.dropDownAditionalPaymentMethodTypeValue = val),
            );
          },
        ),
      ],
    );
  }
}
