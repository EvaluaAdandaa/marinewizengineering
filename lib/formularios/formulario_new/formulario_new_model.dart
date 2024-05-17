import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'formulario_new_widget.dart' show FormularioNewWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormularioNewModel extends FlutterFlowModel<FormularioNewWidget> {
  ///  Local state fields for this page.

  DateTime? formDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for OrdenServicio widget.
  int? ordenServicioValue;
  FormFieldController<int>? ordenServicioValueController;
  // State field(s) for NomRegistro widget.
  FocusNode? nomRegistroFocusNode;
  TextEditingController? nomRegistroTextController;
  String? Function(BuildContext, String?)? nomRegistroTextControllerValidator;
  String? _nomRegistroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for Fecha widget.
  FocusNode? fechaFocusNode;
  TextEditingController? fechaTextController;
  String? Function(BuildContext, String?)? fechaTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  RforRow? rfor;

  @override
  void initState(BuildContext context) {
    nomRegistroTextControllerValidator = _nomRegistroTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomRegistroFocusNode?.dispose();
    nomRegistroTextController?.dispose();

    fechaFocusNode?.dispose();
    fechaTextController?.dispose();
  }
}
