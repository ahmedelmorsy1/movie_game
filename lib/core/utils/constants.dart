 import 'package:movie_game/barallel_file.dart';

 List<String> images = List.filled(9, '-', growable: false);

dynamic displayText = '';

final List<dynamic> movies = [
  "the/maze/runner",
  "avengers",
  "twilight",
  "vaaa",
  "the/maze/runner",
  "batman",
  "superman",
  "-",
  "-",
  "-",
];
var regex = RegExp(r'[a-zA-Zأ-ي]');
int cnt = 0;

var listCnt = List<int>.generate(5, (i) => i + 1);

final TextEditingController ctrl = TextEditingController();

var boxDecor = BoxDecoration(
  shape: BoxShape.circle,
  border: Border.all(
    color: Colors.white,
    width: 5.0,
    style: BorderStyle.solid,
  ),
);