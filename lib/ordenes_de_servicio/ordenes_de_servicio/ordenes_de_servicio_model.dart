import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ordenes_de_servicio_widget.dart' show OrdenesDeServicioWidget;
import 'package:flutter/material.dart';

class OrdenesDeServicioModel extends FlutterFlowModel<OrdenesDeServicioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<VwMweOservicioRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
