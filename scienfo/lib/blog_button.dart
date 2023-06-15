import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlogButton extends StatelessWidget {
  BlogButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: 40.0,
          height: 40.0,
          child: SvgPicture.string(
            _svg_niog1c,
            allowDrawingOutsideViewBox: true,
          ),
        ),
      ],
    );
  }
}

const String _svg_niog1c =
    '<svg viewBox="0.0 0.0 40.0 40.0" ><path transform="translate(0.0, -2.0)" d="M 0.1666666716337204 10 C 0.949999988079071 5.440000057220459 4.316666603088379 2 8.333333015441895 2 L 31.66666603088379 2 C 35.68333053588867 2 39.04999923706055 5.440000057220459 39.83333206176758 10 L 0.1666666716337204 10 Z M 40 14 L 40 32 C 40 37.52000045776367 36.26666641235352 42 31.66666603088379 42 L 8.333333015441895 42 C 3.733333349227905 42 0 37.52000045776367 0 32 L 0 14 L 40 14 Z M 16.66666603088379 22 C 16.66666603088379 20.89999961853027 15.91666698455811 20 15 20 L 8.333333015441895 20 C 7.416666030883789 20 6.666666507720947 20.89999961853027 6.666666507720947 22 C 6.666666507720947 23.10000038146973 7.416666030883789 24 8.333333015441895 24 L 10 24 L 10 32 C 10 33.09999847412109 10.74999904632568 34 11.66666603088379 34 C 12.58333301544189 34 13.33333301544189 33.09999847412109 13.33333301544189 32 L 13.33333301544189 24 L 15 24 C 15.91666698455811 24 16.66666603088379 23.10000038146973 16.66666603088379 22 Z M 33.33333206176758 30 C 33.33333206176758 28.89999961853027 32.58333206176758 28 31.66666603088379 28 L 21.66666603088379 28 C 20.75 28 20 28.89999961853027 20 30 C 20 31.09999847412109 20.75 32 21.66666603088379 32 L 31.66666603088379 32 C 32.58333206176758 32 33.33333206176758 31.09999847412109 33.33333206176758 30 Z M 33.33333206176758 22 C 33.33333206176758 20.89999961853027 32.58333206176758 20 31.66666603088379 20 L 21.66666603088379 20 C 20.75 20 20 20.89999961853027 20 22 C 20 23.10000038146973 20.75 24 21.66666603088379 24 L 31.66666603088379 24 C 32.58333206176758 24 33.33333206176758 23.10000038146973 33.33333206176758 22 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';