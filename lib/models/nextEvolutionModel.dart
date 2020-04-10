class NextEvolution {
  String num, name;

  NextEvolution({this.num, this.name});

  NextEvolution.fromMap(Map<String, dynamic> map) {
    num  = map['num'];
    name = map['name'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['num'] = this.num;
    data['name'] = this.name;
    return data;
  }
}