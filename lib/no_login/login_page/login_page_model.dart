import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for idorname widget.
  FocusNode? idornameFocusNode;
  TextEditingController? idornameTextController;
  String? Function(BuildContext, String?)? idornameTextControllerValidator;
  // State field(s) for passwordCreate widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // Stores action output result for [Backend Call - API (loginAPI)] action in Button widget.
  ApiCallResponse? apiResultFalse;
  // Stores action output result for [Backend Call - API (loginAPI)] action in Button widget.
  ApiCallResponse? apiResultTrue;
  // Stores action output result for [Backend Call - API (getAnnouncementAPI)] action in Button widget.
  ApiCallResponse? apiResultAnnouncement;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    idornameFocusNode?.dispose();
    idornameTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();
  }
}
