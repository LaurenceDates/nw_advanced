class ServerLastUpdated {
  final int serverNo;
  final String serverName;
  int date;

  ServerLastUpdated(this.serverNo, this.serverName, this.date);

  ServerLastUpdated.fromList(List<dynamic> list):
      this(list[0], list[1], DateTime.parse(list[2]).millisecondsSinceEpoch);
}