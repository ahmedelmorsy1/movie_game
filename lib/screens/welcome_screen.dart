import 'package:movie_game/barallel_file.dart';

class WelcomeScreen extends StatefulWidget {
  // final int? count ;
  const WelcomeScreen({super.key, });

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        // backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CustomTextFormField(ctrl: ctrl),
              ElevatedButton(
                  child: const Text("ok"),
                  onPressed: () {               
                    context.read<LevelController>().showText();
                    context.read<LevelController>().changeChar2D(context);
                    ctrl.clear();
                    addIntT();
          }),
              Text(displayText ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blueGrey,
                    width: 3
                  ),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: TextLiquidFill( text: context.watch<LevelController>().tex,
                waveDuration: const Duration(seconds: 3),
                 waveColor: Colors.white,
                boxHeight: 100,
                boxWidth: MediaQuery.of(context).size.width,
                boxBackgroundColor: const Color.fromARGB(255, 84, 194, 178),
                
                textStyle: const TextStyle(fontSize: 30,letterSpacing: 7),),
              ),
              const SizedBox(height: 15,),
              CustomContainer(
                child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate:gridDel(),
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                        child: Text(images[index],
                    ));
                  },),),
            ],
          ),),
      ),);}
}