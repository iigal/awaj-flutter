import 'package:flutter_riverpod/flutter_riverpod.dart';

class TotalComplaintsCount extends Notifier<int> {
  @override
  int build() => 0;

  void setTotal(int total) => state = total;
}

final totalComplaintsCountProvider = NotifierProvider<TotalComplaintsCount, int>(TotalComplaintsCount.new);
