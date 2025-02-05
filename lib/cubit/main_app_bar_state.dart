part of 'main_app_bar_cubit.dart';

@immutable
sealed class MainAppBarState {}

final class MainAppBarInitial extends MainAppBarState {
  final BuildContext context;
  MainAppBarInitial(this.context);
}
