
import 'package:get_it/get_it.dart';

import '../../feature/home/data/local_data_source/local_data_source.dart';
import '../../feature/home/data/repo_impl/repo_impl.dart';
import '../../feature/home/domain/repo_interface/reposatory_interface.dart';


final instance = GetIt.instance;

void initAppModule() {



  instance.registerLazySingleton<HomeLocalDataSource>(
        () => HomeLocalDataSource(),
  );


  instance.registerLazySingleton<HomeRepository>(
        () => HomeRepositoryImpl(instance()),
  );


}