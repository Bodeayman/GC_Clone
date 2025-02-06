part of 'stream_nav_bar_cubit.dart';

@immutable
sealed class StreamNavBarState {}

final class StreamNavBarInitial extends StreamNavBarState {
  int counter = 0;
  StreamNavBarInitial(this.counter);
}
