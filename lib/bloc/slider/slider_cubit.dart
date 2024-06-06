import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/slider/slider_state.dart';
import 'package:freezed_auth/models/slider_models.dart';
import 'package:freezed_auth/repository/slider_repository.dart';

class SliderCubit extends Cubit<SliderState> {
  final SliderRepository sliderRepository;
  SliderCubit({
    required this.sliderRepository,
  }) : super(const SliderState.initial());

  void getSlider() async {
    emit(const SliderState.loading());
    try {
      final data = await sliderRepository.getSlider();
      if (data.statusCode == 200) {
        emit(SliderState.loaded(SliderModel.fromJson(data.data)));
      } else {
        emit(const SliderState.error('Failed to load data'));
      }
    } catch (e) {
      emit(const SliderState.error('Failed to load data'));
    }
  }
}