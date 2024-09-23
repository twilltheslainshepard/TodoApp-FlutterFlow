import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SIgnup-EmailAddress widget.
  FocusNode? sIgnupEmailAddressFocusNode;
  TextEditingController? sIgnupEmailAddressTextController;
  String? Function(BuildContext, String?)?
      sIgnupEmailAddressTextControllerValidator;
  // State field(s) for SIgnup-Password widget.
  FocusNode? sIgnupPasswordFocusNode;
  TextEditingController? sIgnupPasswordTextController;
  late bool sIgnupPasswordVisibility;
  String? Function(BuildContext, String?)?
      sIgnupPasswordTextControllerValidator;
  // State field(s) for SIgnup-ConfirmPassword widget.
  FocusNode? sIgnupConfirmPasswordFocusNode;
  TextEditingController? sIgnupConfirmPasswordTextController;
  late bool sIgnupConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      sIgnupConfirmPasswordTextControllerValidator;
  // State field(s) for Login-login widget.
  FocusNode? loginLoginFocusNode;
  TextEditingController? loginLoginTextController;
  String? Function(BuildContext, String?)? loginLoginTextControllerValidator;
  // State field(s) for Login-Password widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordTextController;
  String? Function(BuildContext, String?)? loginPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sIgnupPasswordVisibility = false;
    sIgnupConfirmPasswordVisibility = false;
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
