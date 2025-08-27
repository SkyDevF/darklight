import 'package:darklight/models/riverpod_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final riverpodIslight = StateProvider<bool>((ref) {
  return true;
});

final riverpodIslightHard = ChangeNotifierProvider<RiverpodModel>((ref) {
  return RiverpodModel(islight: true);
});
