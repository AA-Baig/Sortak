import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import '../lists.dart';

class HeapWidget extends StatefulWidget {
  const HeapWidget({Key? key,required this.result}) : super(key: key);
  final List<int> result;

  @override
  _HeapWidgetState createState() => _HeapWidgetState();
}

class _HeapWidgetState extends State<HeapWidget> {
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
            'Heap Sort',
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
                          height: 700,
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
                          height: 700,
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
                                'Sorting(list){\n    int n = list.length;\n    for (int i = (n ~/ 2 ) ; i >= 0; i--){\n      heapify(list, n, i);\n    }\n    for (int i = n-1; i>=0; i--) {\n      swap(list, i);\n      heapify(list, i, 0);\n    }\n  }\n  void heapify(List<int> list, int n, int i) {\n    int largest = i;\n    int l = 2*i + 1;\n    int r = 2*i + 2;\n    if (l < n && list[l] > list[largest]) {\n      largest = l;\n    }\n\n    if (r < n && list[r] > list[largest]) {\n      largest = r;\n    }\n\n    if (largest != i) {\n      swapList(list, i, largest);\n      heapify(list, n, largest);\n    }\n  }\n\n  void swapList(List list, int i, int largest) {\n    int swap = list[i];\n    list[i] = list[largest];\n    list[largest] = swap;\n  }\n\n  void swap(List list, int i) {\n    int temp = list[0];\n    list[0] = list[i];\n    list[i] = temp;\n  }\n\n}',
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

class heapSort {
  // heapSort({required this.list});
  // List<int> list;

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

  List<int> Sorting(List<int> list){
    int n = list.length;
    for (int i = (n ~/ 2 ) ; i >= 0; i--){
      heapify(list, n, i);
    }

    for (int i = n-1; i>=0; i--) {
      swap(list, i);
      heapify(list, i, 0);
    }
    return list;
  }

  void heapify(List<int> list, int n, int i) {
    int largest = i;
    int l = 2*i + 1;
    int r = 2*i + 2;

    if (l < n && list[l] > list[largest]) {
      largest = l;
    }

    if (r < n && list[r] > list[largest]) {
      largest = r;
    }

    if (largest != i) {
      swapList(list, i, largest);
      heapify(list, n, largest);
    }
  }

  void swapList(List list, int i, int largest) {
    int swap = list[i];
    list[i] = list[largest];
    list[largest] = swap;
  }

  void swap(List list, int i) {
    int temp = list[0];
    list[0] = list[i];
    list[i] = temp;
  }
}