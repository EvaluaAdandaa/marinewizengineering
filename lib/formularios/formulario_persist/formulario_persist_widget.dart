import '/backend/supabase/supabase.dart';
import '/components/form_camp_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'formulario_persist_model.dart';
export 'formulario_persist_model.dart';

class FormularioPersistWidget extends StatefulWidget {
  const FormularioPersistWidget({
    super.key,
    required this.plforid,
    required this.rforid,
    required this.formName,
    required this.rforrow,
  });

  final int? plforid;
  final int? rforid;
  final String? formName;
  final RforRow? rforrow;

  @override
  State<FormularioPersistWidget> createState() =>
      _FormularioPersistWidgetState();
}

class _FormularioPersistWidgetState extends State<FormularioPersistWidget> {
  late FormularioPersistModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormularioPersistModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.finesForm1 = await PlforcaTable().queryRows(
        queryFn: (q) => q
            .eq(
              'plforid',
              widget.plforid,
            )
            .eq(
              'poscamposgte',
              2,
            )
            .order('secuencia', ascending: true),
      );
      setState(() {
        _model.formEnds = _model.finesForm1!.toList().cast<PlforcaRow>();
      });
      setState(() {
        _model.date = widget.rforrow?.fecha;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Fecha: ${_model.date?.toString()}',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    });

    _model.nomRegistroTextController ??=
        TextEditingController(text: widget.rforrow?.nomformulario);
    _model.nomRegistroFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          actions: const [],
          flexibleSpace: FlexibleSpaceBar(
            background: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
                Text(
                  valueOrDefault<String>(
                    widget.formName,
                    'Form',
                  ),
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                      ),
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: const Icon(
                    Icons.save,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('FormulariosHome');
                  },
                ),
              ],
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(36.0, 20.0, 36.0, 0.0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Orden de Servicio',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: FutureBuilder<List<OseRow>>(
                                        future: OseTable().queryRows(
                                          queryFn: (q) => q.eq(
                                            'estado',
                                            0,
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<OseRow> ordenServicioOseRowList =
                                              snapshot.data!;
                                          return FlutterFlowDropDown<int>(
                                            controller: _model
                                                    .ordenServicioValueController ??=
                                                FormFieldController<int>(
                                              _model.ordenServicioValue ??=
                                                  widget.rforrow?.oseid,
                                            ),
                                            options: List<int>.from(
                                                ordenServicioOseRowList
                                                    .map((e) => e.oseid)
                                                    .toList()),
                                            optionLabels:
                                                ordenServicioOseRowList
                                                    .map((e) => e.numorden)
                                                    .withoutNulls
                                                    .toList(),
                                            onChanged: (val) async {
                                              setState(() => _model
                                                  .ordenServicioValue = val);
                                              await RforTable().update(
                                                data: {
                                                  'oseid':
                                                      _model.ordenServicioValue,
                                                },
                                                matchingRows: (rows) => rows.eq(
                                                  'rforid',
                                                  widget.rforid,
                                                ),
                                              );
                                              setState(() {});
                                            },
                                            width: 300.0,
                                            height: 56.0,
                                            searchHintTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            searchTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                'Seleccione Orden de Servicio',
                                            searchHintText: 'Busque la orden',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            borderWidth: 2.0,
                                            borderRadius: 8.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: true,
                                            isMultiSelect: false,
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Nombre del Registro',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        width: 300.0,
                                        child: TextFormField(
                                          controller:
                                              _model.nomRegistroTextController,
                                          focusNode:
                                              _model.nomRegistroFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.nomRegistroTextController',
                                            const Duration(milliseconds: 2000),
                                            () async {
                                              await RforTable().update(
                                                data: {
                                                  'nomformulario': _model
                                                      .nomRegistroTextController
                                                      .text,
                                                },
                                                matchingRows: (rows) => rows.eq(
                                                  'rforid',
                                                  widget.rforid,
                                                ),
                                              );
                                              setState(() {});
                                            },
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .nomRegistroTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Fecha del Registro',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final datePickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: getCurrentTimestamp,
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2050),
                                    builder: (context, child) {
                                      return wrapInMaterialDatePickerTheme(
                                        context,
                                        child!,
                                        headerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        headerForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        headerTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                        pickerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        pickerForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        selectedDateTimeBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        selectedDateTimeForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        actionButtonForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        iconSize: 24.0,
                                      );
                                    },
                                  );

                                  if (datePickedDate != null) {
                                    safeSetState(() {
                                      _model.datePicked = DateTime(
                                        datePickedDate.year,
                                        datePickedDate.month,
                                        datePickedDate.day,
                                      );
                                    });
                                  }
                                  if (_model.datePicked != null) {
                                    setState(() {
                                      _model.date = _model.datePicked;
                                    });
                                    await RforTable().update(
                                      data: {
                                        'fecha': supaSerialize<DateTime>(
                                            _model.date),
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'rforid',
                                        widget.rforid,
                                      ),
                                    );
                                    setState(() {});
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  dateTimeFormat(
                                                    'd/M/y h:mm A',
                                                    _model.date,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  '0',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.calendar_month,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 45.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: FutureBuilder<List<VwRforcaAtributosRow>>(
                    future: VwRforcaAtributosTable().queryRows(
                      queryFn: (q) => q
                          .eq(
                            'plforid',
                            widget.plforid,
                          )
                          .eq(
                            'poscamposgte',
                            2,
                          )
                          .eq(
                            'rforid',
                            widget.rforid,
                          )
                          .order('secuencia', ascending: true),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<VwRforcaAtributosRow>
                          listViewVwRforcaAtributosRowList = snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewVwRforcaAtributosRowList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewVwRforcaAtributosRow =
                              listViewVwRforcaAtributosRowList[listViewIndex];
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (listViewIndex == 0)
                                  FutureBuilder<List<VwRforcaAtributosRow>>(
                                    future: VwRforcaAtributosTable().queryRows(
                                      queryFn: (q) => q
                                          .lte(
                                            'secuencia',
                                            listViewVwRforcaAtributosRow
                                                .secuencia,
                                          )
                                          .eq(
                                            'rforid',
                                            widget.rforid,
                                          )
                                          .order('secuencia', ascending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<VwRforcaAtributosRow>
                                          rowVwRforcaAtributosRowList =
                                          snapshot.data!;
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: List.generate(
                                            rowVwRforcaAtributosRowList.length,
                                            (rowIndex) {
                                          final rowVwRforcaAtributosRow =
                                              rowVwRforcaAtributosRowList[
                                                  rowIndex];
                                          return Flexible(
                                            flex: valueOrDefault<int>(
                                              rowVwRforcaAtributosRow
                                                  .poscolumna,
                                              1,
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: FormCampWidget(
                                                key: Key(
                                                    'Key0lb_${rowIndex}_of_${rowVwRforcaAtributosRowList.length}'),
                                                nomcampo:
                                                    rowVwRforcaAtributosRow
                                                        .nomcampo,
                                                rforcaid:
                                                    rowVwRforcaAtributosRow
                                                        .rforcaid,
                                                tipocampo:
                                                    rowVwRforcaAtributosRow
                                                        .tipocampo,
                                                mostrarnomcampo:
                                                    rowVwRforcaAtributosRow
                                                        .mostrarnomcampo,
                                                plforid: rowVwRforcaAtributosRow
                                                    .plforid!,
                                                plforcaid:
                                                    rowVwRforcaAtributosRow
                                                        .plforcaid,
                                                leeobs: rowVwRforcaAtributosRow
                                                    .leeobs,
                                                cantnumleer:
                                                    rowVwRforcaAtributosRow
                                                        .cantnumleer!,
                                                rforca: rowVwRforcaAtributosRow,
                                                nomcampo2:
                                                    rowVwRforcaAtributosRow
                                                        .nomcampo2,
                                              ),
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                if (listViewIndex > 0)
                                  FutureBuilder<List<VwRforcaAtributosRow>>(
                                    future: VwRforcaAtributosTable().queryRows(
                                      queryFn: (q) => q
                                          .eq(
                                            'rforid',
                                            widget.rforid,
                                          )
                                          .gt(
                                            'secuencia',
                                            _model.formEnds
                                                .where((e) =>
                                                    e.secuencia <
                                                    listViewVwRforcaAtributosRow
                                                        .secuencia!)
                                                .toList()
                                                .last
                                                .secuencia,
                                          )
                                          .lte(
                                            'secuencia',
                                            listViewVwRforcaAtributosRow
                                                .secuencia,
                                          )
                                          .order('secuencia', ascending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<VwRforcaAtributosRow>
                                          rowVwRforcaAtributosRowList =
                                          snapshot.data!;
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: List.generate(
                                            rowVwRforcaAtributosRowList.length,
                                            (rowIndex) {
                                          final rowVwRforcaAtributosRow =
                                              rowVwRforcaAtributosRowList[
                                                  rowIndex];
                                          return Flexible(
                                            flex: valueOrDefault<int>(
                                              rowVwRforcaAtributosRow
                                                  .poscolumna,
                                              1,
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: FormCampWidget(
                                                key: Key(
                                                    'Keyu5z_${rowIndex}_of_${rowVwRforcaAtributosRowList.length}'),
                                                nomcampo:
                                                    rowVwRforcaAtributosRow
                                                        .nomcampo,
                                                rforcaid:
                                                    rowVwRforcaAtributosRow
                                                        .rforcaid,
                                                tipocampo:
                                                    rowVwRforcaAtributosRow
                                                        .tipocampo,
                                                mostrarnomcampo:
                                                    rowVwRforcaAtributosRow
                                                        .mostrarnomcampo,
                                                plforid: rowVwRforcaAtributosRow
                                                    .plforid!,
                                                plforcaid:
                                                    rowVwRforcaAtributosRow
                                                        .plforcaid,
                                                leeobs: rowVwRforcaAtributosRow
                                                    .leeobs,
                                                cantnumleer:
                                                    rowVwRforcaAtributosRow
                                                        .cantnumleer!,
                                                rforca: rowVwRforcaAtributosRow,
                                                nomcampo2:
                                                    rowVwRforcaAtributosRow
                                                        .nomcampo2,
                                              ),
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                  ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
