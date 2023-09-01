import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for fullname widget.
  TextEditingController? fullnameController;
  String? Function(BuildContext, String?)? fullnameControllerValidator;
  // State field(s) for email-signup widget.
  TextEditingController? emailSignupController;
  String? Function(BuildContext, String?)? emailSignupControllerValidator;
  // State field(s) for password-signup widget.
  TextEditingController? passwordSignupController;
  late bool passwordSignupVisibility;
  String? Function(BuildContext, String?)? passwordSignupControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordSignupVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    fullnameController?.dispose();
    emailSignupController?.dispose();
    passwordSignupController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
