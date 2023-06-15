

class MatchAmounts {

 int getMatchAmounts(String phase, String word) {
   String _phrase = phase.toLowerCase();
   String _word = word.toLowerCase();
   int index = 0;
   int amount = 0;
   int newIndex = 0;
   do{
      newIndex = _phrase.indexOf(_word, index);
      index = newIndex + _word.length;
      if(newIndex >= 0) {
        amount++;
      }
   } while(newIndex >= 0 && index < _phrase.length);
   return amount;
 }

 String getCensoredString(String phrase, String searchedWord, String messageError, String censoredTag) {

    if(phrase.isEmpty || searchedWord.isEmpty){
      return messageError;
    }
   return phrase.replaceAll(searchedWord, censoredTag);
 }
}