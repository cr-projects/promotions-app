import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'finantial_entity_type_component_model.dart';
export 'finantial_entity_type_component_model.dart';

class FinantialEntityTypeComponentWidget extends StatefulWidget {
  const FinantialEntityTypeComponentWidget({
    super.key,
    this.finantialEntity,
  });

  final FinantialEntityRow? finantialEntity;

  @override
  State<FinantialEntityTypeComponentWidget> createState() =>
      _FinantialEntityTypeComponentWidgetState();
}

class _FinantialEntityTypeComponentWidgetState
    extends State<FinantialEntityTypeComponentWidget> {
  late FinantialEntityTypeComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinantialEntityTypeComponentModel());

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
              'iu1c5yto' /* Tipo Entidad */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                ),
          ),
        ),
        FutureBuilder<List<FinantialEntityTypeRow>>(
          future: FinantialEntityTypeTable().queryRows(
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
            List<FinantialEntityTypeRow>
                dropDownFinantialEntityTypeFinantialEntityTypeRowList =
                snapshot.data!;

            return FlutterFlowDropDown<int>(
              controller: _model.dropDownFinantialEntityTypeValueController ??=
                  FormFieldController<int>(
                _model.dropDownFinantialEntityTypeValue ??=
                    widget.finantialEntity?.finantialEntityTypeId,
              ),
              options: List<int>.from(
                  dropDownFinantialEntityTypeFinantialEntityTypeRowList
                      .map((e) => e.id)
                      .toList()),
              optionLabels:
                  dropDownFinantialEntityTypeFinantialEntityTypeRowList
                      .map((e) => e.name)
                      .withoutNulls
                      .toList(),
              onChanged: (val) => safeSetState(
                  () => _model.dropDownFinantialEntityTypeValue = val),
              width: double.infinity,
              height: FFAppConstants.dropDownHighNormal.toDouble(),
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 12.0,
                    letterSpacing: 0.0,
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
              isMultiSelect: false,
            );
          },
        ),
      ],
    );
  }
}
