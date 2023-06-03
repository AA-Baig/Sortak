import 'dart:math' as math;

class lister{
  lister({required this.alength});
  int alength;
  List<int> generatelist() {
    List<int> list = [];
    for (int i = 0; i < alength; i++) {
      list.add(math.Random().nextInt(500) + 1);
    }
    return list;
  }
}
