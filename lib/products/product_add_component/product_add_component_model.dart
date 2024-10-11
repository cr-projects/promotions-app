import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_add_component_widget.dart' show ProductAddComponentWidget;
import 'package:flutter/material.dart';

class ProductAddComponentModel
    extends FlutterFlowModel<ProductAddComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldProductName widget.
  FocusNode? textFieldProductNameFocusNode;
  TextEditingController? textFieldProductNameTextController;
  String? Function(BuildContext, String?)?
      textFieldProductNameTextControllerValidator;
  String? _textFieldProductNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ek1alona' /* Nombre Requerido */,
      );
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    return null;
  }

  // State field(s) for DropDownBrand widget.
  int? dropDownBrandValue;
  FormFieldController<int>? dropDownBrandValueController;
  // State field(s) for DropDownProductType widget.
  int? dropDownProductTypeValue;
  FormFieldController<int>? dropDownProductTypeValueController;
  // Stores action output result for [Validate Form] action in IconButtonOk widget.
  bool? validateForm;

  @override
  void initState(BuildContext context) {
    textFieldProductNameTextControllerValidator =
        _textFieldProductNameTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldProductNameFocusNode?.dispose();
    textFieldProductNameTextController?.dispose();
  }
}
