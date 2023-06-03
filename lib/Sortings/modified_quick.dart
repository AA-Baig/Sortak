import '../lists.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class MQSortWidget extends StatefulWidget {
  const MQSortWidget({Key? key, required this.result}) : super(key: key);
  final List<int> result;
  @override
  _MQSortWidgetState createState() => _MQSortWidgetState();
}

class _MQSortWidgetState extends State<MQSortWidget> {
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
            'Modified Quick Sort',
            style: FlutterFlowTheme.of(context).title2.override(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 22,
            ),
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
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 20),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 25,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          width: 350,
                          height: 1000,
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
                          height: 1000,
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
                                'List<int> modified_quicksort(List<int> list, int p, int r) {\n    limited_quicksort(list, p, r);\n    insertion_sort(list, p, r);\n    return list;\n  }\n\n  List<int> limited_quicksort(List<int> list, int p, int r) {\n    if (r - p > k) {\n      int q = partition(list, p, r);\n      limited_quicksort(list, p, q);\n      limited_quicksort(list, q + 1, r);\n    }\n    return list;\n  }\n\n  int partition(List<int> list, int p, int r) {\n    int x, i, j, tmp;\n    x = list[r - 1];\n    i = p;\n    for (j = p; j < r - 1; j++) {\n      if (list[j] <= x) {\n        tmp = list[i];\n        list[i] = list[j];\n        list[j] = tmp;\n        i++;\n      }\n    }\n    tmp = list[i];\n    list[i] = list[r - 1];\n    list[r - 1] = tmp;\n    return i;\n  }',
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

class mqSort {
  int etime = 0;

  int gettime(int length) {
    lister llength = lister(alength: length);
    List<int> list1 = llength.generatelist();
    final stopwatch = Stopwatch()
      ..start();
    mqsort(list1);
    etime = stopwatch.elapsedMicroseconds;
    return etime;
  }

  List<int> mqsort(List<int> list)
  {
    List<int> result = modified_quick(list, 0, list.length -1);
    return result;
  }

  List<int> insertion_sort(List<int> list, int low, int n)
  {
    for(int i=low+1;i<n+1;i++)
    {
      int val = list[i] ;
      int j = i ;
      while (j>low && list[j-1]>val)
      {
        list[j]= list[j-1] ;
        j-= 1;
      }
      list[j]= val ;
    }
    return list;
  }

  int partition(List<int> list, int low, int high)
  {
    int pivot = list[high] ;
    int i ,j;
    i = low;
    j = low;
    for (int i = low; i < high; i++)
    {
      if(list[i]<pivot)
      {
        int temp = list[i];
        list[i] = list[j];
        list[j] = temp;
        j += 1;
      }
    }
    int temp = list[j];
    list[j] = list[high];
    list[high] = temp;
    return j;
  }

  List<int> quick_sort(List<int> list, int low,int high)
  {
    if (low < high)
    {
      int pivot = partition(list, low, high);
      quick_sort(list, low, pivot-1) ;
      quick_sort(list, pivot + 1, high) ;
    }
    return list;
  }

  List<int> modified_quick(List<int> list, int low, int high)
  {
    while (low < high)
    {
      if (high-low + 1 < 10)
      {
        insertion_sort(list, low, high);
        break;
      }
      else
      {
        int pivot = partition(list, low, high) ;
        if (pivot-low<high-pivot)
        {
          modified_quick(list, low, pivot - 1);
          low = pivot + 1;
        }
        else
        {
          modified_quick(list, pivot + 1, high);
          high = pivot-1;
        }
      }
    }
    return list;
  }
}







