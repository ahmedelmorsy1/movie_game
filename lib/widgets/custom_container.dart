import 'package:movie_game/barallel_file.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final double? height, width;
  const CustomContainer({super.key, this.child, this.height = 150, this.width = 150});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,width: width,
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 183, 137, 137),
              width: 5,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(184, 166, 173, 176),
                offset: Offset(0.0, 0.0),blurRadius: 0.0,spreadRadius: 0.0,
              ),],),
          child: child),
    );}}