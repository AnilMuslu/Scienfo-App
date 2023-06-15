import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileIconButton extends StatelessWidget {
  ProfileIconButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(4.2, 0.0),
          child: Container(
            width: 17.0,
            height: 15.0,
            decoration: BoxDecoration(
              color: const Color(0xff000000),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0.0, 17.5),
          child: SizedBox(
            width: 25.0,
            height: 12.0,
            child: SvgPicture.string(
              _svg_shapov,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_shapov =
    '<svg viewBox="0.0 17.5 25.0 12.5" ><path transform="translate(-64.0, -281.17)" d="M 76.50003051757812 298.6669921875 C 69.59962463378906 298.6738891601562 64.00768280029297 303.7066345214844 64 309.9169921875 C 64 310.6073303222656 64.62181091308594 311.1669616699219 65.38887023925781 311.1669616699219 L 87.61112976074219 311.1669616699219 C 88.37818908691406 311.1669616699219 89 310.6073303222656 89 309.9169921875 C 88.99238586425781 303.7066345214844 83.40044403076172 298.673828125 76.50003051757812 298.6669921875 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
