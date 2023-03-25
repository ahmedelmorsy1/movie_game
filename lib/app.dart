

import 'barallel_file.dart';

class Movies extends StatelessWidget {
  const Movies({super.key});

  @override
  Widget build(BuildContext context) {

    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LevelController(),
        ),
        
      ],
      child:  MaterialApp(
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          theme: appTheme(),
          // theme:darkTheme,
          // darkTheme: lightTheme,
          home:  const StartScreen())
      
    );
  }
}


