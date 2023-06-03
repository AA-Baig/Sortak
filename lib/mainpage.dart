import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sortak_final/lists.dart';
import '/options.dart';
import 'package:sortak_final/timecomp.dart';

class ArrayWidget extends StatefulWidget {
  const ArrayWidget({Key? key}) : super(key: key);

  @override
  _ArrayWidgetState createState() => _ArrayWidgetState();
}

class _ArrayWidgetState extends State<ArrayWidget> {
  double? sliderValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF454242),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Sortak',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).title1.override(
              fontFamily: 'Poppins',
              color: FlutterFlowTheme.of(context).secondaryColor,
            ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 350,
                        height: 250,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'images/array.png',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: Container(
                      width: 350,
                      height: 460,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Text(
                              'Set The Length Of The Unsorted List',
                              style: FlutterFlowTheme.of(context).subtitle1,
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(20, 25, 20, 0),
                            child: Slider(
                              activeColor: Color(0xFFFFD05E),
                              inactiveColor: Color(0xFF454242),
                              min: 1,
                              max: 500,
                              value: sliderValue ??= 1,
                              label: sliderValue.toString(),
                              divisions: 100,
                              onChanged: (newValue) {
                                setState(() => sliderValue = newValue);
                              },
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                lister unsorted = lister(alength: sliderValue!.toInt());
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ReadlistWidget(
                                        unslist: unsorted.generatelist(),
                                      ),
                                    )
                                );
                              },
                              text: 'Generate unsorted list',
                              options: FFButtonOptions(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    25, 25, 25, 25),
                                color:
                                FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                ),
                                elevation: 10,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                //borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => GraphWidget(),
                                    )
                                );
                              },
                              text: 'Time Complexity ',
                              options: FFButtonOptions(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    25, 25, 25, 25),
                                color:
                                FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  fontSize: 18,
                                ),
                                elevation: 10,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                //borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}