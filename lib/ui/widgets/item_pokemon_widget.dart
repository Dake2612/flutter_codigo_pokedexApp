import 'package:flutter/material.dart';
import 'package:flutter_codigo_pokedex/models/pokemon_model.dart';
import 'package:flutter_codigo_pokedex/pages/detail_page.dart';
import 'package:flutter_codigo_pokedex/ui/general/colors.dart';
import 'package:flutter_codigo_pokedex/ui/widgets/item_type_widget.dart';

class ItemPokemonWidget extends StatelessWidget {

  Pokemon pokemon;

  ItemPokemonWidget({
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(pokemon: pokemon,)));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: colorsPokemon[pokemon.type[0]],
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -20,
              right: -20,
              child: Image.asset(
                "assets/images/pokeball.png",
                height: 110.0,
                color: Colors.white.withOpacity(0.27),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
              child: Column(
                children: [
                  Text(
                    pokemon.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ...pokemon.type.map((e) => ItemTypeWidget(texto: e,)).toList(),
                ],
              ),
            ),
            Positioned(
              bottom: -10,
              right: -10,
              child: Image.network(
                pokemon.img,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
