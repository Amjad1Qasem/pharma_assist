import 'package:get_it/get_it.dart';
import 'package:pharma_assist/helpers/api/api.dart';

ApiHelper api() => GetIt.I.get();

void registerApi() => GetIt.I.registerSingleton<ApiHelper>(ApiHelper());
