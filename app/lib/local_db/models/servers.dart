import 'package:isar/isar.dart';
part 'servers.g.dart';

@Collection()
class Server {
  int id = Isar.autoIncrement;
  @Index(type: IndexType.hash, unique: true, caseSensitive: false)
  late String name;
  late String worldSet;
  late String region;
  @Index(type: IndexType.hash)
  late String definitionFile;
  @Index(unique: true)
  late int nwmpNo;

  Map<String, dynamic> get toMap => {
    "name": name,
    "world_set": worldSet,
    "region": region,
    "definition_file": definitionFile,
    "nwmp_no": nwmpNo
  };

  Server();

  Server.newEntity(this.name, this.worldSet, this.region, this.definitionFile, this.nwmpNo);

  Server.fromMap(Map<String, dynamic> map, String definitionFile): this.newEntity(map["name"], map["world_set"], map["region"], definitionFile, map["nwmp_server_no"]);
}