import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'form_camp_model.dart';
export 'form_camp_model.dart';

class FormCampWidget extends StatefulWidget {
  const FormCampWidget({
    super.key,
    this.nomcampo,
    this.rforcaid,
    this.tipocampo,
    this.mostrarnomcampo,
    required this.plforid,
    this.plforcaid,
    this.leeobs,
    required this.cantnumleer,
    required this.rforca,
    this.nomcampo2,
  });

  final String? nomcampo;
  final int? rforcaid;
  final int? tipocampo;
  final int? mostrarnomcampo;
  final int? plforid;
  final int? plforcaid;
  final int? leeobs;
  final int? cantnumleer;
  final VwRforcaAtributosRow? rforca;
  final String? nomcampo2;

  @override
  State<FormCampWidget> createState() => _FormCampWidgetState();
}

class _FormCampWidgetState extends State<FormCampWidget> {
  late FormCampModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormCampModel());

    _model.obsTextController ??= TextEditingController(
        text: widget.rforca?.obs != null && widget.rforca?.obs != ''
            ? widget.rforca?.obs
            : null);
    _model.obsFocusNode ??= FocusNode();

    _model.leer1TextController ??= TextEditingController(
        text: widget.rforca?.valnumero?.toString());
    _model.leer1FocusNode ??= FocusNode();

    _model.leer2TextController ??= TextEditingController(
        text: widget.rforca?.valnumero2?.toString());
    _model.leer2FocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if ((widget.mostrarnomcampo == 1) &&
                    (widget.tipocampo != 12) &&
                    (widget.tipocampo != 17))
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              widget.nomcampo!,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if ((widget.mostrarnomcampo == 1) &&
                    ((widget.tipocampo == 12) || (widget.tipocampo == 17)))
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            widget.nomcampo!,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if ((widget.mostrarnomcampo == 1) &&
                    (widget.nomcampo2 != null && widget.nomcampo2 != ''))
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            widget.nomcampo2!,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (widget.tipocampo == 16)
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Switch.adaptive(
                          value: _model.switchValue ??=
                              widget.rforca?.valsinocheck != null
                                  ? (widget.rforca?.valsinocheck == 1)
                                  : false,
                          onChanged: (newValue) async {
                            setState(() => _model.switchValue = newValue);
                            if (newValue) {
                              await RforcaTable().update(
                                data: {
                                  'valsinocheck': 1,
                                },
                                matchingRows: (rows) => rows.eq(
                                  'rforcaid',
                                  widget.rforcaid,
                                ),
                              );
                            } else {
                              await RforcaTable().update(
                                data: {
                                  'valsinocheck': 0,
                                },
                                matchingRows: (rows) => rows.eq(
                                  'rforcaid',
                                  widget.rforcaid,
                                ),
                              );
                            }
                          },
                          activeColor: const Color(0xFF00FF3B),
                          activeTrackColor: const Color(0xFF00FF3B),
                          inactiveTrackColor:
                              FlutterFlowTheme.of(context).alternate,
                          inactiveThumbColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ],
                    ),
                  ),
                if (widget.leeobs == 1)
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 0.0,
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: TextFormField(
                              controller: _model.obsTextController,
                              focusNode: _model.obsFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.obsTextController',
                                const Duration(milliseconds: 2000),
                                () async {
                                  await RforcaTable().update(
                                    data: {
                                      'obs': _model.obsTextController.text,
                                    },
                                    matchingRows: (rows) => rows.eq(
                                      'rforcaid',
                                      widget.rforcaid,
                                    ),
                                  );
                                },
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelText: 'Observaciones',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                alignLabelWithHint: true,
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              maxLines: null,
                              validator: _model.obsTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if ((widget.tipocampo == 2) && (widget.cantnumleer! >= 1))
                  Expanded(
                    child: Material(
                      color: Colors.transparent,
                      elevation: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 1.0,
                          ),
                        ),
                        child: TextFormField(
                          controller: _model.leer1TextController,
                          focusNode: _model.leer1FocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.leer1TextController',
                            const Duration(milliseconds: 2000),
                            () async {
                              await RforcaTable().update(
                                data: {
                                  'valnumero': double.tryParse(
                                      _model.leer1TextController.text),
                                },
                                matchingRows: (rows) => rows.eq(
                                  'rforcaid',
                                  widget.rforcaid,
                                ),
                              );
                            },
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          maxLines: null,
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: true, decimal: true),
                          validator: _model.leer1TextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                if ((widget.tipocampo == 2) && (widget.cantnumleer! >= 2))
                  Expanded(
                    child: Material(
                      color: Colors.transparent,
                      elevation: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 1.0,
                          ),
                        ),
                        child: TextFormField(
                          controller: _model.leer2TextController,
                          focusNode: _model.leer2FocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.leer2TextController',
                            const Duration(milliseconds: 2000),
                            () async {
                              await RforcaTable().update(
                                data: {
                                  'valnumero2': double.tryParse(
                                      _model.leer2TextController.text),
                                },
                                matchingRows: (rows) => rows.eq(
                                  'rforcaid',
                                  widget.rforcaid,
                                ),
                              );
                            },
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          maxLines: null,
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: true, decimal: true),
                          validator: _model.leer2TextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          if (widget.tipocampo == 8)
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                  child: Text(
                    'Checked',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Theme(
                  data: ThemeData(
                    checkboxTheme: CheckboxThemeData(
                      visualDensity: VisualDensity.compact,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    unselectedWidgetColor:
                        FlutterFlowTheme.of(context).secondaryText,
                  ),
                  child: Checkbox(
                    value: _model.checkboxValue ??=
                        widget.rforca?.valsinocheck != null
                            ? (widget.rforca?.valsinocheck == 1)
                            : false,
                    onChanged: (newValue) async {
                      setState(() => _model.checkboxValue = newValue!);
                      if (newValue!) {
                        await RforcaTable().update(
                          data: {
                            'valsinocheck': 1,
                          },
                          matchingRows: (rows) => rows.eq(
                            'rforcaid',
                            widget.rforcaid,
                          ),
                        );
                      } else {
                        await RforcaTable().update(
                          data: {
                            'valsinocheck': 0,
                          },
                          matchingRows: (rows) => rows.eq(
                            'rforcaid',
                            widget.rforcaid,
                          ),
                        );
                      }
                    },
                    side: BorderSide(
                      width: 2,
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                    activeColor: FlutterFlowTheme.of(context).primary,
                    checkColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
          if (widget.tipocampo == 14)
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.network(
                                'https://bcfpggnpmrekaogdarxa.supabase.co/storage/v1/object/public/formsPictures/${widget.plforid?.toString()}/${widget.plforid?.toString()}_${widget.plforcaid?.toString()}.png',
                                fit: BoxFit.contain,
                              ),
                              allowRotation: false,
                              tag:
                                  'https://bcfpggnpmrekaogdarxa.supabase.co/storage/v1/object/public/formsPictures/${widget.plforid?.toString()}/${widget.plforid?.toString()}_${widget.plforcaid?.toString()}.png',
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag:
                            'https://bcfpggnpmrekaogdarxa.supabase.co/storage/v1/object/public/formsPictures/${widget.plforid?.toString()}/${widget.plforid?.toString()}_${widget.plforcaid?.toString()}.png',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://bcfpggnpmrekaogdarxa.supabase.co/storage/v1/object/public/formsPictures/${widget.plforid?.toString()}/${widget.plforid?.toString()}_${widget.plforcaid?.toString()}.png',
                            width: double.infinity,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
