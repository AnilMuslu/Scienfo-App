import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavouritesButton extends StatelessWidget {
  FavouritesButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          width: 28,
          height: 28,
          child: SvgPicture.string(
            _svg_fbnonx,
            allowDrawingOutsideViewBox: true,
          ),
        ),
      ],
    );
  }
}

const String _svg_fbnonx =
    '<svg viewBox="0.0 0.0 28 28" ><path transform="translate(-2.32, -4.5)" d="M 23.65973281860352 6.652535915374756 C 21.28389167785645 3.778827667236328 17.43069458007812 3.778827667236328 15.05484962463379 6.652536869049072 L 13.88246154785156 8.06993293762207 L 12.71007537841797 6.652535915374756 C 10.33390712738037 3.779780864715576 6.481371879577637 3.77977991104126 4.105198860168457 6.652535915374756 C 1.729027032852173 9.525289535522461 1.729027509689331 14.18294906616211 4.105199813842773 17.05570220947266 L 5.277585983276367 18.47310256958008 L 13.88246154785156 28.87626266479492 L 22.48734283447266 18.47310256958008 L 23.65973281860352 17.05570220947266 C 26.03669357299805 14.1833438873291 26.03669357299805 9.524893760681152 23.65973281860352 6.652534961700439 Z" fill="none" stroke="#262626" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" /></svg>';
