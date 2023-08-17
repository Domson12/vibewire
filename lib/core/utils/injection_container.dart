import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:vibewire/core/utils/injection_container.config.dart';


final sl = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() => sl.init();
