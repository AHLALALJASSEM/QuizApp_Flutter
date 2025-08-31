import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:meta/meta.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  late final StreamSubscription<InternetStatus> Stream;
  InternetCubit() : super(InternetConnect()) {
    Stream = InternetConnection().onStatusChange.listen((status) {
      if (status == InternetStatus.connected) {
        emit(InternetConnect());
        print("connect");
      } else {
        emit(InternetDisConnect());
        print("disconnect");
      }
    });
  }
  @override
  Future<void> close() {
    Stream.cancel();
    return super.close();
  }
}
