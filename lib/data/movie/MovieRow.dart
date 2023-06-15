

class MovieRow {
  String title;
  String director;
  bool isSeen;
  MovieRow(this.title, this.director,
      this.isSeen);

  @override
  bool operator ==(Object other) {
    if(  other is MovieRow &&
        other.runtimeType == runtimeType &&
        other.title == title &&
        other.director == director &&
        other.isSeen == isSeen) {
      return true;
    }
    return false;
  }

  @override
  int get hashCode {
    int hash = Object.hash(title, director, isSeen);
    return hash;
  }
}