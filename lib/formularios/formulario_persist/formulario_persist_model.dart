import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'formulario_persist_widget.dart' show FormularioPersistWidget;
import 'package:flutter/material.dart';

class FormularioPersistModel extends FlutterFlowModel<FormularioPersistWidget> {
  ///  Local state fields for this page.

  List<PlforcaRow> formEnds = [];
  void addToFormEnds(PlforcaRow item) => formEnds.add(item);
  void removeFromFormEnds(PlforcaRow item) => formEnds.remove(item);
  void removeAtIndexFromFormEnds(int index) => formEnds.removeAt(index);
  void insertAtIndexInFormEnds(int index, PlforcaRow item) =>
      formEnds.insert(index, item);
  void updateFormEndsAtIndex(int index, Function(PlforcaRow) updateFn) =>
      formEnds[index] = updateFn(formEnds[index]);

  DateTime? date;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in FormularioPersist widget.
  List<PlforcaRow>? finesForm1;
  // State field(s) for OrdenServicio widget.
  int? ordenServicioValue;
  FormFieldController<int>? ordenServicioValueController;
  // State field(s) for NomRegistro widget.
  FocusNode? nomRegistroFocusNode;
  TextEditingController? nomRegistroTextController;
  String? Function(BuildContext, String?)? nomRegistroTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomRegistroFocusNode?.dispose();
    nomRegistroTextController?.dispose();
  }
}
