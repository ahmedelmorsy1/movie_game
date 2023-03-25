// import '../barallel_file.dart';

// class CharProvider with ChangeNotifier {
  

//   List<dynamic> get items {
//     return words;
//   }


//   change(index,ind) {
//     if(displayText == movies[index][ind]){
//     words[index][ind] = displayText;
//     notifyListeners();
//     }
//   }
//   }

// final List<dynamic> words = ["","","","","","","","",""];
// var array =[[]];
// final List<List<dynamic>> words2D = [   [""],[""],[""],[""],[""],[""],[""],[""],[""] ];
// final List<String> images = ["-","-","-","-","-","-","-","-","-",];
// final List<List<String>> movies2D = [
//   ["a", "v", "e", "n", "g", "e", "r", "s"],
//   ["t", "w", "i", "l", "i", "g", "h", "t"],
//   ["t", "h", "e", " ", "m", "a", "z", "e", " ", "r", "u", "n", "n", "e", "r"],
//   ["-","-","-","-",],
//   ["a", "v", "e", "n", "g", "e", "r", "s"],
//   ["t", "w", "i", "l", "i", "g", "h", "t"],
//   ["t", "h", "e", " ", "m", "a", "z", "e", " ", "r", "u", "n", "n", "e", "r"],];

 // var a = movies2D.toString().replaceAll('[', '').replaceAll(']', '\n').replaceAll(',', ' ');

// const cols = 20;
// const rows = 9;
// final arr2D = List.generate(rows + 1, (i) => List.filled(cols + 1, '-', growable: false), growable: false);

// SizedBox(height: 200,width: 200,
//                   child: ListView.builder(
//                       itemBuilder: (BuildContext context, int index) {
//                         var a= movies2D[index].toString().replaceAll('[', '')
//                           .replaceAll(']','\n').replaceAll(',', '').replaceAll('  ', ' /').replaceAll(regex, '_');
//                            var b = a.split('').forEach((element)  
//                            {
//                             if(element !=''){              
//                             }});
//                     return Center(
//                         child: Text(a,
//                       style: const TextStyle(fontSize: 20),
//                     ));}),),


//methods

// methods(){
// final List<dynamic> parts = movies;
//   for(int i =0 ;i<parts.length;i++){
//     parts[i].split('').forEach((ch) {
//       if(ch == ' '){
//       ch = '/';
//       words[i] += ch;}
//       else {
//       ch = '-';
//       words[i] += ch;}  
//     });
// }
// }


// methods2D(){
// final List<dynamic> parts2D = movies2D;
//   for(int i =0 ;i<parts2D.length;i++){
//     for(int j =0 ;j<parts2D[i].length;j++){
//     parts2D[i].forEach((ch) {
//       if(ch == ' '){
//       ch = '/';
//       words2D[i][j] += ch;
//       }
//       else {
//       ch = '-';
//       words2D[i][j] += ch;
//       }
//     });
// }
//   }
//   }
  // void changeChar() {
  //   setState(() {
  //     displayText = ctrl.text.toLowerCase();
  //     for(int i =0 ;i<movies.length;i++){
  //       var temp= movies[i];
  //       // // for(int j = 0 ;j<temp.length;j++){
  //         var t = temp.split('');
  //         for(int k = 0 ;k<t.length;k++){
  //             if(t[k] == displayText){
  //               debugPrint(t[k]);
  //               words[i][k] = movies[i][k];
              
  //         }
        //   temp.split('').forEach((element) { 
        //   if(temp[j] == displayText){
        //       words[i][j] = displayText;
          // }
        // }
        // });
    //   movies[i].split('').forEach((ch) {
    //     if(ch == displayText){
    //     } });
  //       }}});
  // }

/*void changeChar2D() {
    setState(() {
      displayText = ctrl.text.toLowerCase();
      for(int i =0 ;i<movies2D.length;i++){
        for(int j =0 ;j<movies2D[i].length;j++){
 
              if(movies2D[i][j] == displayText){
                // setState(() {words2D[i][j] = movies2D[i][j];});
                // debugPrint(words2D[i][j]);
              
          }
    
        }}});
  } */

  // methods2DGen(){
// const cols = 15;
// final rows = movies2D.length;
// final arr2D = List.generate(rows + 1, (i) => 
// List.filled(cols + 1, '@', growable: false), growable: false);
//    array = List.from(arr2D);
//      for(int i =0 ;i<movies2D.length;i++){
//     for(int j =0 ;j<movies2D[i].length;j++){
//     if(movies2D[i][j] == "  "){
//       array[i][j] = "/";
//     }else if(movies2D[i][j] == '-'){
//      array[i][j] = "";
//     }
//       else{
//       array[i][j] =movies2D[i][j];
// }}       
//      }
//      for(int i =0 ;i<array.length;i++){
//     for(int j =0 ;j<array[i].length;j++){
//     if(array[i][j] == '@'){
//       array[i][j] = "";
//     }       
//      }
// }
// }


// String replaceCharAt(String oldString, int index, String newChar) {
//   return oldString.substring(0, index) + newChar + oldString.substring(index + 1);
//   // final replaced = myString.replaceFirst(RegExp('e'), '*', startIndex);  // hello h*llo

// }