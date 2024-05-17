import '/flutter_flow/flutter_flow_util.dart';
import 'form_camp_widget.dart' show FormCampWidget;
import 'package:flutter/material.dart';

class FormCampModel extends FlutterFlowModel<FormCampWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for Obs widget.
  FocusNode? obsFocusNode;
  TextEditingController? obsTextController;
  String? Function(BuildContext, String?)? obsTextControllerValidator;
  // State field(s) for Leer1 widget.
  FocusNode? leer1FocusNode;
  TextEditingController? leer1TextController;
  String? Function(BuildContext, String?)? leer1TextControllerValidator;
  // State field(s) for Leer2 widget.
  FocusNode? leer2FocusNode;
  TextEditingController? leer2TextController;
  String? Function(BuildContext, String?)? leer2TextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    obsFocusNode?.dispose();
    obsTextController?.dispose();

    leer1FocusNode?.dispose();
    leer1TextController?.dispose();

    leer2FocusNode?.dispose();
    leer2TextController?.dispose();
  }
}
