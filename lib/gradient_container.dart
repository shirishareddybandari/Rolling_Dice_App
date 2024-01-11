import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const circleShape = BoxShape.circle;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  const GradientContainer.red({super.key})
      : color1 = const Color.fromARGB(255, 186, 161, 205),
        color2 = const Color.fromARGB(255, 209, 207, 108);
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}


// class GradientContainer extends StatelessWidget {
//   const GradientContainer( {super.key,required this.colorsList});

//   final List<Color> colorsList;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration:  BoxDecoration(
//           gradient: RadialGradient(
//             colors: colorsList,
//           ),
//           shape: circleShape),
//       child: const Center(
//         child: StyledText('haii siri'),
//       ),
//     );
//   }
// }
