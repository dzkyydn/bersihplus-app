import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'setting_page_widget.dart' show SettingPageWidget;
import 'package:flutter/material.dart';

class SettingPageModel extends FlutterFlowModel<SettingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for numberPhone widget.
  FocusNode? numberPhoneFocusNode;
  TextEditingController? numberPhoneTextController;
  String? Function(BuildContext, String?)? numberPhoneTextControllerValidator;
  // Stores action output result for [Backend Call - API (contactAPI)] action in Button widget.
  ApiCallResponse? apiResultContact;
  // State field(s) for passwordOld widget.
  FocusNode? passwordOldFocusNode;
  TextEditingController? passwordOldTextController;
  late bool passwordOldVisibility;
  String? Function(BuildContext, String?)? passwordOldTextControllerValidator;
  // State field(s) for passwordNew widget.
  FocusNode? passwordNewFocusNode;
  TextEditingController? passwordNewTextController;
  late bool passwordNewVisibility;
  String? Function(BuildContext, String?)? passwordNewTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  // Stores action output result for [Backend Call - API (passwordAPI)] action in Button widget.
  ApiCallResponse? apiResultPassword;

  @override
  void initState(BuildContext context) {
    passwordOldVisibility = false;
    passwordNewVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    numberPhoneFocusNode?.dispose();
    numberPhoneTextController?.dispose();

    passwordOldFocusNode?.dispose();
    passwordOldTextController?.dispose();

    passwordNewFocusNode?.dispose();
    passwordNewTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
