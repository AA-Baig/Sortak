import '../lists.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CountWidget extends StatefulWidget {
  const CountWidget({Key? key, required this.result}) : super(key: key);
  final List<int> result;

  @override
  _CountWidgetState createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Count Sort',
            style: FlutterFlowTheme.of(context).title2.override(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 22,
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
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: Text(
                            'Sorted List:\n ${widget.result}',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                              fontFamily: 'Poppins',
                              color:
                              FlutterFlowTheme.of(context).primaryColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                FlipCard(
                  fill: Fill.fillBack,
                  direction: FlipDirection.HORIZONTAL,
                  speed: 400,
                  front: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 25,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          width: 350,
                          height: 600,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 20, 20),
                              child: Text(
                                'Tap To View Code',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  back: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          width: 350,
                          height: 600,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 20, 20),
                              child: Text(
                                'List<int> Sorting(List<int> list)\n  {\n    int i;\n    int n = list.length;\n    int maxy = list.reduce(max);\n    final output = List<int>.filled(n, 0);\n    final count= List<int>.filled(maxy+1, 0);\n    for (i = 0; i<n; ++i)\n      ++count[list[i]];\n    for (i = 1; i <= maxy; ++i)\n      count[i] += count[i - 1];\n    for (i = 0; i< n; ++i) {\n      output[count[list[i]] - 1] = list[i];\n      --count[list[i]];\n    }\n    return output;\n  }',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryText,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
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

class countSort{
  int etime =0;
  int gettime(int length)
  {
    lister llength = lister(alength: length);
    List<int> list1 = llength.generatelist();
    final stopwatch = Stopwatch()..start();
    int n = length;
    Sorting(list1);
    etime = stopwatch.elapsedMicroseconds;
    return etime;
  }

  List<int> Sorting(List<int> list)
  {
    int i;
    int n = list.length;
    int maxy = list.reduce(max);
    final output = List<int>.filled(n, 0);
    final count= List<int>.filled(maxy+1, 0);
    for (i = 0; i<n; ++i)
      ++count[list[i]];
    for (i = 1; i <= maxy; ++i)
      count[i] += count[i - 1];
    for (i = 0; i< n; ++i) {
      output[count[list[i]] - 1] = list[i];
      --count[list[i]];
    }
    return output;
  }
}


