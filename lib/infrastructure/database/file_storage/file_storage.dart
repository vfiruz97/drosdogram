import 'dart:convert';
import 'dart:io';

import 'package:drosdogram/domain/core/errors.dart';
import 'package:path_provider/path_provider.dart';
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';

class FileStorage {
  Future<void> setRequest(String key, String value) async {
    try {
      final hashed = hash(key);
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/dros_$hashed');
      file.writeAsString(json.encode(value));
    } catch (ex) {
      throw UnexpectedFileStorageError();
    }
  }

  Future<String> getRequest(String key) async {
    try {
      final hashed = hash(key);
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/dros_$hashed');
      final cached = await file.readAsString();
      final body = json.decode(cached);
      return body as String;
    } catch (ex) {
      throw UnexpectedFileStorageError();
    }
  }

  Future<void> removeRequest(String key) async {
    try {
      final hashed = hash(key);
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/dros_$hashed');
      await file.delete();
    } catch (ex) {
      throw UnexpectedFileStorageError();
    }
  }

  String hash(String key) {
    final digest = md5.convert(const Utf8Encoder().convert(key));
    return hex.encode(digest.bytes);
  }
}
