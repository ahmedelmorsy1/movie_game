import 'package:movie_game/barallel_file.dart';

class CustomTextFormField extends StatelessWidget {
  final String? text ,  hint;
  final TextEditingController ctrl;
  const CustomTextFormField({this.text = "ادخل حرف واحد", this.hint = "A",super.key,required this.ctrl,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CustomText(text: text,fontSize: 14,color: Colors.grey.shade900,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 120,height: 80,
            child: TextFormField(
              textInputAction: TextInputAction.search,
              onEditingComplete: (){
                context.read<LevelController>().showText();
                    context.read<LevelController>().changeChar2D(context);
                    ctrl.clear();
              },
              controller: ctrl,
              maxLength: 1,
              keyboardType: TextInputType.text,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.grey),      
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),),
          ),),
      ],);
  }}