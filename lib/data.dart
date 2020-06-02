import 'model.dart';

bool selected = false;
int selectedTileIndex;
String selectedImageAssetPath = "";

List<CardPrivate> pairs = new List();
List<CardPrivate> visiblePairs = new List<CardPrivate>();

List<CardPrivate> getPairs() {
  //1
  CardPrivate cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/fox.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //2
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/hippo.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //3
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/horse.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //4
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/monkey.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //5
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/panda.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //6
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/parrot.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //7
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/rabbit.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //8
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/zoo.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  return pairs;
}

List<CardPrivate> getQuestion() {
  List<CardPrivate> pairs = new List();

  //1
  CardPrivate cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/question.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //2
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/question.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //3
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/question.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //4
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/question.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //5
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/question.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //6
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/question.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //7
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/question.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  //8
  cardPrivate = new CardPrivate();
  cardPrivate.setImageAssetPath('images/question.png');
  cardPrivate.setSelected(false);
  pairs.add(cardPrivate);
  pairs.add(cardPrivate);

  return pairs;
}
