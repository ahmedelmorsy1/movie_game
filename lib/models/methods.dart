import 'package:movie_game/barallel_file.dart';

  Future<dynamic> timer(int sec) => Future.delayed( Duration(seconds: sec));

  void navigateTo(context, widget) =>Navigator.pushReplacement(context, MaterialPageRoute(
  builder: (context) => widget));
  void navigatePop(context, widget) =>Navigator.push(context, MaterialPageRoute(
  builder: (context) => widget));

  SliverGridDelegateWithFixedCrossAxisCount gridDel() {
    return const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,crossAxisSpacing: 1.0,mainAxisSpacing: 1.0);
  }

Container count100(int i, int index,BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width/5,
            height: MediaQuery.of(context).size.height/10,
            decoration: boxDecor.copyWith(color: (cnt+1)<=(i+(index*5))?
            Colors.transparent:const Color.fromARGB(255, 163, 236, 163),), 
            child: Center(child: TextButton(
              onPressed: (){ 
                // cnt++;
              },
                child: Text((i+(index*5)).toString(),
                //style: TextStyle(color: (cnt+1)<=(i+(index*5))?Colors.black:Colors.white,),
                ))));
  }

  addIntT() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt('intValue', cnt);
}

getIntValues() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return int
  int? intValue = prefs.getInt('intValue');
  return intValue;
}