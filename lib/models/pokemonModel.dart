import 'package:orderable/models/nextEvolutionModel.dart';

class Pokemon {
  String num, name, img, height, weight, candy, egg, spawnChance, spawnTime, awgSpawns;
  int id, candyCount;
  List<String> type, weaknesses;
  List<double> multipliers;
  List<NextEvolution> nextEvolution;

  Pokemon(
      {this.candy,
      this.candyCount,
      this.egg,
      this.height,
      this.id,
      this.img,
      this.multipliers,
      this.name,
      this.nextEvolution,
      this.num,
      this.spawnChance,
      this.spawnTime,
      this.type,
      this.weaknesses,
      this.weight,
      this.awgSpawns,
      });

  Pokemon.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    num = map['num'];
    name = map['name'];
    img = map['img'];
    type = map['type'].cast<String>();
    height = map['height'];
    weight = map['weight'];
    candy = map['candy'];
    candyCount = map['candy_count'];
    egg = map['egg'];
    spawnChance = map['spawn_chance'].toString();
    awgSpawns = map['avg_spawns'].toString();
    spawnTime = map['spawn_time'];
    multipliers = map['multipliers']?.cast<double>();
    weaknesses = map['weaknesses'].cast<String>();
    if(map['next_evolution'] != null) {
      nextEvolution = List<NextEvolution>();
      map['next_evolution'].forEach((v) {
        nextEvolution.add(NextEvolution.fromMap(v));
      });
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
      data['num'] = this.num;
    data['name'] = this.name;
    data['img'] = this.img;
    data['type'] = this.type;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['candy'] = this.candy;
    data['candy_count'] = this.candyCount;
    data['egg'] = this.egg;
    data['spawn_chance'] = this.spawnChance;
    data['avg_spawns'] = this.awgSpawns;
    data['spawn_time'] = this.spawnTime;
    data['multipliers'] = this.multipliers;
    data['weaknesses'] = this.weaknesses;
    if (this.nextEvolution != null) {
      data['next_evolution'] =
          this.nextEvolution.map((v) => v.toMap()).toList();
    }
    return data;
  }
}
