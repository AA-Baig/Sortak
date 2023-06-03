import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import '../lists.dart';

class MergeWidget extends StatefulWidget {
  const MergeWidget({Key? key, required this.result}) : super(key: key);
  final List<int> result;
  @override
  _MergeWidgetState createState() => _MergeWidgetState();
}

class _MergeWidgetState extends State<MergeWidget> {
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
            'Merge Sort',
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
                          height: 1150,
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
                          height: 1150,
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
                                'Sorting(list)\n{\n  if(list.length <= 1)\n  {\n     return list;\n  }\n  int splitIndex = list.length ~/ 2;\n  List<int> leftlist = Sorting(list.sublist(0, splitIndex));\n  List<int> rightlist = Sorting(list.sublist(splitIndex));\n  return merge1(leftlist, rightlist);\n}\n\nList<int> merge1(left_list, right_list)\n{\n  List<int> result = [];\n  int? i = 0;\n  int? j = 0;\n  while(i! < left_list.length && j! < right_list.length) {\n     if(left_list[i] <= right_list[j]) {\n       result.add(left_list[i]);\n       i++;\n     } else {\n       result.add(right_list[j]);\n       j++;\n       }\n  }\n  while(i! < left_list.length) {\n     result.add(left_list[i]);\n     i++;\n  }\n  while(j! < right_list.length) {\n     result.add(right_list[j]);\n     j++;\n  }\n  return result;\n}',
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

class mergeSort{

  int gettime(int length) {
    int etime=0;
    lister llength = lister(alength: length);
    List<int> list1 = llength.generatelist();
    final stopwatch = Stopwatch()..start();
    Sorting(list1);
    etime = stopwatch.elapsedMicroseconds;
    return etime;
  }

  List<int> Sorting(List<int> array)
  {
    if(array.length <= 1)
    {
      return array;
    }
    int splitIndex = array.length ~/ 2;
    List<int> leftArray = Sorting(array.sublist(0, splitIndex));
    List<int> rightArray = Sorting(array.sublist(splitIndex));
    return merge1(leftArray, rightArray);
  }
  List<int> merge1(left_array, right_array)
  {
    List<int> result = [];
    int? i = 0;
    int? j = 0;
    while(i! < left_array.length && j! < right_array.length) {
      if(left_array[i] <= right_array[j]) {
        result.add(left_array[i]);
        i++;
      } else {
        result.add(right_array[j]);
        j++;
      }
    }
    while(i! < left_array.length) {
      result.add(left_array[i]);
      i++;
    }
    while(j! < right_array.length) {
      result.add(right_array[j]);
      j++;
    }
    return result;
  }
}