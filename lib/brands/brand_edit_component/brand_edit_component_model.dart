import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'brand_edit_component_widget.dart' show BrandEditComponentWidget;
import 'package:flutter/material.dart';

class BrandEditComponentModel
    extends FlutterFlowModel<BrandEditComponentWidget> {
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
        'b5ov52bc' /* Nombre de producto requerido */,
      );
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    return null;
  }

  // State field(s) for DropDownEnterpriseType widget.
  int? dropDownEnterpriseTypeValue;
  FormFieldController<int>? dropDownEnterpriseTypeValueController;
  // State field(s) for CheckboxActive widget.
  bool? checkboxActiveValue;
  // Stores action output result for [Backend Call - Update Row(s)] action in IconButton widget.
  List<BrandRow>? updateBrand;

  @override
  void initState(BuildContext context) {
    textFieldNameTextControllerValidator =
        _textFieldNameTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();
  }
}
