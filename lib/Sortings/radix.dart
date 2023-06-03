import 'dart:math';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import '../lists.dart';

class RadixWidget extends StatefulWidget {
  const RadixWidget({Key? key, required this.result}) : super(key: key);
  final List<int> result;

  @override
  _RadixWidgetState createState() => _RadixWidgetState();
}

class _RadixWidgetState extends State<RadixWidget> {
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
            'Radix Sort',
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
                          height: 1350,
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
                          height: 1350,
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
                                'Sorting()\n  {\n      var sortedList = List<int>.from(list);\n      var maxElement = sortedList.reduce(max);\n\n      for (var radix = 1; (maxElement / radix).floor() > 0; radix *= 10)\n      {\n         sortedList = countingSort(sortedList, radix);\n      }\n      return sortedList;\n  }\n  List<int> countingSort(List<int> list, num radix)\n  {\n      var countList = List.generate(10, (index) => 0);\n      list.forEach((list)\n        {\n            countList[((list/radix) % 10).floor()] += 1;\n         }\n      );\n      for (var index = 1; index < 10; index++)\n      {\n         var sum = countList[index] + countList[index - 1];\n         countList[index] = sum;\n      }\n      var sortedList = List.generate(list.length, (index) => 0);\n      for (var index = list.length - 1; index >= 0; index--)\n      {\n         sortedList[countList[((list[index]/radix) % 10).floor()] - 1] = list[index];\n         countList[((list[index] / radix) % 10).floor()] -= 1;\n      }\n      return sortedList;\n  }',
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

class radixSort{
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
    var sortedList = List<int>.from(list);
    var maxElement = sortedList.reduce(max);

    for (var radix = 1; (maxElement / radix).floor() > 0; radix *= 10)
    {
      sortedList = countingSort(sortedList, radix);
    }
    return sortedList;
  }

  List<int> countingSort(List<int> list, num radix)
  {
    var countList = List.generate(10, (index) => 0);
    list.forEach((list)
    {
      countList[((list/radix) % 10).floor()] += 1;
    }
    );

    for (var index = 1; index < 10; index++)
    {
      var sum = countList[index] + countList[index - 1];
      countList[index] = sum;
    }

    var sortedList = List.generate(list.length, (index) => 0);
    for (var index = list.length - 1; index >= 0; index--)
    {
      sortedList[countList[((list[index]/radix) % 10).floor()] - 1] = list[index];
      countList[((list[index] / radix) % 10).floor()] -= 1;
    }
    return sortedList;
  }
}