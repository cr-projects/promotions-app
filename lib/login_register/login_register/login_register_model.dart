import '/flutter_flow/flutter_flow_util.dart';
import 'login_register_widget.dart' show LoginRegisterWidget;
import 'package:flutter/material.dart';

class LoginRegisterModel extends FlutterFlowModel<LoginRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1oa34kjc' /* El email es requerido */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'm3mfwhdh' /* ingresar un email válido */,
      );
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1px6ocoj' /* La contraseña es requerida */,
      );
    }

    if (val.length < 5) {
      return FFLocalizations.of(context).getText(
        'f3p7i0cj' /* Debe ingresar como mínimo 5 ca... */,
      );
    }

    return null;
  }

  // State field(s) for name_Create widget.
  FocusNode? nameCreateFocusNode;
  TextEditingController? nameCreateTextController;
  String? Function(BuildContext, String?)? nameCreateTextControllerValidator;
  String? _nameCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5k5kpbo0' /* El nombre es requerido */,
      );
    }

    if (val.length < 4) {
      return FFLocalizations.of(context).getText(
        'jv86lqwa' /* Ingresar mínimo 4 caracteres */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for surname_Create widget.
  FocusNode? surnameCreateFocusNode;
  TextEditingController? surnameCreateTextController;
  String? Function(BuildContext, String?)? surnameCreateTextControllerValidator;
  String? _surnameCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bvvw0n61' /* El apellido es requerido */,
      );
    }

    if (val.length < 4) {
      return FFLocalizations.of(context).getText(
        'y2dfsuzm' /* Ingresar mínimo 4 caracteres */,
      );
    }

    return null;
  }

  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  String? _emailAddressCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qsmco8om' /* El email es requerido */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '6wd2484q' /* Debe ingresar un email válido */,
      );
    }
    return null;
  }

  // State field(s) for dni_Create widget.
  FocusNode? dniCreateFocusNode;
  TextEditingController? dniCreateTextController;
  String? Function(BuildContext, String?)? dniCreateTextControllerValidator;
  String? _dniCreateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '09uf98ek' /* Nro de documento requerido */,
      );
    }

    if (val.length < 7) {
      return FFLocalizations.of(context).getText(
        'zrsuj5cm' /* Debe ingresar un dni válido */,
      );
    }
    if (val.length > 8) {
      return FFLocalizations.of(context).getText(
        'it4uky0a' /* No puede superar los 8 dígitos */,
      );
    }
    if (!RegExp('^\\d+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '3dv3v1o9' /* Ingresar solo números */,
      );
    }
    return null;
  }

  // State field(s) for phone_Create widget.
  final phoneCreateKey = GlobalKey();
  FocusNode? phoneCreateFocusNode;
  TextEditingController? phoneCreateTextController;
  String? phoneCreateSelectedOption;
  String? Function(BuildContext, String?)? phoneCreateTextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  String? _passwordCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'mubb6wtz' /* La contraseña es requerida */,
      );
    }

    if (val.length < 5) {
      return FFLocalizations.of(context).getText(
        'd40kmfuo' /* Debe ingresar como mínimo 5 ca... */,
      );
    }

    return null;
  }

  // State field(s) for password_Confirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  String? _passwordConfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'n10aox3d' /* Ingresar la confirmación */,
      );
    }

    if (val.length < 5) {
      return FFLocalizations.of(context).getText(
        'noltff93' /* Debe ingresar como mínimo 5 ca... */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    nameCreateTextControllerValidator = _nameCreateTextControllerValidator;
    surnameCreateTextControllerValidator =
        _surnameCreateTextControllerValidator;
    emailAddressCreateTextControllerValidator =
        _emailAddressCreateTextControllerValidator;
    dniCreateTextControllerValidator = _dniCreateTextControllerValidator;
    passwordCreateVisibility = false;
    passwordCreateTextControllerValidator =
        _passwordCreateTextControllerValidator;
    passwordConfirmVisibility = false;
    passwordConfirmTextControllerValidator =
        _passwordConfirmTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    nameCreateFocusNode?.dispose();
    nameCreateTextController?.dispose();

    surnameCreateFocusNode?.dispose();
    surnameCreateTextController?.dispose();

    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    dniCreateFocusNode?.dispose();
    dniCreateTextController?.dispose();

    phoneCreateFocusNode?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
