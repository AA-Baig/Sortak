// ignore_for_file: dead_code
import 'package:sortak_final/Sortings/modified_quick.dart';
import '../Sortings/insertion.dart';
import '../Sortings/heap.dart';
import '../Sortings/merge.dart';
import '../Sortings/bubble.dart';
import '../Sortings/radix.dart';
import '../Sortings/quick.dart';
import '../Sortings/bucket.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import '../Sortings/count.dart';
import 'flutter_flow/flutter_flow_theme.dart';

class TabbarWidget extends StatefulWidget {
  final int opt;
  const TabbarWidget({Key? key,required this.opt}) : super(key: key);

  @override
  _TabbarWidgetState createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late final List<algoseries> data = gdata(widget.opt)!;
  late final List<algoseries1> data1 = gdata1(widget.opt)!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryColor,
                          labelPadding:
                          const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                          labelStyle: FlutterFlowTheme.of(context).bodyText1,
                          indicatorColor:
                          FlutterFlowTheme.of(context).secondaryColor,
                          tabs: const [
                            Tab(
                              icon: Icon(
                                Icons.bar_chart,
                              ),
                              iconMargin:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.stacked_line_chart,
                              ),
                              iconMargin:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Center(
                                    child: algographs(data: data),
                              ),
                              Center(
                                    child: algographs1(data: data1),
                              ),
                            ],
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
    );
  }
}

List<algoseries>? gdata(int opt)
{
    switch (opt)
    {
      case 1:
        insertionSort graphy = insertionSort();
        final List<algoseries> data =[
          algoseries(
            yaxis: graphy.gettime(10),
            xaxis: 10.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(20),
            xaxis: 20.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(30),
            xaxis: 30.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(40),
            xaxis: 40.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(50),
            xaxis: 50.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          // algoseries(
          //   yaxis: graphy.gettime(60),
          //   xaxis: 60.toString(),
          //   barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          // ),
          // algoseries(
          //   yaxis: graphy.gettime(70),
          //   xaxis: 70.toString(),
          //   barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          // ),
          // algoseries(
          //   yaxis: graphy.gettime(80),
          //   xaxis: 80.toString(),
          //   barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          // ),
          // algoseries(
          //   yaxis: graphy.gettime(90),
          //   xaxis: 90.toString(),
          //   barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          // ),
          algoseries(
            yaxis: graphy.gettime(100),
            xaxis: 100.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(200),
            xaxis: 200.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(300),
            xaxis: 300.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(400),
            xaxis: 400.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
              yaxis: graphy.gettime(500),
              xaxis: 500.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          // algoseries(
          //   yaxis: graphy.gettime(600),
          //   xaxis: 600.toString(),
          //   barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          // ),
          // algoseries(
          //   yaxis: graphy.gettime(700),
          //   xaxis: 700.toString(),
          //   barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          // ),
          // algoseries(
          //   yaxis: graphy.gettime(800),
          //   xaxis: 800.toString(),
          //   barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          // ),
          // algoseries(
          //   yaxis: graphy.gettime(900),
          //   xaxis: 900.toString(),
          //   barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          // ),
          // algoseries(
          //   yaxis: graphy.gettime(1000),
          //   xaxis: 1000.toString(),
          //   barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          // ),
        ];
        return data;
        break;
      case 2:
          mergeSort graphy = mergeSort();
          final List<algoseries> data =[
            // algoseries(
            //     yaxis: graphy.gettime(5),
            //     xaxis: 5.toString(),
            // ),
            algoseries(
              yaxis: graphy.gettime(10),
              xaxis: 10.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(20),
              xaxis: 20.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(30),
              xaxis: 30.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(40),
              xaxis: 40.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(50),
              xaxis: 50.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(100),
              xaxis: 100.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(200),
              xaxis: 200.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(300),
              xaxis: 300.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(400),
              xaxis: 400.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(500),
              xaxis: 500.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
          ];
          return data;
          break;
      case 3:
        heapSort graphy = heapSort();
        final List<algoseries> data =[
          algoseries(
            yaxis: graphy.gettime(10),
            xaxis: 10.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(20),
            xaxis: 20.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(30),
            xaxis: 30.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(40),
            xaxis: 40.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(50),
            xaxis: 50.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(100),
            xaxis: 100.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(200),
            xaxis: 200.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(300),
            xaxis: 300.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(400),
            xaxis: 400.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(500),
            xaxis: 500.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
        ];
        return data;
        break;
      case 4:
          bubbleSort graphy = bubbleSort();
          final List<algoseries> data =[
            algoseries(
              yaxis: graphy.gettime(10),
              xaxis: 10.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(20),
              xaxis: 20.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(30),
              xaxis: 30.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(40),
              xaxis: 40.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(50),
              xaxis: 50.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(100),
              xaxis: 100.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(200),
              xaxis: 200.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(300),
              xaxis: 300.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(400),
              xaxis: 400.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(500),
              xaxis: 500.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
          ];
          return data;
          break;
      case 5:
        countSort graphy = countSort();
        final List<algoseries> data =[
          algoseries(
            yaxis: graphy.gettime(10),
            xaxis: 10.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(20),
            xaxis: 20.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(30),
            xaxis: 30.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(40),
            xaxis: 40.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(50),
            xaxis: 50.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(100),
            xaxis: 100.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(200),
            xaxis: 200.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(300),
            xaxis: 300.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(400),
            xaxis: 400.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(500),
            xaxis: 500.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
        ];
        return data;
        break;
      case 6:
          radixSort graphy = radixSort();
          final List<algoseries> data =[
            algoseries(
              yaxis: graphy.gettime(10),
              xaxis: 10.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(20),
              xaxis: 20.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(30),
              xaxis: 30.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(40),
              xaxis: 40.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(50),
              xaxis: 50.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(100),
              xaxis: 100.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(200),
              xaxis: 200.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(300),
              xaxis: 300.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(400),
              xaxis: 400.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(500),
              xaxis: 500.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
          ];
          return data;
          break;
      case 7:
          bucketSort graphy = bucketSort();
          final List<algoseries> data =[
            algoseries(
              yaxis: graphy.gettime(10),
              xaxis: 10.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(20),
              xaxis: 20.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(30),
              xaxis: 30.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(40),
              xaxis: 40.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(50),
              xaxis: 50.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(100),
              xaxis: 100.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(200),
              xaxis: 200.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(300),
              xaxis: 300.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(400),
              xaxis: 400.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
            algoseries(
              yaxis: graphy.gettime(500),
              xaxis: 500.toString(),
              barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
            ),
          ];
          return data;
          break;
      case 8:
        bucketSort graphy = bucketSort();
        final List<algoseries> data =[
          algoseries(
            yaxis: graphy.gettime(10),
            xaxis: 10.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(20),
            xaxis: 20.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(30),
            xaxis: 30.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(40),
            xaxis: 40.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(50),
            xaxis: 50.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(100),
            xaxis: 100.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(200),
            xaxis: 200.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(300),
            xaxis: 300.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(400),
            xaxis: 400.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(500),
            xaxis: 500.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
        ];
        return data;
        break;
      case 9:
        mqSort graphy = mqSort();
        final List<algoseries> data =[
          algoseries(
            yaxis: graphy.gettime(10),
            xaxis: 10.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(20),
            xaxis: 20.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(30),
            xaxis: 30.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(40),
            xaxis: 40.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(50),
            xaxis: 50.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(100),
            xaxis: 100.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(200),
            xaxis: 200.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(300),
            xaxis: 300.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(400),
            xaxis: 400.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
          algoseries(
            yaxis: graphy.gettime(500),
            xaxis: 500.toString(),
            barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
          ),
        ];
        return data;
        break;
      // case 10:
      //   insertionSort graphy = insertionSort();
      //   return graphy.gettime(len);
      //   break;
    }
}

List<algoseries1>? gdata1(int opt)
{
  switch (opt)
  {
    case 1:
      insertionSort graphy = insertionSort();
      final List<algoseries1> data =[
        algoseries1(
          yaxis: graphy.gettime(10),
          xaxis: 10,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(20),
          xaxis: 20,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(30),
          xaxis: 30,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(40),
          xaxis: 40,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(50),
          xaxis: 50,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(100),
          xaxis: 100,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(200),
          xaxis: 200,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(300),
          xaxis: 300,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(400),
          xaxis: 400,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(500),
          xaxis: 500,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
      ];
      return data;
      break;
    case 2:
      mergeSort graphy = mergeSort();
      final List<algoseries1> data =[
        algoseries1(
          yaxis: graphy.gettime(10),
          xaxis: 10,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(20),
          xaxis: 20,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(30),
          xaxis: 30,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(40),
          xaxis: 40,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(50),
          xaxis: 50,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(100),
          xaxis: 100,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(200),
          xaxis: 200,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(300),
          xaxis: 300,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(400),
          xaxis: 400,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(500),
          xaxis: 500,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
      ];
      return data;
      break;
    case 3:
      heapSort graphy = heapSort();
      final List<algoseries1> data =[
        algoseries1(
          yaxis: graphy.gettime(10),
          xaxis: 10,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(20),
          xaxis: 20,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(30),
          xaxis: 30,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(40),
          xaxis: 40,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(50),
          xaxis: 50,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(100),
          xaxis: 100,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(200),
          xaxis: 200,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(300),
          xaxis: 300,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(400),
          xaxis: 400,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(500),
          xaxis: 500,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
      ];
      return data;
      break;
    case 4:
      bubbleSort graphy = bubbleSort();
      final List<algoseries1> data =[
        algoseries1(
          yaxis: graphy.gettime(10),
          xaxis: 10,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(20),
          xaxis: 20,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(30),
          xaxis: 30,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(40),
          xaxis: 40,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(50),
          xaxis: 50,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(100),
          xaxis: 100,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(200),
          xaxis: 200,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(300),
          xaxis: 300,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(400),
          xaxis: 400,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(500),
          xaxis: 500,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
      ];
      return data;
      break;
  case 5:
    countSort graphy = countSort();
    final List<algoseries1> data =[
      algoseries1(
        yaxis: graphy.gettime(10),
        xaxis: 10,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(20),
        xaxis: 20,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(30),
        xaxis: 30,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(40),
        xaxis: 40,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(50),
        xaxis: 50,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(100),
        xaxis: 100,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(200),
        xaxis: 200,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(300),
        xaxis: 300,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(400),
        xaxis: 400,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(500),
        xaxis: 500,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
    ];
    return data;
    break;
    case 6:
      radixSort graphy = radixSort();
      final List<algoseries1> data =[
        algoseries1(
          yaxis: graphy.gettime(10),
          xaxis: 10,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(20),
          xaxis: 20,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(30),
          xaxis: 30,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(40),
          xaxis: 40,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(50),
          xaxis: 50,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(100),
          xaxis: 100,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(200),
          xaxis: 200,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(300),
          xaxis: 300,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(400),
          xaxis: 400,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(500),
          xaxis: 500,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
      ];
      return data;
      break;
    case 7:
      quickSort graphy = quickSort();
      final List<algoseries1> data =[
        algoseries1(
          yaxis: graphy.gettime(10),
          xaxis: 10,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(20),
          xaxis: 20,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(30),
          xaxis: 30,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(40),
          xaxis: 40,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(50),
          xaxis: 50,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(100),
          xaxis: 100,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(200),
          xaxis: 200,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(300),
          xaxis: 300,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(400),
          xaxis: 400,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
        algoseries1(
          yaxis: graphy.gettime(500),
          xaxis: 500,
          barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
        ),
      ];
      return data;
      break;
  case 8:
    bucketSort graphy = bucketSort();
    final List<algoseries1> data =[
      algoseries1(
        yaxis: graphy.gettime(10),
        xaxis: 10,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(20),
        xaxis: 20,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(30),
        xaxis: 30,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(40),
        xaxis: 40,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(50),
        xaxis: 50,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(100),
        xaxis: 100,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(200),
        xaxis: 200,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(300),
        xaxis: 300,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(400),
        xaxis: 400,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(500),
        xaxis: 500,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
    ];
    return data;
    break;
  case 9:
    mqSort graphy = mqSort();
    final List<algoseries1> data =[
      algoseries1(
        yaxis: graphy.gettime(10),
        xaxis: 10,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(20),
        xaxis: 20,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(30),
        xaxis: 30,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(40),
        xaxis: 40,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(50),
        xaxis: 50,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(100),
        xaxis: 100,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(200),
        xaxis: 200,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(300),
        xaxis: 300,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(400),
        xaxis: 400,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
      algoseries1(
        yaxis: graphy.gettime(500),
        xaxis: 500,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xFF454242)),
      ),
    ];
    return data;
    break;
  // case 10:
  //   insertionSort graphy = insertionSort();
  //   return graphy.gettime(len);
  //   break;
  }
}

class algoseries{
  algoseries({required this.yaxis, required this.xaxis, required this.barColor});
  final int yaxis;
  final String xaxis;
  final charts.Color barColor;
}

class algoseries1{
  algoseries1({required this.yaxis, required this.xaxis, required this.barColor});
  final int yaxis;
  final num xaxis;
  final charts.Color barColor;
}

class algographs extends StatelessWidget {
  algographs({required this.data});
  final List<algoseries> data;

  @override
  Widget build(BuildContext context) {
    List<charts.Series<algoseries,String>> series
    = [
      charts.Series(
        id: "Time Complexity",
        data: data,
        domainFn: (algoseries series, _) =>
        series.xaxis,
        measureFn: (algoseries series, _) =>
        series.yaxis,
        colorFn: (algoseries series, _) =>
        series.barColor,
      )
    ];
    return Container(
      height: 600,
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const Text('Execution Time Vs Size'),
              Expanded(
                  child: charts.BarChart(
                    series,
                    animate: true,
                    animationDuration: const Duration(seconds: 1),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class algographs1 extends StatelessWidget {
  algographs1({required this.data});
  final List<algoseries1> data;

  @override
  Widget build(BuildContext context) {

    List<charts.Series<algoseries1,num>> series
    = [
      charts.Series(
        id: "Time Complexity",
        data: data,
        domainFn: (algoseries1 series, _) =>
        series.xaxis,
        measureFn: (algoseries1 series, _) =>
        series.yaxis,
        colorFn: (algoseries1 series, _) =>
        series.barColor,
      )
    ];

    return Container(
      height: 600,
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const Text('Execution Time Vs Size'),
              Expanded(
                  child: charts.LineChart(
                    series,
                    animate: true,
                    animationDuration: const Duration(seconds: 1),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}


