// import '../lists.dart';
// import '../flutter_flow/flutter_flow_theme.dart';
// import 'package:flip_card/flip_card.dart';
// import 'package:flutter/material.dart';
//
// class McountWidget extends StatefulWidget {
//   const McountWidget({Key? key, required this.result}) : super(key: key);
//   final List<int> result;
//   @override
//   _McountWidgetState createState() => _McountWidgetState();
// }
//
// class _McountWidgetState extends State<McountWidget> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//       appBar: AppBar(
//         backgroundColor: FlutterFlowTheme.of(context).primaryColor,
//         automaticallyImplyLeading: true,
//         title: Align(
//           alignment: AlignmentDirectional(0, 0),
//           child: Text(
//             'Modified Count Sort',
//             style: FlutterFlowTheme.of(context).title2.override(
//               fontFamily: 'Poppins',
//               color: Colors.white,
//               fontSize: 22,
//             ),
//           ),
//         ),
//         actions: [],
//         centerTitle: true,
//         elevation: 2,
//       ),
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).unfocus(),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Align(
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
//                     child: Card(
//                       clipBehavior: Clip.antiAliasWithSaveLayer,
//                       color: FlutterFlowTheme.of(context).primaryBackground,
//                       elevation: 15,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Align(
//                         alignment: AlignmentDirectional(0, 0),
//                         child: Padding(
//                           padding:
//                           EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
//                           child: Text(
//                             'Sorted List:\n ${widget.result}',
//                             textAlign: TextAlign.center,
//                             style: FlutterFlowTheme.of(context)
//                                 .bodyText1
//                                 .override(
//                               fontFamily: 'Poppins',
//                               color:
//                               FlutterFlowTheme.of(context).primaryColor,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 FlipCard(
//                   fill: Fill.fillBack,
//                   direction: FlipDirection.HORIZONTAL,
//                   speed: 400,
//                   front: Align(
//                     alignment: AlignmentDirectional(0, 0),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 20),
//                       child: Material(
//                         color: Colors.transparent,
//                         elevation: 25,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Container(
//                           width: 350,
//                           height: 1000,
//                           decoration: BoxDecoration(
//                             color: FlutterFlowTheme.of(context).primaryColor,
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: 4,
//                                 color: Color(0x33000000),
//                                 offset: Offset(0, 2),
//                               )
//                             ],
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Align(
//                             alignment: AlignmentDirectional(0, 0),
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   20, 20, 20, 20),
//                               child: Text(
//                                 'Tap To View Code',
//                                 style: FlutterFlowTheme.of(context)
//                                     .bodyText1
//                                     .override(
//                                   fontFamily: 'Poppins',
//                                   color: FlutterFlowTheme.of(context)
//                                       .secondaryColor,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   back: Align(
//                     alignment: AlignmentDirectional(0, 0),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
//                       child: Material(
//                         color: Colors.transparent,
//                         elevation: 15,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Container(
//                           width: 350,
//                           height: 1000,
//                           decoration: BoxDecoration(
//                             color: FlutterFlowTheme.of(context).secondaryColor,
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: 4,
//                                 color: Color(0x33000000),
//                                 offset: Offset(0, 2),
//                               )
//                             ],
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Align(
//                             alignment: AlignmentDirectional(0, 0),
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   20, 20, 20, 20),
//                               child: Text(
//                                 'List<int> modified_quicksort(List<int> list, int p, int r) {\n    limited_quicksort(list, p, r);\n    insertion_sort(list, p, r);\n    return list;\n  }\n\n  List<int> limited_quicksort(List<int> list, int p, int r) {\n    if (r - p > k) {\n      int q = partition(list, p, r);\n      limited_quicksort(list, p, q);\n      limited_quicksort(list, q + 1, r);\n    }\n    return list;\n  }\n\n  int partition(List<int> list, int p, int r) {\n    int x, i, j, tmp;\n    x = list[r - 1];\n    i = p;\n    for (j = p; j < r - 1; j++) {\n      if (list[j] <= x) {\n        tmp = list[i];\n        list[i] = list[j];\n        list[j] = tmp;\n        i++;\n      }\n    }\n    tmp = list[i];\n    list[i] = list[r - 1];\n    list[r - 1] = tmp;\n    return i;\n  }',
//                                 style: FlutterFlowTheme.of(context)
//                                     .bodyText1
//                                     .override(
//                                   fontFamily: 'Poppins',
//                                   color: FlutterFlowTheme.of(context)
//                                       .primaryText,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class mqSort {
//   int etime = 0;
//
//   int gettime(int length) {
//     lister llength = lister(alength: length);
//     List<int> list1 = llength.generatelist();
//     final stopwatch = Stopwatch()
//       ..start();
//     mqcount(list1);
//     etime = stopwatch.elapsedMicroseconds;
//     return etime;
//   }
//
//   List<int> mqcount(List<int> list)
//   {
//     List<int> modified_count(List<int> list)
//     {
//       int i;
//       final count = List<int>.filled(list.length+1, 0);
//       for(i=0;i<list.length;i++)
//       {
//         ++count[list[i]];
//       }
//       for(i=0;i<10;i++)
//       {
//         count[i] += count[i-1];
//       }
//       if a == 0:
//       print(count[b])
//       else:
//       print(count[b]-count[a-1])
//
//     }
//     return count;
// }