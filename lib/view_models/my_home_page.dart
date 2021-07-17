import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template/data/models/counter.dart';

part 'my_home_page.freezed.dart';

@freezed
class MyHomePageState with _$MyHomePageState {
  factory MyHomePageState({
    required Counter counter,
  }) = _MyHomePageState;
}

class MyHomePageViewModel extends StateNotifier<MyHomePageState> {
  MyHomePageViewModel() : super(MyHomePageState(counter: Counter(data: 0)));
}
