class Recipe{

  // --- Instance variables
  String? name; //Nome del piatto
  List? meal; //Pasto (Colazione/Pranzo/Cena)
  List? dish; //Piatto (Primo/Secondo/Contorno/Dolce)
  Map? ingredients; // Ingredienti : [peso/quantità]
  String? execution; //Svolgimento

  // --- Constructors
  Recipe({this.name,this.meal,this.ingredients,this.dish});

  // --- Methods
  Iterable getIngredientsType(){
    return ingredients!.keys;
  }
 
  String getName(){
    return name!;
  }

  @override
  String toString() {
    return name!;
  }
} //Recipe