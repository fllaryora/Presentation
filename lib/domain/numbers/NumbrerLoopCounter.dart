class NumbrerLoopCounter {

  //un numero tiene un bucle cuando
  //lo dibujas y tiene un circulo cerrado
  // 1,2,3,4, 5,7 no
  //6,9,0  Si 1
  //8 , si 2
  int getLoopAmount(int base) {
    List<int> oneLoop = [6,9,0].map((int e) => e.toString())
                        .map((String e) => e.codeUnits)
                        .expand((element) => element).toList();

    int twoLoops = 8.toString().codeUnits.first;
    //zero loops 1,2,3,4,5,7
    print("oneLoop $oneLoop == ${oneLoop.map(String.fromCharCode).toList()}");
    print("twoLoops $twoLoops == ${String.fromCharCode(twoLoops)}");
    return base.toString().codeUnits.fold(0, (previousValue, currentCharacter) {
      print("$currentCharacter == ${String.fromCharCode(currentCharacter)}");
      int addition = 0;
      if (currentCharacter == twoLoops){
        addition = 2;
      } else {
        if(oneLoop.contains(currentCharacter)){
          addition = 1;
        }
        //else addition = 0;
      }
      return previousValue + addition;
    });
  }

}