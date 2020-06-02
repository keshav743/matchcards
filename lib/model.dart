class CardPrivate {
  String imageAssetPath;
  bool selected;

  CardPrivate({this.imageAssetPath, this.selected});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setSelected(bool getSelected) {
    selected = getSelected;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  bool getSelected() {
    return selected;
  }
}
