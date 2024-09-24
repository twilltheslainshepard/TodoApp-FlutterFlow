import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SIgnup-EmailAddress widget.
  FocusNode? sIgnupEmailAddressFocusNode;
  TextEditingController? sIgnupEmailAddressTextController;
  String? Function(BuildContext, String?)?
      sIgnupEmailAddressTextControllerValidator;
  String? _sIgnupEmailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for SIgnup-Password widget.
  FocusNode? sIgnupPasswordFocusNode;
  TextEditingController? sIgnupPasswordTextController;
  late bool sIgnupPasswordVisibility;
  String? Function(BuildContext, String?)?
      sIgnupPasswordTextControllerValidator;
  String? _sIgnupPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for SIgnup-ConfirmPassword widget.
  FocusNode? sIgnupConfirmPasswordFocusNode;
  TextEditingController? sIgnupConfirmPasswordTextController;
  late bool sIgnupConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      sIgnupConfirmPasswordTextControllerValidator;
  String? _sIgnupConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for Login-login widget.
  FocusNode? loginLoginFocusNode;
  TextEditingController? loginLoginTextController;
  String? Function(BuildContext, String?)? loginLoginTextControllerValidator;
  String? _loginLoginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for Login-Password widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordTextController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordTextControllerValidator;
  String? _loginPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    sIgnupEmailAddressTextControllerValidator =
        _sIgnupEmailAddressTextControllerValidator;
    sIgnupPasswordVisibility = false;
    sIgnupPasswordTextControllerValidator =
        _sIgnupPasswordTextControllerValidator;
    sIgnupConfirmPasswordVisibility = false;
    sIgnupConfirmPasswordTextControllerValidator =
        _sIgnupConfirmPasswordTextControllerValidator;
    loginLoginTextControllerValidator = _loginLoginTextControllerValidator;
    loginPasswordVisibility = false;
    loginPasswordTextControllerValidator =
        _loginPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    sIgnupEmailAddressFocusNode?.dispose();
    sIgnupEmailAddressTextController?.dispose();

    sIgnupPasswordFocusNode?.dispose();
    sIgnupPasswordTextController?.dispose();

    sIgnupConfirmPasswordFocusNode?.dispose();
    sIgnupConfirmPasswordTextController?.dispose();

    loginLoginFocusNode?.dispose();
    loginLoginTextController?.dispose();

    loginPasswordFocusNode?.dispose();
    loginPasswordTextController?.dispose();
  }
}
