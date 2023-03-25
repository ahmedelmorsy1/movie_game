import 'package:flutter/scheduler.dart';
import 'package:movie_game/barallel_file.dart';

class LevelController extends ChangeNotifier {
  var x="";
  var a = "";
  int s = 0;
  void getText() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
    a = movies[cnt].toString().replaceAll(' ', ' /').replaceAll(regex, '-');
    images = List.filled(9, '-', growable: false);
    x="";
    s=0;
    notifyListeners();});
  }

  String get tex => a;
  void showText() {
    displayText = ctrl.text.toLowerCase();
    notifyListeners();
  }

  void changeChar2D(BuildContext context) {
    if(!movies[cnt].contains(displayText)&&!x.contains(displayText)){
        images[s] = displayText;
        s++;
        x +=displayText;
        if(s==9){
          showDlg(context, const LevelScreen(),"احلي مسا عليك يا لوزر",
          cnt,Image.asset('img.jpg'),const Icon(Icons.restart_alt));
        }
      }
    for (int i = 0; i < movies[cnt].length; i++) {
      if (displayText == movies[cnt][i]&&!x.contains(displayText)) {
        debugPrint(displayText + "/" + x);
        a = a.replaceFirst('-', displayText, i);
        if (a == movies[cnt].toString()) {
          timer(3);
          showDlg(context, const LevelScreen(),"well done",++cnt,const Text("عاش"),const Text("يلا الي بعده"));
        }
      }
    }x +=displayText;
    
  }

  showDlg(BuildContext context, dynamic nav,String text,int value,Widget content,Widget child) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height/3,
          width: MediaQuery.of(context).size.height/2,
          child: AlertDialog(
            backgroundColor: Colors.blue,
            title:  Text('you finished level $value'),
            content: content,
            actions: [
              TextButton(
                onPressed: () {
                  timer(3);
                  value;
                  notifyListeners();
                  navigateTo(context, nav);
                },
                child: child,
              ),
            ],
          ),
        );
      },
    );
  }

  WavyAnimatedText wavAnimated({ String text =""})=>WavyAnimatedText(text,
            textStyle:  const TextStyle(
              // color: clr,
              fontSize: 30,
            ));
  Widget animatedText() {
    return AnimatedTextKit(
      animatedTexts: [
        wavAnimated(text: 'Hello world'),
        wavAnimated(text: 'Look at the waves' ), 
      ],
      repeatForever: true,
      onTap: () {},
    );
  }
}
