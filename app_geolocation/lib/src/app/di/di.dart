import 'package:app_geolocation/src/packages/features/gps_permissions/bloc/gps_permissions_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../packages/data/device/aplication.dart';

final sl = GetIt.instance; //service locator

//casos de uso
Future<void> init() async {
  sl.registerFactory(() => const AskGpsAccess());
  sl.registerFactory(() => const CheckPermissionGranted());
  sl.registerFactory(() => const GpsInitialStatus());
  sl.registerFactory(() => const GpsStatus());
  sl.registerFactory(() => const OpenAppSettins());


  //futures

  sl.registerFactory(() => GpsPermissionsBloc(
    sl(),
    sl(),
    sl(),
    sl(),
    sl(),
    
  ));


}
