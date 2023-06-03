import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:sortak_final/lists.dart';

class InsertionWidget extends StatefulWidget {
  const InsertionWidget({Key? key, required this.result}) : super(key: key);
  final List<int> result;

  @override
  _InsertionWidgetState createState() => _InsertionWidgetState();
}

class _InsertionWidgetState extends State<InsertionWidget> {
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
            'Insertion Sort',
            style: FlutterFlowTheme.of(context).title2.override(
              fontFamily: 'Poppins',
              color: FlutterFlowTheme.of(context).secondaryColor,
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
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
                          height: 450,
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
                              padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
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
                          height: 450,
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
                              padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                              child: Text(
                                ' Insertionsorting(list)\n  {\n    for (int j = 1; j < list.length; j++) {\n      int key = list[j];\n\n      int i = j - 1;\n\n      while (i >= 0 && list[i] > key) {\n        list[i + 1] = list[i];\n        i = i - 1;\n        list[i + 1] = key;\n      }\n    }\n }',
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

class insertionSort{
  int etime=0;
  List<int> sorting({required List<int> list})
  {
    for (int j = 1; j < list.length; j++) {
      int key = list[j];

      int i = j - 1;

      while (i >= 0 && list[i] > key) {
        list[i + 1] = list[i];
        i = i - 1;
        list[i + 1] = key;
      }
    }
    return list;
  }
  int gettime(int length)
  {
    lister llength = lister(alength: length);
    List<int> list1 = llength.generatelist();
    final stopwatch = Stopwatch()..start();
    for (int j = 1; j < length; j++) {
      int key = list1[j];
      int i = j - 1;
      while (i >= 0 && list1[i] > key) {
        list1[i + 1] = list1[i];
        i = i - 1;
        list1[i + 1] = key;
      }
    }
    etime = stopwatch.elapsedMicroseconds;
    return etime;
  }
}