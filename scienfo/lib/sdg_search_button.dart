import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SDGSearchButton extends StatelessWidget {
  SDGSearchButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: 386.0,
          height: 63.0,
          child: SvgPicture.string(
            _svg_ylh57a,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        Transform.translate(
          offset: Offset(311.5, 10.6),
          child:
              // Adobe XD layer: 'SDG Wheel' (shape)
              Container(
            width: 47.0,
            height: 47.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/sdg_search_image.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(23.5, 21.6),
          child: Text(
            'Sustainable Development Goals',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: const Color(0xff000000),
              height: 0.3125,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
        ),
      ],
    );
  }
}

const String _svg_ylh57a =
    '<svg viewBox="0.0 0.0 386.0 63.4" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#4af0cf" /><stop offset="1.0" stop-color="#808080" /></linearGradient></defs><path  d="M 19.96998596191406 0 L 365.9883728027344 0 C 377.0174865722656 0 385.9583740234375 9.846003532409668 385.9583740234375 21.99166679382324 L 385.9583740234375 41.44583511352539 C 385.9583740234375 53.59149932861328 377.0174865722656 63.43750381469727 365.9883728027344 63.43750381469727 L 19.96998596191406 63.43750381469727 C 8.940865516662598 63.43750381469727 0 53.59149932861328 0 41.44583511352539 L 0 21.99166679382324 C 0 9.846003532409668 8.940865516662598 0 19.96998596191406 0 Z" fill="url(#gradient)" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
