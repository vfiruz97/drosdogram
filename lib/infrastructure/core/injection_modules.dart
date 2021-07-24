import 'package:drosdogram/infrastructure/database/file_storage/file_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjactableModule {
  @lazySingleton
  FileStorage get fileStore => FileStorage();
}