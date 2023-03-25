import 'package:movie_game/barallel_file.dart';

class StartScreen extends StatefulWidget {
   const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> with  SingleTickerProviderStateMixin{
     late AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

   @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );
    timer(5);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        //backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
          children: [
             RotationTransition(
              turns:Tween(begin: 0.0, end: 2.0).animate(_controller),
               child: const ArcText(radius: 150, text: '*************************************************',
               textStyle: TextStyle(fontSize: 20,letterSpacing: 10,color: Colors.white),),
             ),
            LevelController().animatedText(),
            const SizedBox(height: 20,),
            ElevatedButton(
                child: const Text("Start",style: TextStyle(fontSize: 30),),
                onPressed: (){navigateTo(context, const LevelScreen());
                context.read<LevelController>().getText();
                 }
              ),
          ],
        )),
      )
    );
  }
}