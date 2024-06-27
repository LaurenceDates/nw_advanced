import 'package:isar/isar.dart';
part 'info.g.dart';

@Collection()
class Info {
  int id = Isar.autoIncrement;

  @Index(unique: true)
  late int date;
  late String body;

  Info();

  Info.newEntity(this.date, this.body);

  Info.fromList(List<dynamic> list): this.newEntity(list[0], list[1]);
}