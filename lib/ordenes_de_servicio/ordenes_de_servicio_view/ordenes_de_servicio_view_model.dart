import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ordenes_de_servicio_view_widget.dart' show OrdenesDeServicioViewWidget;
import 'package:flutter/material.dart';

class OrdenesDeServicioViewModel
    extends FlutterFlowModel<OrdenesDeServicioViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<VwMweOserviciodetRow>();
  // State field(s) for Checkbox widget.

  Map<VwMweOserviciodetRow, bool> checkboxValueMap = {};
  List<VwMweOserviciodetRow> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
