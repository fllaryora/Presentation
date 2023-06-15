class Substrings{
  List<String> getSubStringsFrom(String base) {
    List<String> result = [];
    if(base.isNotEmpty) {
      for(int windowsSize = 1 ; windowsSize <= base.length; windowsSize++) {
        for(int windowsPosition = 0 ; (windowsPosition + windowsSize) <= base.length; windowsPosition++) {
          result.add(base.substring(windowsPosition ,windowsPosition + windowsSize));
        }
      }
    }
    return result;
  }
}