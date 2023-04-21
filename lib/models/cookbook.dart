import 'package:flutter_doctors/models/recipe.dart';

class CookBook{

  // --- Instance variables
  List<Recipe>? cookbook;

  // --- Constructors
  CookBook({this.cookbook});

  // --- Methods
  Recipe getRecipe(String search){
    return cookbook!.singleWhere((element) => element == search);
  }
  
} //CookBook