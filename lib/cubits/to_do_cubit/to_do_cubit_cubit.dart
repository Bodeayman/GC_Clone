import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'to_do_cubit_state.dart';

class ToDoCubit extends Cubit<ToDoCubitState> {
  ToDoCubit() : super(ToDoCubitInitial());
}
