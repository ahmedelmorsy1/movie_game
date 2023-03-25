import 'package:flutter/scheduler.dart';
import '../barallel_file.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      getIntValues();
    Timer(const Duration(seconds: 2), () =>navigateTo(context, const WelcomeScreen())
    );});
    context.read<LevelController>().getText();
     debugPrint(movies[cnt]);
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        // backgroundColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext ctx, int index) {
            return Row(
              children: [for (var i in listCnt) count100(i, index,ctx)],
            );
          }),
    );
  }
}
