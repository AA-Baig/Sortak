import 'package:sortak_final/chart.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class GraphWidget extends StatefulWidget {
  const GraphWidget({Key? key}) : super(key: key);

  @override
  _GraphWidgetState createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  var yaxis = List<int>.filled(5, 0);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Graphs',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: Text(
                            'Choose An Algorithm',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 350,
                        height: 600,
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
                        alignment: AlignmentDirectional(0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => TabbarWidget(opt: 1)
                                          )
                                      );
                                    },
                                    text: 'Insertion',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 100,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                      elevation: 15,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      // borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => TabbarWidget(opt: 2)
                                          )
                                      );
                                    },
                                    text: 'Merge',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 100,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                      elevation: 15,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      // borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => TabbarWidget(opt: 3)
                                          )
                                      );
                                    },
                                    text: 'Heap',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 100,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                      elevation: 15,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      //borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => TabbarWidget(opt: 4)
                                          )
                                      );
                                    },
                                    text: 'Bubble',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 100,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                      elevation: 15,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      //borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => TabbarWidget(opt: 5)
                                          )
                                      );
                                    },
                                    text: 'Count',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 100,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                      elevation: 15,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      //borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => TabbarWidget(opt: 6)
                                          )
                                      );
                                    },
                                    text: 'Radix',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 100,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                      elevation: 15,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      //borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => TabbarWidget(opt: 7)
                                          )
                                      );
                                    },
                                    text: 'Quick',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 100,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                      elevation: 15,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      //borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => TabbarWidget(opt: 8)
                                          )
                                      );
                                    },
                                    text: 'Bucket',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 100,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                      elevation: 15,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      //borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => TabbarWidget(opt: 9)
                                          )
                                      );
                                    },
                                    text: 'Modified Quick',
                                    options: FFButtonOptions(
                                      width: 150,
                                      height: 100,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                      elevation: 15,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      //borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                // Align(
                                //   alignment: AlignmentDirectional(0, 0),
                                //   child: FFButtonWidget(
                                //     onPressed: () {
                                //       Navigator.push(
                                //           context,
                                //           MaterialPageRoute(
                                //               builder: (context) => TabbarWidget(opt: 10)
                                //           )
                                //       );
                                //     },
                                //     text: 'Button',
                                //     options: FFButtonOptions(
                                //       width: 100,
                                //       height: 100,
                                //       color: FlutterFlowTheme.of(context)
                                //           .primaryColor,
                                //       textStyle: FlutterFlowTheme.of(context)
                                //           .subtitle2
                                //           .override(
                                //         fontFamily: 'Poppins',
                                //         color: Colors.white,
                                //       ),
                                //       elevation: 15,
                                //       borderSide: BorderSide(
                                //         color: Colors.transparent,
                                //         width: 1,
                                //       ),
                                //       //borderRadius: BorderRadius.circular(15),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        )
                      )
                    )
                        ),
                      ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
