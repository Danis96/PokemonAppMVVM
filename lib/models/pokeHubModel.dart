import 'package:orderable/models/pokemonModel.dart';

class PokeHub {
   List<Pokemon> pokemon;

   PokeHub({this.pokemon});

   PokeHub.fromMap(Map<String,dynamic> map) {
     if(map['pokemon'] != null)  {
       pokemon = List<Pokemon>();
       map['pokemon'].forEach((v) {
          pokemon.add(Pokemon.fromMap(v));
       });
     }
   }

   Map<String, dynamic> toMap() {
     final Map<String, dynamic> data = Map<String, dynamic>();
     if(this.pokemon != null) {
       data['pokemon'] = this.pokemon.map((f) => f.toMap()).toList();
     }
     return data;
   }
}