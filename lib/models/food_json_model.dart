class Food {
  String? idMeal;
  String? strMeal;
  String? strDrinkAlternate;
  String? strCategory;
  String? strArea;
  String? strInstructions;
  String? strMealThumb;
  String? strTags;
  String? strYoutube;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;
  String? strIngredient7;
  String? strIngredient8;
  String? strIngredient9;
  String? strIngredient10;
  String? strIngredient11;
  String? strIngredient12;
  String? strIngredient13;
  String? strIngredient14;
  String? strIngredient15;
  String? strIngredient16;
  String? strIngredient17;
  String? strIngredient18;
  String? strIngredient19;
  String? strIngredient20;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;
  String? strMeasure6;
  String? strMeasure7;
  String? strMeasure8;
  String? strMeasure9;
  String? strMeasure10;
  String? strMeasure11;
  String? strMeasure12;
  String? strMeasure13;
  String? strMeasure14;
  String? strMeasure15;
  String? strMeasure16;
  String? strMeasure17;
  String? strMeasure18;
  String? strMeasure19;
  String? strMeasure20;
  String? strSource;
  String? strImageSource;
  String? strCreativeCommonsConfirmed;
  String? dateModified;

  Food(
      {this.idMeal,
      this.strMeal,
      this.strDrinkAlternate,
      this.strCategory,
      this.strArea,
      this.strInstructions,
      this.strMealThumb,
      this.strTags,
      this.strYoutube,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strIngredient7,
      this.strIngredient8,
      this.strIngredient9,
      this.strIngredient10,
      this.strIngredient11,
      this.strIngredient12,
      this.strIngredient13,
      this.strIngredient14,
      this.strIngredient15,
      this.strIngredient16,
      this.strIngredient17,
      this.strIngredient18,
      this.strIngredient19,
      this.strIngredient20,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strMeasure7,
      this.strMeasure8,
      this.strMeasure9,
      this.strMeasure10,
      this.strMeasure11,
      this.strMeasure12,
      this.strMeasure13,
      this.strMeasure14,
      this.strMeasure15,
      this.strMeasure16,
      this.strMeasure17,
      this.strMeasure18,
      this.strMeasure19,
      this.strMeasure20,
      this.strSource,
      this.strImageSource,
      this.strCreativeCommonsConfirmed,
      this.dateModified});

  Food.fromJson(Map<String, dynamic> json) {
    idMeal = json['idMeal'] ?? 'null';
    strMeal = json['strMeal'] ?? 'null';
    strDrinkAlternate = json['strDrinkAlternate'] ?? 'null';
    strCategory = json['strCategory'] ?? 'null';
    strArea = json['strArea'] ?? 'null';
    strInstructions = json['strInstructions'] ?? 'null';
    strMealThumb = json['strMealThumb'] ?? 'null';
    strTags = json['strTags'] ?? 'null';
    strYoutube = json['strYoutube'] ?? 'null';
    strIngredient1 = json['strIngredient1'] ?? 'null';
    strIngredient2 = json['strIngredient2'] ?? 'null';
    strIngredient3 = json['strIngredient3'] ?? 'null';
    strIngredient4 = json['strIngredient4'] ?? 'null';
    strIngredient5 = json['strIngredient5'] ?? 'null';
    strIngredient6 = json['strIngredient6'] ?? 'null';
    strIngredient7 = json['strIngredient7'] ?? 'null';
    strIngredient8 = json['strIngredient8'] ?? 'null';
    strIngredient9 = json['strIngredient9'] ?? 'null';
    strIngredient10 = json['strIngredient10'] ?? 'null';
    strIngredient11 = json['strIngredient11'] ?? 'null';
    strIngredient12 = json['strIngredient12'] ?? 'null';
    strIngredient13 = json['strIngredient13'] ?? 'null';
    strIngredient14 = json['strIngredient14'] ?? 'null';
    strIngredient15 = json['strIngredient15'] ?? 'null';
    strIngredient16 = json['strIngredient16'] ?? 'null';
    strIngredient17 = json['strIngredient17'] ?? 'null';
    strIngredient18 = json['strIngredient18'] ?? 'null';
    strIngredient19 = json['strIngredient19'] ?? 'null';
    strIngredient20 = json['strIngredient20'] ?? 'null';
    strMeasure1 = json['strMeasure1'] ?? 'null';
    strMeasure2 = json['strMeasure2'] ?? 'null';
    strMeasure3 = json['strMeasure3'] ?? 'null';
    strMeasure4 = json['strMeasure4'] ?? 'null';
    strMeasure5 = json['strMeasure5'] ?? 'null';
    strMeasure6 = json['strMeasure6'] ?? 'null';
    strMeasure7 = json['strMeasure7'] ?? 'null';
    strMeasure8 = json['strMeasure8'] ?? 'null';
    strMeasure9 = json['strMeasure9'] ?? 'null';
    strMeasure10 = json['strMeasure10'] ?? 'null';
    strMeasure11 = json['strMeasure11'] ?? 'null';
    strMeasure12 = json['strMeasure12'] ?? 'null';
    strMeasure13 = json['strMeasure13'] ?? 'null';
    strMeasure14 = json['strMeasure14'] ?? 'null';
    strMeasure15 = json['strMeasure15'] ?? 'null';
    strMeasure16 = json['strMeasure16'] ?? 'null';
    strMeasure17 = json['strMeasure17'] ?? 'null';
    strMeasure18 = json['strMeasure18'] ?? 'null';
    strMeasure19 = json['strMeasure19'] ?? 'null';
    strMeasure20 = json['strMeasure20'] ?? 'null';
    strSource = json['strSource'] ?? 'null';
    strImageSource = json['strImageSource'] ?? 'null';
    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'] ?? 'null';
    dateModified = json['dateModified'] ?? 'null';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['idMeal'] = idMeal;
    data['strMeal'] = strMeal;
    data['strDrinkAlternate'] = strDrinkAlternate;
    data['strCategory'] = strCategory;
    data['strArea'] = strArea;
    data['strInstructions'] = strInstructions;
    data['strMealThumb'] = strMealThumb;
    data['strTags'] = strTags;
    data['strYoutube'] = strYoutube;
    data['strIngredient1'] = strIngredient1;
    data['strIngredient2'] = strIngredient2;
    data['strIngredient3'] = strIngredient3;
    data['strIngredient4'] = strIngredient4;
    data['strIngredient5'] = strIngredient5;
    data['strIngredient6'] = strIngredient6;
    data['strIngredient7'] = strIngredient7;
    data['strIngredient8'] = strIngredient8;
    data['strIngredient9'] = strIngredient9;
    data['strIngredient10'] = strIngredient10;
    data['strIngredient11'] = strIngredient11;
    data['strIngredient12'] = strIngredient12;
    data['strIngredient13'] = strIngredient13;
    data['strIngredient14'] = strIngredient14;
    data['strIngredient15'] = strIngredient15;
    data['strIngredient16'] = strIngredient16;
    data['strIngredient17'] = strIngredient17;
    data['strIngredient18'] = strIngredient18;
    data['strIngredient19'] = strIngredient19;
    data['strIngredient20'] = strIngredient20;
    data['strMeasure1'] = strMeasure1;
    data['strMeasure2'] = strMeasure2;
    data['strMeasure3'] = strMeasure3;
    data['strMeasure4'] = strMeasure4;
    data['strMeasure5'] = strMeasure5;
    data['strMeasure6'] = strMeasure6;
    data['strMeasure7'] = strMeasure7;
    data['strMeasure8'] = strMeasure8;
    data['strMeasure9'] = strMeasure9;
    data['strMeasure10'] = strMeasure10;
    data['strMeasure11'] = strMeasure11;
    data['strMeasure12'] = strMeasure12;
    data['strMeasure13'] = strMeasure13;
    data['strMeasure14'] = strMeasure14;
    data['strMeasure15'] = strMeasure15;
    data['strMeasure16'] = strMeasure16;
    data['strMeasure17'] = strMeasure17;
    data['strMeasure18'] = strMeasure18;
    data['strMeasure19'] = strMeasure19;
    data['strMeasure20'] = strMeasure20;
    data['strSource'] = strSource;
    data['strImageSource'] = strImageSource;
    data['strCreativeCommonsConfirmed'] = strCreativeCommonsConfirmed;
    data['dateModified'] = dateModified;
    return data;
  }
}
