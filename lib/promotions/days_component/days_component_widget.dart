import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'days_component_model.dart';
export 'days_component_model.dart';

class DaysComponentWidget extends StatefulWidget {
  const DaysComponentWidget({
    super.key,
    required this.days,
  });

  final List<int>? days;

  @override
  State<DaysComponentWidget> createState() => _DaysComponentWidgetState();
}

class _DaysComponentWidgetState extends State<DaysComponentWidget> {
  late DaysComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DaysComponentModel());

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
        if (FFAppState().daysLeyend)
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'a69pxj03' /* Días */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        FutureBuilder<List<DayRow>>(
          future: DayTable().queryRows(
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
            List<DayRow> daysDropDownDayRowList = snapshot.data!;

            return FlutterFlowDropDown<int>(
              multiSelectController: _model.daysDropDownValueController ??=
                  FormListFieldController<int>(
                      _model.daysDropDownValue ??= List<int>.from(
                widget.days ?? [],
              )),
              options: List<int>.from(
                  daysDropDownDayRowList.map((e) => e.id).toList()),
              optionLabels: daysDropDownDayRowList
                  .map((e) => e.name)
                  .withoutNulls
                  .toList(),
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
              isMultiSelect: true,
              onMultiSelectChanged: (val) =>
                  safeSetState(() => _model.daysDropDownValue = val),
            );
          },
        ),
      ],
    );
  }
}
