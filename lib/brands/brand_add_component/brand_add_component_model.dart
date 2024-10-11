import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'brand_add_component_widget.dart' show BrandAddComponentWidget;
import 'package:flutter/material.dart';

class BrandAddComponentModel extends FlutterFlowModel<BrandAddComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldBrandtName widget.
  FocusNode? textFieldBrandtNameFocusNode;
  TextEditingController? textFieldBrandtNameTextController;
  String? Function(BuildContext, String?)?
      textFieldBrandtNameTextControllerValidator;
  String? _textFieldBrandtNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1g1khui0' /* Nombre Requerido */,
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
  // Stores action output result for [Validate Form] action in IconButtonOk widget.
  bool? validateForm;

  @override
  void initState(BuildContext context) {
    textFieldBrandtNameTextControllerValidator =
        _textFieldBrandtNameTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldBrandtNameFocusNode?.dispose();
    textFieldBrandtNameTextController?.dispose();
  }
}
