import '/flutter_flow/flutter_flow_util.dart';
import 'formularios_home_widget.dart' show FormulariosHomeWidget;
import 'package:flutter/material.dart';

class FormulariosHomeModel extends FlutterFlowModel<FormulariosHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
