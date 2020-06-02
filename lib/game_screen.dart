import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'model.dart';
import 'data.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

final assetsAudioPlayer = AssetsAudioPlayer();
int moves = 0;
bool showSpinner = false;

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<CardPrivate> tempPairs = new List<CardPrivate>();

  @override
  void initState() {
    moves = 0;
    tempPairs = getPairs();
    tempPairs.shuffle();
    visiblePairs = tempPairs;
    selected = true;
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        visiblePairs = getQuestion();
        selected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Moves: $moves",
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    color: Colors.white,
                    fontSize: 40.0,
                  ),
                ),
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 110,
                  mainAxisSpacing: 5.0,
                ),
                children: List.generate(visiblePairs.length, (index) {
                  return GameCard(
                    imageAssetPath: visiblePairs[index].getImageAssetPath(),
                    selected: visiblePairs[index].getSelected(),
                    titleIndex: index,
                    parent: this,
                  );
                }),
              ),
              SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GameCard extends StatefulWidget {
  final String imageAssetPath;
  final bool selected;
  final int titleIndex;
  _GameScreenState parent;

  GameCard({this.imageAssetPath, this.selected, this.titleIndex, this.parent});

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          if (selectedImageAssetPath != "") {
            if (selectedImageAssetPath ==
                pairs[widget.titleIndex].getImageAssetPath()) {
              setState(() {
                moves++;
              });
              print("Correct");
              assetsAudioPlayer.open(
                Audio("assets/applause.mp3"),
              );
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {});
                widget.parent.setState(() {
                  pairs[widget.titleIndex].setImageAssetPath("");
                  pairs[selectedTileIndex].setImageAssetPath("");
                });
                selectedImageAssetPath = "";
              });
            } else {
              print("Wrong");
              assetsAudioPlayer.open(
                Audio("assets/slap.mp3"),
              );
              Future.delayed(const Duration(seconds: 2), () {
                widget.parent.setState(() {
                  pairs[widget.titleIndex].setSelected(false);
                  pairs[selectedTileIndex].setSelected(false);
                });

                selectedImageAssetPath = "";
              });
            }
          } else {
            selectedTileIndex = widget.titleIndex;
            selectedImageAssetPath =
                pairs[widget.titleIndex].getImageAssetPath();
          }
          setState(() {
            pairs[widget.titleIndex].setSelected(true);
          });
        }
      },
      child: Container(
        child: pairs[widget.titleIndex].getImageAssetPath() == ""
            ? Image.asset("images/correct.png")
            : Image.asset(
                pairs[widget.titleIndex].getSelected()
                    ? pairs[widget.titleIndex].getImageAssetPath()
                    : widget.imageAssetPath,
              ),
        margin: EdgeInsets.all(5.0),
      ),
    );
  }
}
