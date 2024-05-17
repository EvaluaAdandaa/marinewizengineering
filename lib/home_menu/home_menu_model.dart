import '/flutter_flow/flutter_flow_util.dart';
import 'home_menu_widget.dart' show HomeMenuWidget;
import 'package:flutter/material.dart';

class HomeMenuModel extends FlutterFlowModel<HomeMenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
