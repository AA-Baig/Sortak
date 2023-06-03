import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import '../Sortings/insertion.dart';
import '../Sortings/heap.dart';
import '../Sortings/merge.dart';
import '../Sortings/bubble.dart';
import '../Sortings/radix.dart';
import '../Sortings/quick.dart';
import '../Sortings/count.dart';
import 'Sortings/bucket.dart';
import 'Sortings/modified_quick.dart';

class ReadlistWidget extends StatefulWidget {
  const ReadlistWidget({Key? key, required this.unslist}) : super(key: key);
  final List<int> unslist;
  @override
  _ReadlistWidgetState createState() => _ReadlistWidgetState();
}

class _ReadlistWidgetState extends State<ReadlistWidget> {
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
          'Algorithms',
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
                          padding:
                          EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: Text(
                            'Unsorted List\n ${widget.unslist}',
                            textAlign: TextAlign.center,
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 350,
                        height: 700,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 20, 0),
                                child: Text(
                                  'Select An Algorithm',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        insertionSort lists = insertionSort();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => InsertionWidget(
                                                  result: lists.sorting(list: widget.unslist)
                                              ),
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
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                        elevation: 15,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        //borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        mergeSort lists = mergeSort();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => MergeWidget(
                                                  result: lists.Sorting(widget.unslist)
                                              ),
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
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                        elevation: 15,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        //borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        heapSort lists = heapSort();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => HeapWidget(
                                                  result: lists.Sorting(widget.unslist)
                                              ),
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
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                        elevation: 15,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        //borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        bubbleSort lists = bubbleSort();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => BubbleWidget(
                                                  result: lists.sorting(widget.unslist)
                                              ),
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
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                        elevation: 15,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        //borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        countSort lists = countSort();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => CountWidget(
                                                  result: lists.Sorting(widget.unslist)
                                              ),
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
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                        elevation: 15,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        //borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        radixSort lists = radixSort();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => RadixWidget(
                                                  result: lists.Sorting(widget.unslist)
                                              ),
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
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                        elevation: 15,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        //borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        quickSort lists = quickSort();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => QuickWidget(
                                                  result: lists.qsort(widget.unslist)
                                              ),
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
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                        elevation: 15,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        //borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        bucketSort lists = bucketSort();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => BucketWidget(
                                                  result: lists.Sorting(widget.unslist)
                                              ),
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
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                        elevation: 15,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        //borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        mqSort lists = mqSort();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => MQSortWidget(
                                                  result: lists.mqsort(widget.unslist)
                                              ),
                                            )
                                        );
                                      },
                                      text: 'ModifiedQuick',
                                      options: FFButtonOptions(
                                        width: 150,
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
                                        //borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    // FFButtonWidget(
                                    //   onPressed: () {
                                    //     mqSort lists = mqSort();
                                    //     Navigator.push(
                                    //         context,
                                    //         MaterialPageRoute(
                                    //           builder: (context) => MQSortWidget(
                                    //               result: lists.mqsort(widget.unslist)
                                    //           ),
                                    //         )
                                    //     );
                                    //   },
                                    //   text: 'ModifiedCount',
                                    //   options: FFButtonOptions(
                                    //     width: 100,
                                    //     height: 100,
                                    //     color: FlutterFlowTheme.of(context)
                                    //         .primaryColor,
                                    //     textStyle: FlutterFlowTheme.of(context)
                                    //         .subtitle2
                                    //         .override(
                                    //       fontFamily: 'Poppins',
                                    //       color: Colors.white,
                                    //     ),
                                    //     elevation: 15,
                                    //     borderSide: BorderSide(
                                    //       color: Colors.transparent,
                                    //       width: 1,
                                    //     ),
                                    //     //borderRadius: BorderRadius.circular(8),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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



