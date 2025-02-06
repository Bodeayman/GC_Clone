import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'stream_nav_bar_state.dart';

class StreamNavBarCubit extends Cubit<StreamNavBarState> {
  StreamNavBarCubit(int counter) : super(StreamNavBarInitial(0));
  void moveToPage(int page) {
    emit(
      StreamNavBarInitial(page),
    );
  }
}
