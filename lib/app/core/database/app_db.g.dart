// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $FoodEntityTable extends FoodEntity
    with TableInfo<$FoodEntityTable, FoodEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMealMeta = const VerificationMeta('idMeal');
  @override
  late final GeneratedColumn<String> idMeal = GeneratedColumn<String>(
      'id_meal', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMealMeta =
      const VerificationMeta('strMeal');
  @override
  late final GeneratedColumn<String> strMeal = GeneratedColumn<String>(
      'str_meal', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strDrinkAlternateMeta =
      const VerificationMeta('strDrinkAlternate');
  @override
  late final GeneratedColumn<String> strDrinkAlternate =
      GeneratedColumn<String>('str_drink_alternate', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _strCategoryMeta =
      const VerificationMeta('strCategory');
  @override
  late final GeneratedColumn<String> strCategory = GeneratedColumn<String>(
      'str_category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strAreaMeta =
      const VerificationMeta('strArea');
  @override
  late final GeneratedColumn<String> strArea = GeneratedColumn<String>(
      'str_area', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strInstructionsMeta =
      const VerificationMeta('strInstructions');
  @override
  late final GeneratedColumn<String> strInstructions = GeneratedColumn<String>(
      'str_instructions', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMealThumbMeta =
      const VerificationMeta('strMealThumb');
  @override
  late final GeneratedColumn<String> strMealThumb = GeneratedColumn<String>(
      'str_meal_thumb', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strTagsMeta =
      const VerificationMeta('strTags');
  @override
  late final GeneratedColumn<String> strTags = GeneratedColumn<String>(
      'str_tags', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strYoutubeMeta =
      const VerificationMeta('strYoutube');
  @override
  late final GeneratedColumn<String> strYoutube = GeneratedColumn<String>(
      'str_youtube', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient1Meta =
      const VerificationMeta('strIngredient1');
  @override
  late final GeneratedColumn<String> strIngredient1 = GeneratedColumn<String>(
      'str_ingredient1', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient2Meta =
      const VerificationMeta('strIngredient2');
  @override
  late final GeneratedColumn<String> strIngredient2 = GeneratedColumn<String>(
      'str_ingredient2', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient3Meta =
      const VerificationMeta('strIngredient3');
  @override
  late final GeneratedColumn<String> strIngredient3 = GeneratedColumn<String>(
      'str_ingredient3', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient4Meta =
      const VerificationMeta('strIngredient4');
  @override
  late final GeneratedColumn<String> strIngredient4 = GeneratedColumn<String>(
      'str_ingredient4', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient5Meta =
      const VerificationMeta('strIngredient5');
  @override
  late final GeneratedColumn<String> strIngredient5 = GeneratedColumn<String>(
      'str_ingredient5', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient6Meta =
      const VerificationMeta('strIngredient6');
  @override
  late final GeneratedColumn<String> strIngredient6 = GeneratedColumn<String>(
      'str_ingredient6', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient7Meta =
      const VerificationMeta('strIngredient7');
  @override
  late final GeneratedColumn<String> strIngredient7 = GeneratedColumn<String>(
      'str_ingredient7', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient8Meta =
      const VerificationMeta('strIngredient8');
  @override
  late final GeneratedColumn<String> strIngredient8 = GeneratedColumn<String>(
      'str_ingredient8', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient9Meta =
      const VerificationMeta('strIngredient9');
  @override
  late final GeneratedColumn<String> strIngredient9 = GeneratedColumn<String>(
      'str_ingredient9', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient10Meta =
      const VerificationMeta('strIngredient10');
  @override
  late final GeneratedColumn<String> strIngredient10 = GeneratedColumn<String>(
      'str_ingredient10', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient11Meta =
      const VerificationMeta('strIngredient11');
  @override
  late final GeneratedColumn<String> strIngredient11 = GeneratedColumn<String>(
      'str_ingredient11', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient12Meta =
      const VerificationMeta('strIngredient12');
  @override
  late final GeneratedColumn<String> strIngredient12 = GeneratedColumn<String>(
      'str_ingredient12', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient13Meta =
      const VerificationMeta('strIngredient13');
  @override
  late final GeneratedColumn<String> strIngredient13 = GeneratedColumn<String>(
      'str_ingredient13', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient14Meta =
      const VerificationMeta('strIngredient14');
  @override
  late final GeneratedColumn<String> strIngredient14 = GeneratedColumn<String>(
      'str_ingredient14', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient15Meta =
      const VerificationMeta('strIngredient15');
  @override
  late final GeneratedColumn<String> strIngredient15 = GeneratedColumn<String>(
      'str_ingredient15', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient16Meta =
      const VerificationMeta('strIngredient16');
  @override
  late final GeneratedColumn<String> strIngredient16 = GeneratedColumn<String>(
      'str_ingredient16', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient17Meta =
      const VerificationMeta('strIngredient17');
  @override
  late final GeneratedColumn<String> strIngredient17 = GeneratedColumn<String>(
      'str_ingredient17', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient18Meta =
      const VerificationMeta('strIngredient18');
  @override
  late final GeneratedColumn<String> strIngredient18 = GeneratedColumn<String>(
      'str_ingredient18', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient19Meta =
      const VerificationMeta('strIngredient19');
  @override
  late final GeneratedColumn<String> strIngredient19 = GeneratedColumn<String>(
      'str_ingredient19', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strIngredient20Meta =
      const VerificationMeta('strIngredient20');
  @override
  late final GeneratedColumn<String> strIngredient20 = GeneratedColumn<String>(
      'str_ingredient20', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure1Meta =
      const VerificationMeta('strMeasure1');
  @override
  late final GeneratedColumn<String> strMeasure1 = GeneratedColumn<String>(
      'str_measure1', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure2Meta =
      const VerificationMeta('strMeasure2');
  @override
  late final GeneratedColumn<String> strMeasure2 = GeneratedColumn<String>(
      'str_measure2', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure3Meta =
      const VerificationMeta('strMeasure3');
  @override
  late final GeneratedColumn<String> strMeasure3 = GeneratedColumn<String>(
      'str_measure3', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure4Meta =
      const VerificationMeta('strMeasure4');
  @override
  late final GeneratedColumn<String> strMeasure4 = GeneratedColumn<String>(
      'str_measure4', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure5Meta =
      const VerificationMeta('strMeasure5');
  @override
  late final GeneratedColumn<String> strMeasure5 = GeneratedColumn<String>(
      'str_measure5', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure6Meta =
      const VerificationMeta('strMeasure6');
  @override
  late final GeneratedColumn<String> strMeasure6 = GeneratedColumn<String>(
      'str_measure6', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure7Meta =
      const VerificationMeta('strMeasure7');
  @override
  late final GeneratedColumn<String> strMeasure7 = GeneratedColumn<String>(
      'str_measure7', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure8Meta =
      const VerificationMeta('strMeasure8');
  @override
  late final GeneratedColumn<String> strMeasure8 = GeneratedColumn<String>(
      'str_measure8', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure9Meta =
      const VerificationMeta('strMeasure9');
  @override
  late final GeneratedColumn<String> strMeasure9 = GeneratedColumn<String>(
      'str_measure9', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure10Meta =
      const VerificationMeta('strMeasure10');
  @override
  late final GeneratedColumn<String> strMeasure10 = GeneratedColumn<String>(
      'str_measure10', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure11Meta =
      const VerificationMeta('strMeasure11');
  @override
  late final GeneratedColumn<String> strMeasure11 = GeneratedColumn<String>(
      'str_measure11', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure12Meta =
      const VerificationMeta('strMeasure12');
  @override
  late final GeneratedColumn<String> strMeasure12 = GeneratedColumn<String>(
      'str_measure12', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure13Meta =
      const VerificationMeta('strMeasure13');
  @override
  late final GeneratedColumn<String> strMeasure13 = GeneratedColumn<String>(
      'str_measure13', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure14Meta =
      const VerificationMeta('strMeasure14');
  @override
  late final GeneratedColumn<String> strMeasure14 = GeneratedColumn<String>(
      'str_measure14', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure15Meta =
      const VerificationMeta('strMeasure15');
  @override
  late final GeneratedColumn<String> strMeasure15 = GeneratedColumn<String>(
      'str_measure15', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure16Meta =
      const VerificationMeta('strMeasure16');
  @override
  late final GeneratedColumn<String> strMeasure16 = GeneratedColumn<String>(
      'str_measure16', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure17Meta =
      const VerificationMeta('strMeasure17');
  @override
  late final GeneratedColumn<String> strMeasure17 = GeneratedColumn<String>(
      'str_measure17', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure18Meta =
      const VerificationMeta('strMeasure18');
  @override
  late final GeneratedColumn<String> strMeasure18 = GeneratedColumn<String>(
      'str_measure18', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure19Meta =
      const VerificationMeta('strMeasure19');
  @override
  late final GeneratedColumn<String> strMeasure19 = GeneratedColumn<String>(
      'str_measure19', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strMeasure20Meta =
      const VerificationMeta('strMeasure20');
  @override
  late final GeneratedColumn<String> strMeasure20 = GeneratedColumn<String>(
      'str_measure20', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strSourceMeta =
      const VerificationMeta('strSource');
  @override
  late final GeneratedColumn<String> strSource = GeneratedColumn<String>(
      'str_source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strImageSourceMeta =
      const VerificationMeta('strImageSource');
  @override
  late final GeneratedColumn<String> strImageSource = GeneratedColumn<String>(
      'str_image_source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _strCreativeCommonsConfirmedMeta =
      const VerificationMeta('strCreativeCommonsConfirmed');
  @override
  late final GeneratedColumn<String> strCreativeCommonsConfirmed =
      GeneratedColumn<String>(
          'str_creative_commons_confirmed', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateModifiedMeta =
      const VerificationMeta('dateModified');
  @override
  late final GeneratedColumn<String> dateModified = GeneratedColumn<String>(
      'date_modified', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        idMeal,
        strMeal,
        strDrinkAlternate,
        strCategory,
        strArea,
        strInstructions,
        strMealThumb,
        strTags,
        strYoutube,
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strIngredient5,
        strIngredient6,
        strIngredient7,
        strIngredient8,
        strIngredient9,
        strIngredient10,
        strIngredient11,
        strIngredient12,
        strIngredient13,
        strIngredient14,
        strIngredient15,
        strIngredient16,
        strIngredient17,
        strIngredient18,
        strIngredient19,
        strIngredient20,
        strMeasure1,
        strMeasure2,
        strMeasure3,
        strMeasure4,
        strMeasure5,
        strMeasure6,
        strMeasure7,
        strMeasure8,
        strMeasure9,
        strMeasure10,
        strMeasure11,
        strMeasure12,
        strMeasure13,
        strMeasure14,
        strMeasure15,
        strMeasure16,
        strMeasure17,
        strMeasure18,
        strMeasure19,
        strMeasure20,
        strSource,
        strImageSource,
        strCreativeCommonsConfirmed,
        dateModified
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'food_entity';
  @override
  VerificationContext validateIntegrity(Insertable<FoodEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_meal')) {
      context.handle(_idMealMeta,
          idMeal.isAcceptableOrUnknown(data['id_meal']!, _idMealMeta));
    } else if (isInserting) {
      context.missing(_idMealMeta);
    }
    if (data.containsKey('str_meal')) {
      context.handle(_strMealMeta,
          strMeal.isAcceptableOrUnknown(data['str_meal']!, _strMealMeta));
    } else if (isInserting) {
      context.missing(_strMealMeta);
    }
    if (data.containsKey('str_drink_alternate')) {
      context.handle(
          _strDrinkAlternateMeta,
          strDrinkAlternate.isAcceptableOrUnknown(
              data['str_drink_alternate']!, _strDrinkAlternateMeta));
    }
    if (data.containsKey('str_category')) {
      context.handle(
          _strCategoryMeta,
          strCategory.isAcceptableOrUnknown(
              data['str_category']!, _strCategoryMeta));
    } else if (isInserting) {
      context.missing(_strCategoryMeta);
    }
    if (data.containsKey('str_area')) {
      context.handle(_strAreaMeta,
          strArea.isAcceptableOrUnknown(data['str_area']!, _strAreaMeta));
    } else if (isInserting) {
      context.missing(_strAreaMeta);
    }
    if (data.containsKey('str_instructions')) {
      context.handle(
          _strInstructionsMeta,
          strInstructions.isAcceptableOrUnknown(
              data['str_instructions']!, _strInstructionsMeta));
    } else if (isInserting) {
      context.missing(_strInstructionsMeta);
    }
    if (data.containsKey('str_meal_thumb')) {
      context.handle(
          _strMealThumbMeta,
          strMealThumb.isAcceptableOrUnknown(
              data['str_meal_thumb']!, _strMealThumbMeta));
    } else if (isInserting) {
      context.missing(_strMealThumbMeta);
    }
    if (data.containsKey('str_tags')) {
      context.handle(_strTagsMeta,
          strTags.isAcceptableOrUnknown(data['str_tags']!, _strTagsMeta));
    } else if (isInserting) {
      context.missing(_strTagsMeta);
    }
    if (data.containsKey('str_youtube')) {
      context.handle(
          _strYoutubeMeta,
          strYoutube.isAcceptableOrUnknown(
              data['str_youtube']!, _strYoutubeMeta));
    } else if (isInserting) {
      context.missing(_strYoutubeMeta);
    }
    if (data.containsKey('str_ingredient1')) {
      context.handle(
          _strIngredient1Meta,
          strIngredient1.isAcceptableOrUnknown(
              data['str_ingredient1']!, _strIngredient1Meta));
    } else if (isInserting) {
      context.missing(_strIngredient1Meta);
    }
    if (data.containsKey('str_ingredient2')) {
      context.handle(
          _strIngredient2Meta,
          strIngredient2.isAcceptableOrUnknown(
              data['str_ingredient2']!, _strIngredient2Meta));
    } else if (isInserting) {
      context.missing(_strIngredient2Meta);
    }
    if (data.containsKey('str_ingredient3')) {
      context.handle(
          _strIngredient3Meta,
          strIngredient3.isAcceptableOrUnknown(
              data['str_ingredient3']!, _strIngredient3Meta));
    } else if (isInserting) {
      context.missing(_strIngredient3Meta);
    }
    if (data.containsKey('str_ingredient4')) {
      context.handle(
          _strIngredient4Meta,
          strIngredient4.isAcceptableOrUnknown(
              data['str_ingredient4']!, _strIngredient4Meta));
    } else if (isInserting) {
      context.missing(_strIngredient4Meta);
    }
    if (data.containsKey('str_ingredient5')) {
      context.handle(
          _strIngredient5Meta,
          strIngredient5.isAcceptableOrUnknown(
              data['str_ingredient5']!, _strIngredient5Meta));
    } else if (isInserting) {
      context.missing(_strIngredient5Meta);
    }
    if (data.containsKey('str_ingredient6')) {
      context.handle(
          _strIngredient6Meta,
          strIngredient6.isAcceptableOrUnknown(
              data['str_ingredient6']!, _strIngredient6Meta));
    } else if (isInserting) {
      context.missing(_strIngredient6Meta);
    }
    if (data.containsKey('str_ingredient7')) {
      context.handle(
          _strIngredient7Meta,
          strIngredient7.isAcceptableOrUnknown(
              data['str_ingredient7']!, _strIngredient7Meta));
    } else if (isInserting) {
      context.missing(_strIngredient7Meta);
    }
    if (data.containsKey('str_ingredient8')) {
      context.handle(
          _strIngredient8Meta,
          strIngredient8.isAcceptableOrUnknown(
              data['str_ingredient8']!, _strIngredient8Meta));
    } else if (isInserting) {
      context.missing(_strIngredient8Meta);
    }
    if (data.containsKey('str_ingredient9')) {
      context.handle(
          _strIngredient9Meta,
          strIngredient9.isAcceptableOrUnknown(
              data['str_ingredient9']!, _strIngredient9Meta));
    } else if (isInserting) {
      context.missing(_strIngredient9Meta);
    }
    if (data.containsKey('str_ingredient10')) {
      context.handle(
          _strIngredient10Meta,
          strIngredient10.isAcceptableOrUnknown(
              data['str_ingredient10']!, _strIngredient10Meta));
    } else if (isInserting) {
      context.missing(_strIngredient10Meta);
    }
    if (data.containsKey('str_ingredient11')) {
      context.handle(
          _strIngredient11Meta,
          strIngredient11.isAcceptableOrUnknown(
              data['str_ingredient11']!, _strIngredient11Meta));
    } else if (isInserting) {
      context.missing(_strIngredient11Meta);
    }
    if (data.containsKey('str_ingredient12')) {
      context.handle(
          _strIngredient12Meta,
          strIngredient12.isAcceptableOrUnknown(
              data['str_ingredient12']!, _strIngredient12Meta));
    } else if (isInserting) {
      context.missing(_strIngredient12Meta);
    }
    if (data.containsKey('str_ingredient13')) {
      context.handle(
          _strIngredient13Meta,
          strIngredient13.isAcceptableOrUnknown(
              data['str_ingredient13']!, _strIngredient13Meta));
    } else if (isInserting) {
      context.missing(_strIngredient13Meta);
    }
    if (data.containsKey('str_ingredient14')) {
      context.handle(
          _strIngredient14Meta,
          strIngredient14.isAcceptableOrUnknown(
              data['str_ingredient14']!, _strIngredient14Meta));
    } else if (isInserting) {
      context.missing(_strIngredient14Meta);
    }
    if (data.containsKey('str_ingredient15')) {
      context.handle(
          _strIngredient15Meta,
          strIngredient15.isAcceptableOrUnknown(
              data['str_ingredient15']!, _strIngredient15Meta));
    } else if (isInserting) {
      context.missing(_strIngredient15Meta);
    }
    if (data.containsKey('str_ingredient16')) {
      context.handle(
          _strIngredient16Meta,
          strIngredient16.isAcceptableOrUnknown(
              data['str_ingredient16']!, _strIngredient16Meta));
    } else if (isInserting) {
      context.missing(_strIngredient16Meta);
    }
    if (data.containsKey('str_ingredient17')) {
      context.handle(
          _strIngredient17Meta,
          strIngredient17.isAcceptableOrUnknown(
              data['str_ingredient17']!, _strIngredient17Meta));
    } else if (isInserting) {
      context.missing(_strIngredient17Meta);
    }
    if (data.containsKey('str_ingredient18')) {
      context.handle(
          _strIngredient18Meta,
          strIngredient18.isAcceptableOrUnknown(
              data['str_ingredient18']!, _strIngredient18Meta));
    } else if (isInserting) {
      context.missing(_strIngredient18Meta);
    }
    if (data.containsKey('str_ingredient19')) {
      context.handle(
          _strIngredient19Meta,
          strIngredient19.isAcceptableOrUnknown(
              data['str_ingredient19']!, _strIngredient19Meta));
    } else if (isInserting) {
      context.missing(_strIngredient19Meta);
    }
    if (data.containsKey('str_ingredient20')) {
      context.handle(
          _strIngredient20Meta,
          strIngredient20.isAcceptableOrUnknown(
              data['str_ingredient20']!, _strIngredient20Meta));
    } else if (isInserting) {
      context.missing(_strIngredient20Meta);
    }
    if (data.containsKey('str_measure1')) {
      context.handle(
          _strMeasure1Meta,
          strMeasure1.isAcceptableOrUnknown(
              data['str_measure1']!, _strMeasure1Meta));
    } else if (isInserting) {
      context.missing(_strMeasure1Meta);
    }
    if (data.containsKey('str_measure2')) {
      context.handle(
          _strMeasure2Meta,
          strMeasure2.isAcceptableOrUnknown(
              data['str_measure2']!, _strMeasure2Meta));
    } else if (isInserting) {
      context.missing(_strMeasure2Meta);
    }
    if (data.containsKey('str_measure3')) {
      context.handle(
          _strMeasure3Meta,
          strMeasure3.isAcceptableOrUnknown(
              data['str_measure3']!, _strMeasure3Meta));
    } else if (isInserting) {
      context.missing(_strMeasure3Meta);
    }
    if (data.containsKey('str_measure4')) {
      context.handle(
          _strMeasure4Meta,
          strMeasure4.isAcceptableOrUnknown(
              data['str_measure4']!, _strMeasure4Meta));
    } else if (isInserting) {
      context.missing(_strMeasure4Meta);
    }
    if (data.containsKey('str_measure5')) {
      context.handle(
          _strMeasure5Meta,
          strMeasure5.isAcceptableOrUnknown(
              data['str_measure5']!, _strMeasure5Meta));
    } else if (isInserting) {
      context.missing(_strMeasure5Meta);
    }
    if (data.containsKey('str_measure6')) {
      context.handle(
          _strMeasure6Meta,
          strMeasure6.isAcceptableOrUnknown(
              data['str_measure6']!, _strMeasure6Meta));
    } else if (isInserting) {
      context.missing(_strMeasure6Meta);
    }
    if (data.containsKey('str_measure7')) {
      context.handle(
          _strMeasure7Meta,
          strMeasure7.isAcceptableOrUnknown(
              data['str_measure7']!, _strMeasure7Meta));
    } else if (isInserting) {
      context.missing(_strMeasure7Meta);
    }
    if (data.containsKey('str_measure8')) {
      context.handle(
          _strMeasure8Meta,
          strMeasure8.isAcceptableOrUnknown(
              data['str_measure8']!, _strMeasure8Meta));
    } else if (isInserting) {
      context.missing(_strMeasure8Meta);
    }
    if (data.containsKey('str_measure9')) {
      context.handle(
          _strMeasure9Meta,
          strMeasure9.isAcceptableOrUnknown(
              data['str_measure9']!, _strMeasure9Meta));
    } else if (isInserting) {
      context.missing(_strMeasure9Meta);
    }
    if (data.containsKey('str_measure10')) {
      context.handle(
          _strMeasure10Meta,
          strMeasure10.isAcceptableOrUnknown(
              data['str_measure10']!, _strMeasure10Meta));
    } else if (isInserting) {
      context.missing(_strMeasure10Meta);
    }
    if (data.containsKey('str_measure11')) {
      context.handle(
          _strMeasure11Meta,
          strMeasure11.isAcceptableOrUnknown(
              data['str_measure11']!, _strMeasure11Meta));
    } else if (isInserting) {
      context.missing(_strMeasure11Meta);
    }
    if (data.containsKey('str_measure12')) {
      context.handle(
          _strMeasure12Meta,
          strMeasure12.isAcceptableOrUnknown(
              data['str_measure12']!, _strMeasure12Meta));
    } else if (isInserting) {
      context.missing(_strMeasure12Meta);
    }
    if (data.containsKey('str_measure13')) {
      context.handle(
          _strMeasure13Meta,
          strMeasure13.isAcceptableOrUnknown(
              data['str_measure13']!, _strMeasure13Meta));
    } else if (isInserting) {
      context.missing(_strMeasure13Meta);
    }
    if (data.containsKey('str_measure14')) {
      context.handle(
          _strMeasure14Meta,
          strMeasure14.isAcceptableOrUnknown(
              data['str_measure14']!, _strMeasure14Meta));
    } else if (isInserting) {
      context.missing(_strMeasure14Meta);
    }
    if (data.containsKey('str_measure15')) {
      context.handle(
          _strMeasure15Meta,
          strMeasure15.isAcceptableOrUnknown(
              data['str_measure15']!, _strMeasure15Meta));
    } else if (isInserting) {
      context.missing(_strMeasure15Meta);
    }
    if (data.containsKey('str_measure16')) {
      context.handle(
          _strMeasure16Meta,
          strMeasure16.isAcceptableOrUnknown(
              data['str_measure16']!, _strMeasure16Meta));
    } else if (isInserting) {
      context.missing(_strMeasure16Meta);
    }
    if (data.containsKey('str_measure17')) {
      context.handle(
          _strMeasure17Meta,
          strMeasure17.isAcceptableOrUnknown(
              data['str_measure17']!, _strMeasure17Meta));
    } else if (isInserting) {
      context.missing(_strMeasure17Meta);
    }
    if (data.containsKey('str_measure18')) {
      context.handle(
          _strMeasure18Meta,
          strMeasure18.isAcceptableOrUnknown(
              data['str_measure18']!, _strMeasure18Meta));
    } else if (isInserting) {
      context.missing(_strMeasure18Meta);
    }
    if (data.containsKey('str_measure19')) {
      context.handle(
          _strMeasure19Meta,
          strMeasure19.isAcceptableOrUnknown(
              data['str_measure19']!, _strMeasure19Meta));
    } else if (isInserting) {
      context.missing(_strMeasure19Meta);
    }
    if (data.containsKey('str_measure20')) {
      context.handle(
          _strMeasure20Meta,
          strMeasure20.isAcceptableOrUnknown(
              data['str_measure20']!, _strMeasure20Meta));
    } else if (isInserting) {
      context.missing(_strMeasure20Meta);
    }
    if (data.containsKey('str_source')) {
      context.handle(_strSourceMeta,
          strSource.isAcceptableOrUnknown(data['str_source']!, _strSourceMeta));
    } else if (isInserting) {
      context.missing(_strSourceMeta);
    }
    if (data.containsKey('str_image_source')) {
      context.handle(
          _strImageSourceMeta,
          strImageSource.isAcceptableOrUnknown(
              data['str_image_source']!, _strImageSourceMeta));
    } else if (isInserting) {
      context.missing(_strImageSourceMeta);
    }
    if (data.containsKey('str_creative_commons_confirmed')) {
      context.handle(
          _strCreativeCommonsConfirmedMeta,
          strCreativeCommonsConfirmed.isAcceptableOrUnknown(
              data['str_creative_commons_confirmed']!,
              _strCreativeCommonsConfirmedMeta));
    } else if (isInserting) {
      context.missing(_strCreativeCommonsConfirmedMeta);
    }
    if (data.containsKey('date_modified')) {
      context.handle(
          _dateModifiedMeta,
          dateModified.isAcceptableOrUnknown(
              data['date_modified']!, _dateModifiedMeta));
    } else if (isInserting) {
      context.missing(_dateModifiedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  FoodEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodEntityData(
      idMeal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id_meal'])!,
      strMeal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_meal'])!,
      strDrinkAlternate: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_drink_alternate']),
      strCategory: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_category'])!,
      strArea: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_area'])!,
      strInstructions: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_instructions'])!,
      strMealThumb: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_meal_thumb'])!,
      strTags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_tags'])!,
      strYoutube: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_youtube'])!,
      strIngredient1: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient1'])!,
      strIngredient2: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient2'])!,
      strIngredient3: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient3'])!,
      strIngredient4: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient4'])!,
      strIngredient5: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient5'])!,
      strIngredient6: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient6'])!,
      strIngredient7: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient7'])!,
      strIngredient8: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient8'])!,
      strIngredient9: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient9'])!,
      strIngredient10: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient10'])!,
      strIngredient11: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient11'])!,
      strIngredient12: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient12'])!,
      strIngredient13: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient13'])!,
      strIngredient14: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient14'])!,
      strIngredient15: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient15'])!,
      strIngredient16: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient16'])!,
      strIngredient17: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient17'])!,
      strIngredient18: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient18'])!,
      strIngredient19: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient19'])!,
      strIngredient20: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_ingredient20'])!,
      strMeasure1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure1'])!,
      strMeasure2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure2'])!,
      strMeasure3: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure3'])!,
      strMeasure4: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure4'])!,
      strMeasure5: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure5'])!,
      strMeasure6: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure6'])!,
      strMeasure7: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure7'])!,
      strMeasure8: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure8'])!,
      strMeasure9: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure9'])!,
      strMeasure10: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure10'])!,
      strMeasure11: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure11'])!,
      strMeasure12: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure12'])!,
      strMeasure13: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure13'])!,
      strMeasure14: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure14'])!,
      strMeasure15: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure15'])!,
      strMeasure16: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure16'])!,
      strMeasure17: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure17'])!,
      strMeasure18: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure18'])!,
      strMeasure19: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure19'])!,
      strMeasure20: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_measure20'])!,
      strSource: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_source'])!,
      strImageSource: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}str_image_source'])!,
      strCreativeCommonsConfirmed: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}str_creative_commons_confirmed'])!,
      dateModified: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date_modified'])!,
    );
  }

  @override
  $FoodEntityTable createAlias(String alias) {
    return $FoodEntityTable(attachedDatabase, alias);
  }
}

class FoodEntityData extends DataClass implements Insertable<FoodEntityData> {
  final String idMeal;
  final String strMeal;
  final String? strDrinkAlternate;
  final String strCategory;
  final String strArea;
  final String strInstructions;
  final String strMealThumb;
  final String strTags;
  final String strYoutube;
  final String strIngredient1;
  final String strIngredient2;
  final String strIngredient3;
  final String strIngredient4;
  final String strIngredient5;
  final String strIngredient6;
  final String strIngredient7;
  final String strIngredient8;
  final String strIngredient9;
  final String strIngredient10;
  final String strIngredient11;
  final String strIngredient12;
  final String strIngredient13;
  final String strIngredient14;
  final String strIngredient15;
  final String strIngredient16;
  final String strIngredient17;
  final String strIngredient18;
  final String strIngredient19;
  final String strIngredient20;
  final String strMeasure1;
  final String strMeasure2;
  final String strMeasure3;
  final String strMeasure4;
  final String strMeasure5;
  final String strMeasure6;
  final String strMeasure7;
  final String strMeasure8;
  final String strMeasure9;
  final String strMeasure10;
  final String strMeasure11;
  final String strMeasure12;
  final String strMeasure13;
  final String strMeasure14;
  final String strMeasure15;
  final String strMeasure16;
  final String strMeasure17;
  final String strMeasure18;
  final String strMeasure19;
  final String strMeasure20;
  final String strSource;
  final String strImageSource;
  final String strCreativeCommonsConfirmed;
  final String dateModified;
  const FoodEntityData(
      {required this.idMeal,
      required this.strMeal,
      this.strDrinkAlternate,
      required this.strCategory,
      required this.strArea,
      required this.strInstructions,
      required this.strMealThumb,
      required this.strTags,
      required this.strYoutube,
      required this.strIngredient1,
      required this.strIngredient2,
      required this.strIngredient3,
      required this.strIngredient4,
      required this.strIngredient5,
      required this.strIngredient6,
      required this.strIngredient7,
      required this.strIngredient8,
      required this.strIngredient9,
      required this.strIngredient10,
      required this.strIngredient11,
      required this.strIngredient12,
      required this.strIngredient13,
      required this.strIngredient14,
      required this.strIngredient15,
      required this.strIngredient16,
      required this.strIngredient17,
      required this.strIngredient18,
      required this.strIngredient19,
      required this.strIngredient20,
      required this.strMeasure1,
      required this.strMeasure2,
      required this.strMeasure3,
      required this.strMeasure4,
      required this.strMeasure5,
      required this.strMeasure6,
      required this.strMeasure7,
      required this.strMeasure8,
      required this.strMeasure9,
      required this.strMeasure10,
      required this.strMeasure11,
      required this.strMeasure12,
      required this.strMeasure13,
      required this.strMeasure14,
      required this.strMeasure15,
      required this.strMeasure16,
      required this.strMeasure17,
      required this.strMeasure18,
      required this.strMeasure19,
      required this.strMeasure20,
      required this.strSource,
      required this.strImageSource,
      required this.strCreativeCommonsConfirmed,
      required this.dateModified});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_meal'] = Variable<String>(idMeal);
    map['str_meal'] = Variable<String>(strMeal);
    if (!nullToAbsent || strDrinkAlternate != null) {
      map['str_drink_alternate'] = Variable<String>(strDrinkAlternate);
    }
    map['str_category'] = Variable<String>(strCategory);
    map['str_area'] = Variable<String>(strArea);
    map['str_instructions'] = Variable<String>(strInstructions);
    map['str_meal_thumb'] = Variable<String>(strMealThumb);
    map['str_tags'] = Variable<String>(strTags);
    map['str_youtube'] = Variable<String>(strYoutube);
    map['str_ingredient1'] = Variable<String>(strIngredient1);
    map['str_ingredient2'] = Variable<String>(strIngredient2);
    map['str_ingredient3'] = Variable<String>(strIngredient3);
    map['str_ingredient4'] = Variable<String>(strIngredient4);
    map['str_ingredient5'] = Variable<String>(strIngredient5);
    map['str_ingredient6'] = Variable<String>(strIngredient6);
    map['str_ingredient7'] = Variable<String>(strIngredient7);
    map['str_ingredient8'] = Variable<String>(strIngredient8);
    map['str_ingredient9'] = Variable<String>(strIngredient9);
    map['str_ingredient10'] = Variable<String>(strIngredient10);
    map['str_ingredient11'] = Variable<String>(strIngredient11);
    map['str_ingredient12'] = Variable<String>(strIngredient12);
    map['str_ingredient13'] = Variable<String>(strIngredient13);
    map['str_ingredient14'] = Variable<String>(strIngredient14);
    map['str_ingredient15'] = Variable<String>(strIngredient15);
    map['str_ingredient16'] = Variable<String>(strIngredient16);
    map['str_ingredient17'] = Variable<String>(strIngredient17);
    map['str_ingredient18'] = Variable<String>(strIngredient18);
    map['str_ingredient19'] = Variable<String>(strIngredient19);
    map['str_ingredient20'] = Variable<String>(strIngredient20);
    map['str_measure1'] = Variable<String>(strMeasure1);
    map['str_measure2'] = Variable<String>(strMeasure2);
    map['str_measure3'] = Variable<String>(strMeasure3);
    map['str_measure4'] = Variable<String>(strMeasure4);
    map['str_measure5'] = Variable<String>(strMeasure5);
    map['str_measure6'] = Variable<String>(strMeasure6);
    map['str_measure7'] = Variable<String>(strMeasure7);
    map['str_measure8'] = Variable<String>(strMeasure8);
    map['str_measure9'] = Variable<String>(strMeasure9);
    map['str_measure10'] = Variable<String>(strMeasure10);
    map['str_measure11'] = Variable<String>(strMeasure11);
    map['str_measure12'] = Variable<String>(strMeasure12);
    map['str_measure13'] = Variable<String>(strMeasure13);
    map['str_measure14'] = Variable<String>(strMeasure14);
    map['str_measure15'] = Variable<String>(strMeasure15);
    map['str_measure16'] = Variable<String>(strMeasure16);
    map['str_measure17'] = Variable<String>(strMeasure17);
    map['str_measure18'] = Variable<String>(strMeasure18);
    map['str_measure19'] = Variable<String>(strMeasure19);
    map['str_measure20'] = Variable<String>(strMeasure20);
    map['str_source'] = Variable<String>(strSource);
    map['str_image_source'] = Variable<String>(strImageSource);
    map['str_creative_commons_confirmed'] =
        Variable<String>(strCreativeCommonsConfirmed);
    map['date_modified'] = Variable<String>(dateModified);
    return map;
  }

  FoodEntityCompanion toCompanion(bool nullToAbsent) {
    return FoodEntityCompanion(
      idMeal: Value(idMeal),
      strMeal: Value(strMeal),
      strDrinkAlternate: strDrinkAlternate == null && nullToAbsent
          ? const Value.absent()
          : Value(strDrinkAlternate),
      strCategory: Value(strCategory),
      strArea: Value(strArea),
      strInstructions: Value(strInstructions),
      strMealThumb: Value(strMealThumb),
      strTags: Value(strTags),
      strYoutube: Value(strYoutube),
      strIngredient1: Value(strIngredient1),
      strIngredient2: Value(strIngredient2),
      strIngredient3: Value(strIngredient3),
      strIngredient4: Value(strIngredient4),
      strIngredient5: Value(strIngredient5),
      strIngredient6: Value(strIngredient6),
      strIngredient7: Value(strIngredient7),
      strIngredient8: Value(strIngredient8),
      strIngredient9: Value(strIngredient9),
      strIngredient10: Value(strIngredient10),
      strIngredient11: Value(strIngredient11),
      strIngredient12: Value(strIngredient12),
      strIngredient13: Value(strIngredient13),
      strIngredient14: Value(strIngredient14),
      strIngredient15: Value(strIngredient15),
      strIngredient16: Value(strIngredient16),
      strIngredient17: Value(strIngredient17),
      strIngredient18: Value(strIngredient18),
      strIngredient19: Value(strIngredient19),
      strIngredient20: Value(strIngredient20),
      strMeasure1: Value(strMeasure1),
      strMeasure2: Value(strMeasure2),
      strMeasure3: Value(strMeasure3),
      strMeasure4: Value(strMeasure4),
      strMeasure5: Value(strMeasure5),
      strMeasure6: Value(strMeasure6),
      strMeasure7: Value(strMeasure7),
      strMeasure8: Value(strMeasure8),
      strMeasure9: Value(strMeasure9),
      strMeasure10: Value(strMeasure10),
      strMeasure11: Value(strMeasure11),
      strMeasure12: Value(strMeasure12),
      strMeasure13: Value(strMeasure13),
      strMeasure14: Value(strMeasure14),
      strMeasure15: Value(strMeasure15),
      strMeasure16: Value(strMeasure16),
      strMeasure17: Value(strMeasure17),
      strMeasure18: Value(strMeasure18),
      strMeasure19: Value(strMeasure19),
      strMeasure20: Value(strMeasure20),
      strSource: Value(strSource),
      strImageSource: Value(strImageSource),
      strCreativeCommonsConfirmed: Value(strCreativeCommonsConfirmed),
      dateModified: Value(dateModified),
    );
  }

  factory FoodEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodEntityData(
      idMeal: serializer.fromJson<String>(json['idMeal']),
      strMeal: serializer.fromJson<String>(json['strMeal']),
      strDrinkAlternate:
          serializer.fromJson<String?>(json['strDrinkAlternate']),
      strCategory: serializer.fromJson<String>(json['strCategory']),
      strArea: serializer.fromJson<String>(json['strArea']),
      strInstructions: serializer.fromJson<String>(json['strInstructions']),
      strMealThumb: serializer.fromJson<String>(json['strMealThumb']),
      strTags: serializer.fromJson<String>(json['strTags']),
      strYoutube: serializer.fromJson<String>(json['strYoutube']),
      strIngredient1: serializer.fromJson<String>(json['strIngredient1']),
      strIngredient2: serializer.fromJson<String>(json['strIngredient2']),
      strIngredient3: serializer.fromJson<String>(json['strIngredient3']),
      strIngredient4: serializer.fromJson<String>(json['strIngredient4']),
      strIngredient5: serializer.fromJson<String>(json['strIngredient5']),
      strIngredient6: serializer.fromJson<String>(json['strIngredient6']),
      strIngredient7: serializer.fromJson<String>(json['strIngredient7']),
      strIngredient8: serializer.fromJson<String>(json['strIngredient8']),
      strIngredient9: serializer.fromJson<String>(json['strIngredient9']),
      strIngredient10: serializer.fromJson<String>(json['strIngredient10']),
      strIngredient11: serializer.fromJson<String>(json['strIngredient11']),
      strIngredient12: serializer.fromJson<String>(json['strIngredient12']),
      strIngredient13: serializer.fromJson<String>(json['strIngredient13']),
      strIngredient14: serializer.fromJson<String>(json['strIngredient14']),
      strIngredient15: serializer.fromJson<String>(json['strIngredient15']),
      strIngredient16: serializer.fromJson<String>(json['strIngredient16']),
      strIngredient17: serializer.fromJson<String>(json['strIngredient17']),
      strIngredient18: serializer.fromJson<String>(json['strIngredient18']),
      strIngredient19: serializer.fromJson<String>(json['strIngredient19']),
      strIngredient20: serializer.fromJson<String>(json['strIngredient20']),
      strMeasure1: serializer.fromJson<String>(json['strMeasure1']),
      strMeasure2: serializer.fromJson<String>(json['strMeasure2']),
      strMeasure3: serializer.fromJson<String>(json['strMeasure3']),
      strMeasure4: serializer.fromJson<String>(json['strMeasure4']),
      strMeasure5: serializer.fromJson<String>(json['strMeasure5']),
      strMeasure6: serializer.fromJson<String>(json['strMeasure6']),
      strMeasure7: serializer.fromJson<String>(json['strMeasure7']),
      strMeasure8: serializer.fromJson<String>(json['strMeasure8']),
      strMeasure9: serializer.fromJson<String>(json['strMeasure9']),
      strMeasure10: serializer.fromJson<String>(json['strMeasure10']),
      strMeasure11: serializer.fromJson<String>(json['strMeasure11']),
      strMeasure12: serializer.fromJson<String>(json['strMeasure12']),
      strMeasure13: serializer.fromJson<String>(json['strMeasure13']),
      strMeasure14: serializer.fromJson<String>(json['strMeasure14']),
      strMeasure15: serializer.fromJson<String>(json['strMeasure15']),
      strMeasure16: serializer.fromJson<String>(json['strMeasure16']),
      strMeasure17: serializer.fromJson<String>(json['strMeasure17']),
      strMeasure18: serializer.fromJson<String>(json['strMeasure18']),
      strMeasure19: serializer.fromJson<String>(json['strMeasure19']),
      strMeasure20: serializer.fromJson<String>(json['strMeasure20']),
      strSource: serializer.fromJson<String>(json['strSource']),
      strImageSource: serializer.fromJson<String>(json['strImageSource']),
      strCreativeCommonsConfirmed:
          serializer.fromJson<String>(json['strCreativeCommonsConfirmed']),
      dateModified: serializer.fromJson<String>(json['dateModified']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idMeal': serializer.toJson<String>(idMeal),
      'strMeal': serializer.toJson<String>(strMeal),
      'strDrinkAlternate': serializer.toJson<String?>(strDrinkAlternate),
      'strCategory': serializer.toJson<String>(strCategory),
      'strArea': serializer.toJson<String>(strArea),
      'strInstructions': serializer.toJson<String>(strInstructions),
      'strMealThumb': serializer.toJson<String>(strMealThumb),
      'strTags': serializer.toJson<String>(strTags),
      'strYoutube': serializer.toJson<String>(strYoutube),
      'strIngredient1': serializer.toJson<String>(strIngredient1),
      'strIngredient2': serializer.toJson<String>(strIngredient2),
      'strIngredient3': serializer.toJson<String>(strIngredient3),
      'strIngredient4': serializer.toJson<String>(strIngredient4),
      'strIngredient5': serializer.toJson<String>(strIngredient5),
      'strIngredient6': serializer.toJson<String>(strIngredient6),
      'strIngredient7': serializer.toJson<String>(strIngredient7),
      'strIngredient8': serializer.toJson<String>(strIngredient8),
      'strIngredient9': serializer.toJson<String>(strIngredient9),
      'strIngredient10': serializer.toJson<String>(strIngredient10),
      'strIngredient11': serializer.toJson<String>(strIngredient11),
      'strIngredient12': serializer.toJson<String>(strIngredient12),
      'strIngredient13': serializer.toJson<String>(strIngredient13),
      'strIngredient14': serializer.toJson<String>(strIngredient14),
      'strIngredient15': serializer.toJson<String>(strIngredient15),
      'strIngredient16': serializer.toJson<String>(strIngredient16),
      'strIngredient17': serializer.toJson<String>(strIngredient17),
      'strIngredient18': serializer.toJson<String>(strIngredient18),
      'strIngredient19': serializer.toJson<String>(strIngredient19),
      'strIngredient20': serializer.toJson<String>(strIngredient20),
      'strMeasure1': serializer.toJson<String>(strMeasure1),
      'strMeasure2': serializer.toJson<String>(strMeasure2),
      'strMeasure3': serializer.toJson<String>(strMeasure3),
      'strMeasure4': serializer.toJson<String>(strMeasure4),
      'strMeasure5': serializer.toJson<String>(strMeasure5),
      'strMeasure6': serializer.toJson<String>(strMeasure6),
      'strMeasure7': serializer.toJson<String>(strMeasure7),
      'strMeasure8': serializer.toJson<String>(strMeasure8),
      'strMeasure9': serializer.toJson<String>(strMeasure9),
      'strMeasure10': serializer.toJson<String>(strMeasure10),
      'strMeasure11': serializer.toJson<String>(strMeasure11),
      'strMeasure12': serializer.toJson<String>(strMeasure12),
      'strMeasure13': serializer.toJson<String>(strMeasure13),
      'strMeasure14': serializer.toJson<String>(strMeasure14),
      'strMeasure15': serializer.toJson<String>(strMeasure15),
      'strMeasure16': serializer.toJson<String>(strMeasure16),
      'strMeasure17': serializer.toJson<String>(strMeasure17),
      'strMeasure18': serializer.toJson<String>(strMeasure18),
      'strMeasure19': serializer.toJson<String>(strMeasure19),
      'strMeasure20': serializer.toJson<String>(strMeasure20),
      'strSource': serializer.toJson<String>(strSource),
      'strImageSource': serializer.toJson<String>(strImageSource),
      'strCreativeCommonsConfirmed':
          serializer.toJson<String>(strCreativeCommonsConfirmed),
      'dateModified': serializer.toJson<String>(dateModified),
    };
  }

  FoodEntityData copyWith(
          {String? idMeal,
          String? strMeal,
          Value<String?> strDrinkAlternate = const Value.absent(),
          String? strCategory,
          String? strArea,
          String? strInstructions,
          String? strMealThumb,
          String? strTags,
          String? strYoutube,
          String? strIngredient1,
          String? strIngredient2,
          String? strIngredient3,
          String? strIngredient4,
          String? strIngredient5,
          String? strIngredient6,
          String? strIngredient7,
          String? strIngredient8,
          String? strIngredient9,
          String? strIngredient10,
          String? strIngredient11,
          String? strIngredient12,
          String? strIngredient13,
          String? strIngredient14,
          String? strIngredient15,
          String? strIngredient16,
          String? strIngredient17,
          String? strIngredient18,
          String? strIngredient19,
          String? strIngredient20,
          String? strMeasure1,
          String? strMeasure2,
          String? strMeasure3,
          String? strMeasure4,
          String? strMeasure5,
          String? strMeasure6,
          String? strMeasure7,
          String? strMeasure8,
          String? strMeasure9,
          String? strMeasure10,
          String? strMeasure11,
          String? strMeasure12,
          String? strMeasure13,
          String? strMeasure14,
          String? strMeasure15,
          String? strMeasure16,
          String? strMeasure17,
          String? strMeasure18,
          String? strMeasure19,
          String? strMeasure20,
          String? strSource,
          String? strImageSource,
          String? strCreativeCommonsConfirmed,
          String? dateModified}) =>
      FoodEntityData(
        idMeal: idMeal ?? this.idMeal,
        strMeal: strMeal ?? this.strMeal,
        strDrinkAlternate: strDrinkAlternate.present
            ? strDrinkAlternate.value
            : this.strDrinkAlternate,
        strCategory: strCategory ?? this.strCategory,
        strArea: strArea ?? this.strArea,
        strInstructions: strInstructions ?? this.strInstructions,
        strMealThumb: strMealThumb ?? this.strMealThumb,
        strTags: strTags ?? this.strTags,
        strYoutube: strYoutube ?? this.strYoutube,
        strIngredient1: strIngredient1 ?? this.strIngredient1,
        strIngredient2: strIngredient2 ?? this.strIngredient2,
        strIngredient3: strIngredient3 ?? this.strIngredient3,
        strIngredient4: strIngredient4 ?? this.strIngredient4,
        strIngredient5: strIngredient5 ?? this.strIngredient5,
        strIngredient6: strIngredient6 ?? this.strIngredient6,
        strIngredient7: strIngredient7 ?? this.strIngredient7,
        strIngredient8: strIngredient8 ?? this.strIngredient8,
        strIngredient9: strIngredient9 ?? this.strIngredient9,
        strIngredient10: strIngredient10 ?? this.strIngredient10,
        strIngredient11: strIngredient11 ?? this.strIngredient11,
        strIngredient12: strIngredient12 ?? this.strIngredient12,
        strIngredient13: strIngredient13 ?? this.strIngredient13,
        strIngredient14: strIngredient14 ?? this.strIngredient14,
        strIngredient15: strIngredient15 ?? this.strIngredient15,
        strIngredient16: strIngredient16 ?? this.strIngredient16,
        strIngredient17: strIngredient17 ?? this.strIngredient17,
        strIngredient18: strIngredient18 ?? this.strIngredient18,
        strIngredient19: strIngredient19 ?? this.strIngredient19,
        strIngredient20: strIngredient20 ?? this.strIngredient20,
        strMeasure1: strMeasure1 ?? this.strMeasure1,
        strMeasure2: strMeasure2 ?? this.strMeasure2,
        strMeasure3: strMeasure3 ?? this.strMeasure3,
        strMeasure4: strMeasure4 ?? this.strMeasure4,
        strMeasure5: strMeasure5 ?? this.strMeasure5,
        strMeasure6: strMeasure6 ?? this.strMeasure6,
        strMeasure7: strMeasure7 ?? this.strMeasure7,
        strMeasure8: strMeasure8 ?? this.strMeasure8,
        strMeasure9: strMeasure9 ?? this.strMeasure9,
        strMeasure10: strMeasure10 ?? this.strMeasure10,
        strMeasure11: strMeasure11 ?? this.strMeasure11,
        strMeasure12: strMeasure12 ?? this.strMeasure12,
        strMeasure13: strMeasure13 ?? this.strMeasure13,
        strMeasure14: strMeasure14 ?? this.strMeasure14,
        strMeasure15: strMeasure15 ?? this.strMeasure15,
        strMeasure16: strMeasure16 ?? this.strMeasure16,
        strMeasure17: strMeasure17 ?? this.strMeasure17,
        strMeasure18: strMeasure18 ?? this.strMeasure18,
        strMeasure19: strMeasure19 ?? this.strMeasure19,
        strMeasure20: strMeasure20 ?? this.strMeasure20,
        strSource: strSource ?? this.strSource,
        strImageSource: strImageSource ?? this.strImageSource,
        strCreativeCommonsConfirmed:
            strCreativeCommonsConfirmed ?? this.strCreativeCommonsConfirmed,
        dateModified: dateModified ?? this.dateModified,
      );
  @override
  String toString() {
    return (StringBuffer('FoodEntityData(')
          ..write('idMeal: $idMeal, ')
          ..write('strMeal: $strMeal, ')
          ..write('strDrinkAlternate: $strDrinkAlternate, ')
          ..write('strCategory: $strCategory, ')
          ..write('strArea: $strArea, ')
          ..write('strInstructions: $strInstructions, ')
          ..write('strMealThumb: $strMealThumb, ')
          ..write('strTags: $strTags, ')
          ..write('strYoutube: $strYoutube, ')
          ..write('strIngredient1: $strIngredient1, ')
          ..write('strIngredient2: $strIngredient2, ')
          ..write('strIngredient3: $strIngredient3, ')
          ..write('strIngredient4: $strIngredient4, ')
          ..write('strIngredient5: $strIngredient5, ')
          ..write('strIngredient6: $strIngredient6, ')
          ..write('strIngredient7: $strIngredient7, ')
          ..write('strIngredient8: $strIngredient8, ')
          ..write('strIngredient9: $strIngredient9, ')
          ..write('strIngredient10: $strIngredient10, ')
          ..write('strIngredient11: $strIngredient11, ')
          ..write('strIngredient12: $strIngredient12, ')
          ..write('strIngredient13: $strIngredient13, ')
          ..write('strIngredient14: $strIngredient14, ')
          ..write('strIngredient15: $strIngredient15, ')
          ..write('strIngredient16: $strIngredient16, ')
          ..write('strIngredient17: $strIngredient17, ')
          ..write('strIngredient18: $strIngredient18, ')
          ..write('strIngredient19: $strIngredient19, ')
          ..write('strIngredient20: $strIngredient20, ')
          ..write('strMeasure1: $strMeasure1, ')
          ..write('strMeasure2: $strMeasure2, ')
          ..write('strMeasure3: $strMeasure3, ')
          ..write('strMeasure4: $strMeasure4, ')
          ..write('strMeasure5: $strMeasure5, ')
          ..write('strMeasure6: $strMeasure6, ')
          ..write('strMeasure7: $strMeasure7, ')
          ..write('strMeasure8: $strMeasure8, ')
          ..write('strMeasure9: $strMeasure9, ')
          ..write('strMeasure10: $strMeasure10, ')
          ..write('strMeasure11: $strMeasure11, ')
          ..write('strMeasure12: $strMeasure12, ')
          ..write('strMeasure13: $strMeasure13, ')
          ..write('strMeasure14: $strMeasure14, ')
          ..write('strMeasure15: $strMeasure15, ')
          ..write('strMeasure16: $strMeasure16, ')
          ..write('strMeasure17: $strMeasure17, ')
          ..write('strMeasure18: $strMeasure18, ')
          ..write('strMeasure19: $strMeasure19, ')
          ..write('strMeasure20: $strMeasure20, ')
          ..write('strSource: $strSource, ')
          ..write('strImageSource: $strImageSource, ')
          ..write('strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, ')
          ..write('dateModified: $dateModified')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        idMeal,
        strMeal,
        strDrinkAlternate,
        strCategory,
        strArea,
        strInstructions,
        strMealThumb,
        strTags,
        strYoutube,
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strIngredient5,
        strIngredient6,
        strIngredient7,
        strIngredient8,
        strIngredient9,
        strIngredient10,
        strIngredient11,
        strIngredient12,
        strIngredient13,
        strIngredient14,
        strIngredient15,
        strIngredient16,
        strIngredient17,
        strIngredient18,
        strIngredient19,
        strIngredient20,
        strMeasure1,
        strMeasure2,
        strMeasure3,
        strMeasure4,
        strMeasure5,
        strMeasure6,
        strMeasure7,
        strMeasure8,
        strMeasure9,
        strMeasure10,
        strMeasure11,
        strMeasure12,
        strMeasure13,
        strMeasure14,
        strMeasure15,
        strMeasure16,
        strMeasure17,
        strMeasure18,
        strMeasure19,
        strMeasure20,
        strSource,
        strImageSource,
        strCreativeCommonsConfirmed,
        dateModified
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodEntityData &&
          other.idMeal == this.idMeal &&
          other.strMeal == this.strMeal &&
          other.strDrinkAlternate == this.strDrinkAlternate &&
          other.strCategory == this.strCategory &&
          other.strArea == this.strArea &&
          other.strInstructions == this.strInstructions &&
          other.strMealThumb == this.strMealThumb &&
          other.strTags == this.strTags &&
          other.strYoutube == this.strYoutube &&
          other.strIngredient1 == this.strIngredient1 &&
          other.strIngredient2 == this.strIngredient2 &&
          other.strIngredient3 == this.strIngredient3 &&
          other.strIngredient4 == this.strIngredient4 &&
          other.strIngredient5 == this.strIngredient5 &&
          other.strIngredient6 == this.strIngredient6 &&
          other.strIngredient7 == this.strIngredient7 &&
          other.strIngredient8 == this.strIngredient8 &&
          other.strIngredient9 == this.strIngredient9 &&
          other.strIngredient10 == this.strIngredient10 &&
          other.strIngredient11 == this.strIngredient11 &&
          other.strIngredient12 == this.strIngredient12 &&
          other.strIngredient13 == this.strIngredient13 &&
          other.strIngredient14 == this.strIngredient14 &&
          other.strIngredient15 == this.strIngredient15 &&
          other.strIngredient16 == this.strIngredient16 &&
          other.strIngredient17 == this.strIngredient17 &&
          other.strIngredient18 == this.strIngredient18 &&
          other.strIngredient19 == this.strIngredient19 &&
          other.strIngredient20 == this.strIngredient20 &&
          other.strMeasure1 == this.strMeasure1 &&
          other.strMeasure2 == this.strMeasure2 &&
          other.strMeasure3 == this.strMeasure3 &&
          other.strMeasure4 == this.strMeasure4 &&
          other.strMeasure5 == this.strMeasure5 &&
          other.strMeasure6 == this.strMeasure6 &&
          other.strMeasure7 == this.strMeasure7 &&
          other.strMeasure8 == this.strMeasure8 &&
          other.strMeasure9 == this.strMeasure9 &&
          other.strMeasure10 == this.strMeasure10 &&
          other.strMeasure11 == this.strMeasure11 &&
          other.strMeasure12 == this.strMeasure12 &&
          other.strMeasure13 == this.strMeasure13 &&
          other.strMeasure14 == this.strMeasure14 &&
          other.strMeasure15 == this.strMeasure15 &&
          other.strMeasure16 == this.strMeasure16 &&
          other.strMeasure17 == this.strMeasure17 &&
          other.strMeasure18 == this.strMeasure18 &&
          other.strMeasure19 == this.strMeasure19 &&
          other.strMeasure20 == this.strMeasure20 &&
          other.strSource == this.strSource &&
          other.strImageSource == this.strImageSource &&
          other.strCreativeCommonsConfirmed ==
              this.strCreativeCommonsConfirmed &&
          other.dateModified == this.dateModified);
}

class FoodEntityCompanion extends UpdateCompanion<FoodEntityData> {
  final Value<String> idMeal;
  final Value<String> strMeal;
  final Value<String?> strDrinkAlternate;
  final Value<String> strCategory;
  final Value<String> strArea;
  final Value<String> strInstructions;
  final Value<String> strMealThumb;
  final Value<String> strTags;
  final Value<String> strYoutube;
  final Value<String> strIngredient1;
  final Value<String> strIngredient2;
  final Value<String> strIngredient3;
  final Value<String> strIngredient4;
  final Value<String> strIngredient5;
  final Value<String> strIngredient6;
  final Value<String> strIngredient7;
  final Value<String> strIngredient8;
  final Value<String> strIngredient9;
  final Value<String> strIngredient10;
  final Value<String> strIngredient11;
  final Value<String> strIngredient12;
  final Value<String> strIngredient13;
  final Value<String> strIngredient14;
  final Value<String> strIngredient15;
  final Value<String> strIngredient16;
  final Value<String> strIngredient17;
  final Value<String> strIngredient18;
  final Value<String> strIngredient19;
  final Value<String> strIngredient20;
  final Value<String> strMeasure1;
  final Value<String> strMeasure2;
  final Value<String> strMeasure3;
  final Value<String> strMeasure4;
  final Value<String> strMeasure5;
  final Value<String> strMeasure6;
  final Value<String> strMeasure7;
  final Value<String> strMeasure8;
  final Value<String> strMeasure9;
  final Value<String> strMeasure10;
  final Value<String> strMeasure11;
  final Value<String> strMeasure12;
  final Value<String> strMeasure13;
  final Value<String> strMeasure14;
  final Value<String> strMeasure15;
  final Value<String> strMeasure16;
  final Value<String> strMeasure17;
  final Value<String> strMeasure18;
  final Value<String> strMeasure19;
  final Value<String> strMeasure20;
  final Value<String> strSource;
  final Value<String> strImageSource;
  final Value<String> strCreativeCommonsConfirmed;
  final Value<String> dateModified;
  final Value<int> rowid;
  const FoodEntityCompanion({
    this.idMeal = const Value.absent(),
    this.strMeal = const Value.absent(),
    this.strDrinkAlternate = const Value.absent(),
    this.strCategory = const Value.absent(),
    this.strArea = const Value.absent(),
    this.strInstructions = const Value.absent(),
    this.strMealThumb = const Value.absent(),
    this.strTags = const Value.absent(),
    this.strYoutube = const Value.absent(),
    this.strIngredient1 = const Value.absent(),
    this.strIngredient2 = const Value.absent(),
    this.strIngredient3 = const Value.absent(),
    this.strIngredient4 = const Value.absent(),
    this.strIngredient5 = const Value.absent(),
    this.strIngredient6 = const Value.absent(),
    this.strIngredient7 = const Value.absent(),
    this.strIngredient8 = const Value.absent(),
    this.strIngredient9 = const Value.absent(),
    this.strIngredient10 = const Value.absent(),
    this.strIngredient11 = const Value.absent(),
    this.strIngredient12 = const Value.absent(),
    this.strIngredient13 = const Value.absent(),
    this.strIngredient14 = const Value.absent(),
    this.strIngredient15 = const Value.absent(),
    this.strIngredient16 = const Value.absent(),
    this.strIngredient17 = const Value.absent(),
    this.strIngredient18 = const Value.absent(),
    this.strIngredient19 = const Value.absent(),
    this.strIngredient20 = const Value.absent(),
    this.strMeasure1 = const Value.absent(),
    this.strMeasure2 = const Value.absent(),
    this.strMeasure3 = const Value.absent(),
    this.strMeasure4 = const Value.absent(),
    this.strMeasure5 = const Value.absent(),
    this.strMeasure6 = const Value.absent(),
    this.strMeasure7 = const Value.absent(),
    this.strMeasure8 = const Value.absent(),
    this.strMeasure9 = const Value.absent(),
    this.strMeasure10 = const Value.absent(),
    this.strMeasure11 = const Value.absent(),
    this.strMeasure12 = const Value.absent(),
    this.strMeasure13 = const Value.absent(),
    this.strMeasure14 = const Value.absent(),
    this.strMeasure15 = const Value.absent(),
    this.strMeasure16 = const Value.absent(),
    this.strMeasure17 = const Value.absent(),
    this.strMeasure18 = const Value.absent(),
    this.strMeasure19 = const Value.absent(),
    this.strMeasure20 = const Value.absent(),
    this.strSource = const Value.absent(),
    this.strImageSource = const Value.absent(),
    this.strCreativeCommonsConfirmed = const Value.absent(),
    this.dateModified = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FoodEntityCompanion.insert({
    required String idMeal,
    required String strMeal,
    this.strDrinkAlternate = const Value.absent(),
    required String strCategory,
    required String strArea,
    required String strInstructions,
    required String strMealThumb,
    required String strTags,
    required String strYoutube,
    required String strIngredient1,
    required String strIngredient2,
    required String strIngredient3,
    required String strIngredient4,
    required String strIngredient5,
    required String strIngredient6,
    required String strIngredient7,
    required String strIngredient8,
    required String strIngredient9,
    required String strIngredient10,
    required String strIngredient11,
    required String strIngredient12,
    required String strIngredient13,
    required String strIngredient14,
    required String strIngredient15,
    required String strIngredient16,
    required String strIngredient17,
    required String strIngredient18,
    required String strIngredient19,
    required String strIngredient20,
    required String strMeasure1,
    required String strMeasure2,
    required String strMeasure3,
    required String strMeasure4,
    required String strMeasure5,
    required String strMeasure6,
    required String strMeasure7,
    required String strMeasure8,
    required String strMeasure9,
    required String strMeasure10,
    required String strMeasure11,
    required String strMeasure12,
    required String strMeasure13,
    required String strMeasure14,
    required String strMeasure15,
    required String strMeasure16,
    required String strMeasure17,
    required String strMeasure18,
    required String strMeasure19,
    required String strMeasure20,
    required String strSource,
    required String strImageSource,
    required String strCreativeCommonsConfirmed,
    required String dateModified,
    this.rowid = const Value.absent(),
  })  : idMeal = Value(idMeal),
        strMeal = Value(strMeal),
        strCategory = Value(strCategory),
        strArea = Value(strArea),
        strInstructions = Value(strInstructions),
        strMealThumb = Value(strMealThumb),
        strTags = Value(strTags),
        strYoutube = Value(strYoutube),
        strIngredient1 = Value(strIngredient1),
        strIngredient2 = Value(strIngredient2),
        strIngredient3 = Value(strIngredient3),
        strIngredient4 = Value(strIngredient4),
        strIngredient5 = Value(strIngredient5),
        strIngredient6 = Value(strIngredient6),
        strIngredient7 = Value(strIngredient7),
        strIngredient8 = Value(strIngredient8),
        strIngredient9 = Value(strIngredient9),
        strIngredient10 = Value(strIngredient10),
        strIngredient11 = Value(strIngredient11),
        strIngredient12 = Value(strIngredient12),
        strIngredient13 = Value(strIngredient13),
        strIngredient14 = Value(strIngredient14),
        strIngredient15 = Value(strIngredient15),
        strIngredient16 = Value(strIngredient16),
        strIngredient17 = Value(strIngredient17),
        strIngredient18 = Value(strIngredient18),
        strIngredient19 = Value(strIngredient19),
        strIngredient20 = Value(strIngredient20),
        strMeasure1 = Value(strMeasure1),
        strMeasure2 = Value(strMeasure2),
        strMeasure3 = Value(strMeasure3),
        strMeasure4 = Value(strMeasure4),
        strMeasure5 = Value(strMeasure5),
        strMeasure6 = Value(strMeasure6),
        strMeasure7 = Value(strMeasure7),
        strMeasure8 = Value(strMeasure8),
        strMeasure9 = Value(strMeasure9),
        strMeasure10 = Value(strMeasure10),
        strMeasure11 = Value(strMeasure11),
        strMeasure12 = Value(strMeasure12),
        strMeasure13 = Value(strMeasure13),
        strMeasure14 = Value(strMeasure14),
        strMeasure15 = Value(strMeasure15),
        strMeasure16 = Value(strMeasure16),
        strMeasure17 = Value(strMeasure17),
        strMeasure18 = Value(strMeasure18),
        strMeasure19 = Value(strMeasure19),
        strMeasure20 = Value(strMeasure20),
        strSource = Value(strSource),
        strImageSource = Value(strImageSource),
        strCreativeCommonsConfirmed = Value(strCreativeCommonsConfirmed),
        dateModified = Value(dateModified);
  static Insertable<FoodEntityData> custom({
    Expression<String>? idMeal,
    Expression<String>? strMeal,
    Expression<String>? strDrinkAlternate,
    Expression<String>? strCategory,
    Expression<String>? strArea,
    Expression<String>? strInstructions,
    Expression<String>? strMealThumb,
    Expression<String>? strTags,
    Expression<String>? strYoutube,
    Expression<String>? strIngredient1,
    Expression<String>? strIngredient2,
    Expression<String>? strIngredient3,
    Expression<String>? strIngredient4,
    Expression<String>? strIngredient5,
    Expression<String>? strIngredient6,
    Expression<String>? strIngredient7,
    Expression<String>? strIngredient8,
    Expression<String>? strIngredient9,
    Expression<String>? strIngredient10,
    Expression<String>? strIngredient11,
    Expression<String>? strIngredient12,
    Expression<String>? strIngredient13,
    Expression<String>? strIngredient14,
    Expression<String>? strIngredient15,
    Expression<String>? strIngredient16,
    Expression<String>? strIngredient17,
    Expression<String>? strIngredient18,
    Expression<String>? strIngredient19,
    Expression<String>? strIngredient20,
    Expression<String>? strMeasure1,
    Expression<String>? strMeasure2,
    Expression<String>? strMeasure3,
    Expression<String>? strMeasure4,
    Expression<String>? strMeasure5,
    Expression<String>? strMeasure6,
    Expression<String>? strMeasure7,
    Expression<String>? strMeasure8,
    Expression<String>? strMeasure9,
    Expression<String>? strMeasure10,
    Expression<String>? strMeasure11,
    Expression<String>? strMeasure12,
    Expression<String>? strMeasure13,
    Expression<String>? strMeasure14,
    Expression<String>? strMeasure15,
    Expression<String>? strMeasure16,
    Expression<String>? strMeasure17,
    Expression<String>? strMeasure18,
    Expression<String>? strMeasure19,
    Expression<String>? strMeasure20,
    Expression<String>? strSource,
    Expression<String>? strImageSource,
    Expression<String>? strCreativeCommonsConfirmed,
    Expression<String>? dateModified,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idMeal != null) 'id_meal': idMeal,
      if (strMeal != null) 'str_meal': strMeal,
      if (strDrinkAlternate != null) 'str_drink_alternate': strDrinkAlternate,
      if (strCategory != null) 'str_category': strCategory,
      if (strArea != null) 'str_area': strArea,
      if (strInstructions != null) 'str_instructions': strInstructions,
      if (strMealThumb != null) 'str_meal_thumb': strMealThumb,
      if (strTags != null) 'str_tags': strTags,
      if (strYoutube != null) 'str_youtube': strYoutube,
      if (strIngredient1 != null) 'str_ingredient1': strIngredient1,
      if (strIngredient2 != null) 'str_ingredient2': strIngredient2,
      if (strIngredient3 != null) 'str_ingredient3': strIngredient3,
      if (strIngredient4 != null) 'str_ingredient4': strIngredient4,
      if (strIngredient5 != null) 'str_ingredient5': strIngredient5,
      if (strIngredient6 != null) 'str_ingredient6': strIngredient6,
      if (strIngredient7 != null) 'str_ingredient7': strIngredient7,
      if (strIngredient8 != null) 'str_ingredient8': strIngredient8,
      if (strIngredient9 != null) 'str_ingredient9': strIngredient9,
      if (strIngredient10 != null) 'str_ingredient10': strIngredient10,
      if (strIngredient11 != null) 'str_ingredient11': strIngredient11,
      if (strIngredient12 != null) 'str_ingredient12': strIngredient12,
      if (strIngredient13 != null) 'str_ingredient13': strIngredient13,
      if (strIngredient14 != null) 'str_ingredient14': strIngredient14,
      if (strIngredient15 != null) 'str_ingredient15': strIngredient15,
      if (strIngredient16 != null) 'str_ingredient16': strIngredient16,
      if (strIngredient17 != null) 'str_ingredient17': strIngredient17,
      if (strIngredient18 != null) 'str_ingredient18': strIngredient18,
      if (strIngredient19 != null) 'str_ingredient19': strIngredient19,
      if (strIngredient20 != null) 'str_ingredient20': strIngredient20,
      if (strMeasure1 != null) 'str_measure1': strMeasure1,
      if (strMeasure2 != null) 'str_measure2': strMeasure2,
      if (strMeasure3 != null) 'str_measure3': strMeasure3,
      if (strMeasure4 != null) 'str_measure4': strMeasure4,
      if (strMeasure5 != null) 'str_measure5': strMeasure5,
      if (strMeasure6 != null) 'str_measure6': strMeasure6,
      if (strMeasure7 != null) 'str_measure7': strMeasure7,
      if (strMeasure8 != null) 'str_measure8': strMeasure8,
      if (strMeasure9 != null) 'str_measure9': strMeasure9,
      if (strMeasure10 != null) 'str_measure10': strMeasure10,
      if (strMeasure11 != null) 'str_measure11': strMeasure11,
      if (strMeasure12 != null) 'str_measure12': strMeasure12,
      if (strMeasure13 != null) 'str_measure13': strMeasure13,
      if (strMeasure14 != null) 'str_measure14': strMeasure14,
      if (strMeasure15 != null) 'str_measure15': strMeasure15,
      if (strMeasure16 != null) 'str_measure16': strMeasure16,
      if (strMeasure17 != null) 'str_measure17': strMeasure17,
      if (strMeasure18 != null) 'str_measure18': strMeasure18,
      if (strMeasure19 != null) 'str_measure19': strMeasure19,
      if (strMeasure20 != null) 'str_measure20': strMeasure20,
      if (strSource != null) 'str_source': strSource,
      if (strImageSource != null) 'str_image_source': strImageSource,
      if (strCreativeCommonsConfirmed != null)
        'str_creative_commons_confirmed': strCreativeCommonsConfirmed,
      if (dateModified != null) 'date_modified': dateModified,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FoodEntityCompanion copyWith(
      {Value<String>? idMeal,
      Value<String>? strMeal,
      Value<String?>? strDrinkAlternate,
      Value<String>? strCategory,
      Value<String>? strArea,
      Value<String>? strInstructions,
      Value<String>? strMealThumb,
      Value<String>? strTags,
      Value<String>? strYoutube,
      Value<String>? strIngredient1,
      Value<String>? strIngredient2,
      Value<String>? strIngredient3,
      Value<String>? strIngredient4,
      Value<String>? strIngredient5,
      Value<String>? strIngredient6,
      Value<String>? strIngredient7,
      Value<String>? strIngredient8,
      Value<String>? strIngredient9,
      Value<String>? strIngredient10,
      Value<String>? strIngredient11,
      Value<String>? strIngredient12,
      Value<String>? strIngredient13,
      Value<String>? strIngredient14,
      Value<String>? strIngredient15,
      Value<String>? strIngredient16,
      Value<String>? strIngredient17,
      Value<String>? strIngredient18,
      Value<String>? strIngredient19,
      Value<String>? strIngredient20,
      Value<String>? strMeasure1,
      Value<String>? strMeasure2,
      Value<String>? strMeasure3,
      Value<String>? strMeasure4,
      Value<String>? strMeasure5,
      Value<String>? strMeasure6,
      Value<String>? strMeasure7,
      Value<String>? strMeasure8,
      Value<String>? strMeasure9,
      Value<String>? strMeasure10,
      Value<String>? strMeasure11,
      Value<String>? strMeasure12,
      Value<String>? strMeasure13,
      Value<String>? strMeasure14,
      Value<String>? strMeasure15,
      Value<String>? strMeasure16,
      Value<String>? strMeasure17,
      Value<String>? strMeasure18,
      Value<String>? strMeasure19,
      Value<String>? strMeasure20,
      Value<String>? strSource,
      Value<String>? strImageSource,
      Value<String>? strCreativeCommonsConfirmed,
      Value<String>? dateModified,
      Value<int>? rowid}) {
    return FoodEntityCompanion(
      idMeal: idMeal ?? this.idMeal,
      strMeal: strMeal ?? this.strMeal,
      strDrinkAlternate: strDrinkAlternate ?? this.strDrinkAlternate,
      strCategory: strCategory ?? this.strCategory,
      strArea: strArea ?? this.strArea,
      strInstructions: strInstructions ?? this.strInstructions,
      strMealThumb: strMealThumb ?? this.strMealThumb,
      strTags: strTags ?? this.strTags,
      strYoutube: strYoutube ?? this.strYoutube,
      strIngredient1: strIngredient1 ?? this.strIngredient1,
      strIngredient2: strIngredient2 ?? this.strIngredient2,
      strIngredient3: strIngredient3 ?? this.strIngredient3,
      strIngredient4: strIngredient4 ?? this.strIngredient4,
      strIngredient5: strIngredient5 ?? this.strIngredient5,
      strIngredient6: strIngredient6 ?? this.strIngredient6,
      strIngredient7: strIngredient7 ?? this.strIngredient7,
      strIngredient8: strIngredient8 ?? this.strIngredient8,
      strIngredient9: strIngredient9 ?? this.strIngredient9,
      strIngredient10: strIngredient10 ?? this.strIngredient10,
      strIngredient11: strIngredient11 ?? this.strIngredient11,
      strIngredient12: strIngredient12 ?? this.strIngredient12,
      strIngredient13: strIngredient13 ?? this.strIngredient13,
      strIngredient14: strIngredient14 ?? this.strIngredient14,
      strIngredient15: strIngredient15 ?? this.strIngredient15,
      strIngredient16: strIngredient16 ?? this.strIngredient16,
      strIngredient17: strIngredient17 ?? this.strIngredient17,
      strIngredient18: strIngredient18 ?? this.strIngredient18,
      strIngredient19: strIngredient19 ?? this.strIngredient19,
      strIngredient20: strIngredient20 ?? this.strIngredient20,
      strMeasure1: strMeasure1 ?? this.strMeasure1,
      strMeasure2: strMeasure2 ?? this.strMeasure2,
      strMeasure3: strMeasure3 ?? this.strMeasure3,
      strMeasure4: strMeasure4 ?? this.strMeasure4,
      strMeasure5: strMeasure5 ?? this.strMeasure5,
      strMeasure6: strMeasure6 ?? this.strMeasure6,
      strMeasure7: strMeasure7 ?? this.strMeasure7,
      strMeasure8: strMeasure8 ?? this.strMeasure8,
      strMeasure9: strMeasure9 ?? this.strMeasure9,
      strMeasure10: strMeasure10 ?? this.strMeasure10,
      strMeasure11: strMeasure11 ?? this.strMeasure11,
      strMeasure12: strMeasure12 ?? this.strMeasure12,
      strMeasure13: strMeasure13 ?? this.strMeasure13,
      strMeasure14: strMeasure14 ?? this.strMeasure14,
      strMeasure15: strMeasure15 ?? this.strMeasure15,
      strMeasure16: strMeasure16 ?? this.strMeasure16,
      strMeasure17: strMeasure17 ?? this.strMeasure17,
      strMeasure18: strMeasure18 ?? this.strMeasure18,
      strMeasure19: strMeasure19 ?? this.strMeasure19,
      strMeasure20: strMeasure20 ?? this.strMeasure20,
      strSource: strSource ?? this.strSource,
      strImageSource: strImageSource ?? this.strImageSource,
      strCreativeCommonsConfirmed:
          strCreativeCommonsConfirmed ?? this.strCreativeCommonsConfirmed,
      dateModified: dateModified ?? this.dateModified,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idMeal.present) {
      map['id_meal'] = Variable<String>(idMeal.value);
    }
    if (strMeal.present) {
      map['str_meal'] = Variable<String>(strMeal.value);
    }
    if (strDrinkAlternate.present) {
      map['str_drink_alternate'] = Variable<String>(strDrinkAlternate.value);
    }
    if (strCategory.present) {
      map['str_category'] = Variable<String>(strCategory.value);
    }
    if (strArea.present) {
      map['str_area'] = Variable<String>(strArea.value);
    }
    if (strInstructions.present) {
      map['str_instructions'] = Variable<String>(strInstructions.value);
    }
    if (strMealThumb.present) {
      map['str_meal_thumb'] = Variable<String>(strMealThumb.value);
    }
    if (strTags.present) {
      map['str_tags'] = Variable<String>(strTags.value);
    }
    if (strYoutube.present) {
      map['str_youtube'] = Variable<String>(strYoutube.value);
    }
    if (strIngredient1.present) {
      map['str_ingredient1'] = Variable<String>(strIngredient1.value);
    }
    if (strIngredient2.present) {
      map['str_ingredient2'] = Variable<String>(strIngredient2.value);
    }
    if (strIngredient3.present) {
      map['str_ingredient3'] = Variable<String>(strIngredient3.value);
    }
    if (strIngredient4.present) {
      map['str_ingredient4'] = Variable<String>(strIngredient4.value);
    }
    if (strIngredient5.present) {
      map['str_ingredient5'] = Variable<String>(strIngredient5.value);
    }
    if (strIngredient6.present) {
      map['str_ingredient6'] = Variable<String>(strIngredient6.value);
    }
    if (strIngredient7.present) {
      map['str_ingredient7'] = Variable<String>(strIngredient7.value);
    }
    if (strIngredient8.present) {
      map['str_ingredient8'] = Variable<String>(strIngredient8.value);
    }
    if (strIngredient9.present) {
      map['str_ingredient9'] = Variable<String>(strIngredient9.value);
    }
    if (strIngredient10.present) {
      map['str_ingredient10'] = Variable<String>(strIngredient10.value);
    }
    if (strIngredient11.present) {
      map['str_ingredient11'] = Variable<String>(strIngredient11.value);
    }
    if (strIngredient12.present) {
      map['str_ingredient12'] = Variable<String>(strIngredient12.value);
    }
    if (strIngredient13.present) {
      map['str_ingredient13'] = Variable<String>(strIngredient13.value);
    }
    if (strIngredient14.present) {
      map['str_ingredient14'] = Variable<String>(strIngredient14.value);
    }
    if (strIngredient15.present) {
      map['str_ingredient15'] = Variable<String>(strIngredient15.value);
    }
    if (strIngredient16.present) {
      map['str_ingredient16'] = Variable<String>(strIngredient16.value);
    }
    if (strIngredient17.present) {
      map['str_ingredient17'] = Variable<String>(strIngredient17.value);
    }
    if (strIngredient18.present) {
      map['str_ingredient18'] = Variable<String>(strIngredient18.value);
    }
    if (strIngredient19.present) {
      map['str_ingredient19'] = Variable<String>(strIngredient19.value);
    }
    if (strIngredient20.present) {
      map['str_ingredient20'] = Variable<String>(strIngredient20.value);
    }
    if (strMeasure1.present) {
      map['str_measure1'] = Variable<String>(strMeasure1.value);
    }
    if (strMeasure2.present) {
      map['str_measure2'] = Variable<String>(strMeasure2.value);
    }
    if (strMeasure3.present) {
      map['str_measure3'] = Variable<String>(strMeasure3.value);
    }
    if (strMeasure4.present) {
      map['str_measure4'] = Variable<String>(strMeasure4.value);
    }
    if (strMeasure5.present) {
      map['str_measure5'] = Variable<String>(strMeasure5.value);
    }
    if (strMeasure6.present) {
      map['str_measure6'] = Variable<String>(strMeasure6.value);
    }
    if (strMeasure7.present) {
      map['str_measure7'] = Variable<String>(strMeasure7.value);
    }
    if (strMeasure8.present) {
      map['str_measure8'] = Variable<String>(strMeasure8.value);
    }
    if (strMeasure9.present) {
      map['str_measure9'] = Variable<String>(strMeasure9.value);
    }
    if (strMeasure10.present) {
      map['str_measure10'] = Variable<String>(strMeasure10.value);
    }
    if (strMeasure11.present) {
      map['str_measure11'] = Variable<String>(strMeasure11.value);
    }
    if (strMeasure12.present) {
      map['str_measure12'] = Variable<String>(strMeasure12.value);
    }
    if (strMeasure13.present) {
      map['str_measure13'] = Variable<String>(strMeasure13.value);
    }
    if (strMeasure14.present) {
      map['str_measure14'] = Variable<String>(strMeasure14.value);
    }
    if (strMeasure15.present) {
      map['str_measure15'] = Variable<String>(strMeasure15.value);
    }
    if (strMeasure16.present) {
      map['str_measure16'] = Variable<String>(strMeasure16.value);
    }
    if (strMeasure17.present) {
      map['str_measure17'] = Variable<String>(strMeasure17.value);
    }
    if (strMeasure18.present) {
      map['str_measure18'] = Variable<String>(strMeasure18.value);
    }
    if (strMeasure19.present) {
      map['str_measure19'] = Variable<String>(strMeasure19.value);
    }
    if (strMeasure20.present) {
      map['str_measure20'] = Variable<String>(strMeasure20.value);
    }
    if (strSource.present) {
      map['str_source'] = Variable<String>(strSource.value);
    }
    if (strImageSource.present) {
      map['str_image_source'] = Variable<String>(strImageSource.value);
    }
    if (strCreativeCommonsConfirmed.present) {
      map['str_creative_commons_confirmed'] =
          Variable<String>(strCreativeCommonsConfirmed.value);
    }
    if (dateModified.present) {
      map['date_modified'] = Variable<String>(dateModified.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodEntityCompanion(')
          ..write('idMeal: $idMeal, ')
          ..write('strMeal: $strMeal, ')
          ..write('strDrinkAlternate: $strDrinkAlternate, ')
          ..write('strCategory: $strCategory, ')
          ..write('strArea: $strArea, ')
          ..write('strInstructions: $strInstructions, ')
          ..write('strMealThumb: $strMealThumb, ')
          ..write('strTags: $strTags, ')
          ..write('strYoutube: $strYoutube, ')
          ..write('strIngredient1: $strIngredient1, ')
          ..write('strIngredient2: $strIngredient2, ')
          ..write('strIngredient3: $strIngredient3, ')
          ..write('strIngredient4: $strIngredient4, ')
          ..write('strIngredient5: $strIngredient5, ')
          ..write('strIngredient6: $strIngredient6, ')
          ..write('strIngredient7: $strIngredient7, ')
          ..write('strIngredient8: $strIngredient8, ')
          ..write('strIngredient9: $strIngredient9, ')
          ..write('strIngredient10: $strIngredient10, ')
          ..write('strIngredient11: $strIngredient11, ')
          ..write('strIngredient12: $strIngredient12, ')
          ..write('strIngredient13: $strIngredient13, ')
          ..write('strIngredient14: $strIngredient14, ')
          ..write('strIngredient15: $strIngredient15, ')
          ..write('strIngredient16: $strIngredient16, ')
          ..write('strIngredient17: $strIngredient17, ')
          ..write('strIngredient18: $strIngredient18, ')
          ..write('strIngredient19: $strIngredient19, ')
          ..write('strIngredient20: $strIngredient20, ')
          ..write('strMeasure1: $strMeasure1, ')
          ..write('strMeasure2: $strMeasure2, ')
          ..write('strMeasure3: $strMeasure3, ')
          ..write('strMeasure4: $strMeasure4, ')
          ..write('strMeasure5: $strMeasure5, ')
          ..write('strMeasure6: $strMeasure6, ')
          ..write('strMeasure7: $strMeasure7, ')
          ..write('strMeasure8: $strMeasure8, ')
          ..write('strMeasure9: $strMeasure9, ')
          ..write('strMeasure10: $strMeasure10, ')
          ..write('strMeasure11: $strMeasure11, ')
          ..write('strMeasure12: $strMeasure12, ')
          ..write('strMeasure13: $strMeasure13, ')
          ..write('strMeasure14: $strMeasure14, ')
          ..write('strMeasure15: $strMeasure15, ')
          ..write('strMeasure16: $strMeasure16, ')
          ..write('strMeasure17: $strMeasure17, ')
          ..write('strMeasure18: $strMeasure18, ')
          ..write('strMeasure19: $strMeasure19, ')
          ..write('strMeasure20: $strMeasure20, ')
          ..write('strSource: $strSource, ')
          ..write('strImageSource: $strImageSource, ')
          ..write('strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, ')
          ..write('dateModified: $dateModified, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final $FoodEntityTable foodEntity = $FoodEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [foodEntity];
}
