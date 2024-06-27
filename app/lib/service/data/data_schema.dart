part of 'data_service.dart';

class InfoFile {
  final List<Update> updates = [];
  final List<Info> info = [];
  final Map<String, dynamic> variables = {};
  final List<DataFile> files = [];

  InfoFile();

  factory InfoFile.fromMap(Map<String, dynamic> map) {
    final InfoFile info = InfoFile();

    if (map["updates"] != null) {
      for (List<dynamic> ls in map["updates"]) {
        info.updates.add(Update.fromList(ls));
      }
    }

    if (map["info"] != null) {
      for (List<dynamic> ls in map["info"]) {
        info.info.add(Info.fromList(ls));
      }
    }

    if (map["variables"] != null) {
      final Map<String, dynamic> m = Map.from(map["variables"]);
      info.variables.addAll(m);
    }

    if (map["files"] != null) {
      for (List<dynamic> ls in map["files"]) {
        info.files.add(DataFile.fromList(ls));
      }
    }

    return info;
  }
}

class Update {
  int date;
  int version;
  String message;

  Update(this.date, this.version, this.message);

  Update.fromList(List<dynamic> list) :
    this(list[0], list[1], list[2]);
}

class DataFile {
  String name;
  int date;

  DataFile(this.name, this.date);

  DataFile.fromList(List<dynamic> list):
      this(list[0], list[1]);
}