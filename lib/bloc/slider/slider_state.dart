import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_auth/models/slider_models.dart';

part 'slider_state.freezed.dart';

@freezed
class SliderState with _$SliderState {
  const factory SliderState.initial() = _Initial;
  const factory SliderState.loading() = _Loading;
  const factory SliderState.loaded(SliderModel sliderModel) = _Loaded;
  const factory SliderState.error(String message) = _Error;
}