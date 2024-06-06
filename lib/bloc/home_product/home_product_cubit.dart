import 'package:flutter_bloc/flutter_bloc.dart';

class IndexProductCurrent extends Cubit<int> {
  IndexProductCurrent() : super(0);

  void setIndex(int index) => emit(index);
}