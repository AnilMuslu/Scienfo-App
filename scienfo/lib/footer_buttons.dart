import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './scienfo_profile_page.dart';
import 'package:adobe_xd/page_link.dart';
import './scienfo_content_page1.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterButtons extends StatelessWidget {
  FooterButtons({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: 375.0,
          height: 60.0,
          child: Stack(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizedBox(
                    width: 375.0,
                    height: 60.0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 375.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: const Color(0x66fafafa),
                            borderRadius: BorderRadius.circular(72.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment(0.006, -0.043),
          child: SizedBox(
            width: 25.0,
            height: 31.0,
            child:
                // Adobe XD layer: 'SearchIcon_button' (group)
                Stack(
              children: <Widget>[
                SizedBox(
                  width: 25.0,
                  height: 31.0,
                  child: SvgPicture.string(
                    _svg_zfyypo,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 25.0, end: 46.0),
          Pin(size: 30.0, middle: 0.5078),
          child:
              // Adobe XD layer: 'ProfileIcon_button' (group)
              PageLink(
            links: [
              PageLinkInfo(
                pageBuilder: () => ScienfoProfilePage(),
              ),
            ],
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(4.2, 0.0),
                  child: Container(
                    width: 17.0,
                    height: 15.0,
                    decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 25.0, start: 48.0),
          Pin(size: 30.0, middle: 0.475),
          child:
              // Adobe XD layer: 'HomeIcon_button' (group)
              PageLink(
            links: [
              PageLinkInfo(
                pageBuilder: () => ScienfoContentPage1(),
              ),
            ],
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(9.4, 18.7),
                  child: SizedBox(
                    width: 6.0,
                    height: 11.0,
                    child: SvgPicture.string(
                      _svg_pbw49y,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                SizedBox(
                  width: 25.0,
                  height: 30.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 25.0,
                        height: 30.0,
                        child: SvgPicture.string(
                          _svg_jpo389,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_zfyypo =
    '<svg viewBox="0.0 0.0 25.4 30.9" ><path transform="translate(-4.5, -4.49)" d="M 29.58615493774414 33.17998504638672 L 22.52633857727051 24.50061416625977 C 23.90789413452148 22.39115524291992 24.74079513549805 19.71810150146484 24.74079513549805 16.81155967712402 C 24.74079513549805 10.00815582275391 20.21272659301758 4.492969036102295 14.62039661407471 4.492969036102295 C 9.028067588806152 4.492969036102295 4.500000953674316 10.01620578765869 4.500000953674316 16.81961059570312 C 4.500000953674316 23.62301445007324 9.028067588806152 29.1382007598877 14.62039661407471 29.1382007598877 C 17.03977394104004 29.1382007598877 19.25423049926758 28.10762596130371 20.99935150146484 26.3846321105957 L 28.01289749145508 35.00764846801758 C 28.22443008422852 35.28139495849609 28.51527976989746 35.41826629638672 28.79952621459961 35.41826629638672 C 29.0705509185791 35.41826629638672 29.34157371520996 35.2974967956543 29.5464916229248 35.05595779418945 C 29.98277473449707 34.5487174987793 29.99599456787109 33.71137619018555 29.58615493774414 33.17998504638672 Z M 14.62039661407471 26.48929977416992 C 12.49848365783691 26.48929977416992 10.50216865539551 25.48287963867188 9.001626968383789 23.65522003173828 C 7.50108528137207 21.82755851745605 6.674795627593994 19.39604568481445 6.674795627593994 16.81960868835449 C 6.674795627593994 14.23512077331543 7.50108528137207 11.80360698699951 9.001626968383789 9.984000205993652 C 10.50216865539551 8.156339645385742 12.49848365783691 7.149918556213379 14.62039661407471 7.149918556213379 C 16.74230766296387 7.149918556213379 18.73862838745117 8.156339645385742 20.23916625976562 9.984000205993652 C 21.73970985412598 11.81165981292725 22.56599617004395 14.24317169189453 22.56599617004395 16.81960868835449 C 22.56599617004395 19.40409660339355 21.73970985412598 21.83560943603516 20.23916625976562 23.65522003173828 C 18.73862838745117 25.48287963867188 16.74230766296387 26.48929977416992 14.62039661407471 26.48929977416992 Z" fill="#262626" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_shapov =
    '<svg viewBox="0.0 17.5 25.0 12.5" ><path transform="translate(-64.0, -281.17)" d="M 76.50003051757812 298.6669921875 C 69.59962463378906 298.6738891601562 64.00768280029297 303.7066345214844 64 309.9169921875 C 64 310.6073303222656 64.62181091308594 311.1669616699219 65.38887023925781 311.1669616699219 L 87.61112976074219 311.1669616699219 C 88.37818908691406 311.1669616699219 89 310.6073303222656 89 309.9169921875 C 88.99238586425781 303.7066345214844 83.40044403076172 298.673828125 76.50003051757812 298.6669921875 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jpo389 =
    '<svg viewBox="0.0 0.0 25.0 30.0" ><path transform="translate(0.0, -0.16)" d="M 17.70834922790527 22.65511703491211 L 17.70834922790527 30.1597900390625 L 21.875 30.1597900390625 C 23.60087966918945 30.1597900390625 25 28.47979927062988 25 26.4074535369873 L 25 14.99911880493164 C 25.000244140625 14.34932041168213 24.78994178771973 13.72490787506104 24.41352653503418 13.25803470611572 L 15.56147575378418 1.767091512680054 C 13.99956130981445 -0.2621015906333923 11.36342906951904 -0.3866909146308899 9.673487663269043 1.488773703575134 C 9.59321403503418 1.577891707420349 9.515870094299316 1.670703411102295 9.441699981689453 1.767091512680054 L 0.6052237153053284 13.25428295135498 C 0.2174307405948639 13.72309017181396 -0.0001473914890084416 14.35711765289307 -9.071081876754761e-07 15.01788139343262 L -9.071081876754761e-07 26.4074535369873 C -9.071081876754761e-07 28.47979927062988 1.399120092391968 30.1597900390625 3.124999046325684 30.1597900390625 L 7.29164981842041 30.1597900390625 L 7.29164981842041 22.65511703491211 C 7.311132431030273 19.24447822570801 9.604442596435547 16.45930671691895 12.37333965301514 16.37909889221191 C 15.23486232757568 16.29619598388672 17.6865234375 19.1288013458252 17.70834922790527 22.65511703491211 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-182.62, -301.1)" d="M 195.125 319.8410034179688 C 193.3991241455078 319.8410034179688 192 321.52099609375 192 323.5933532714844 L 192 331.0980224609375 L 198.25 331.0980224609375 L 198.25 323.5933532714844 C 198.25 321.52099609375 196.8508758544922 319.8410034179688 195.125 319.8410034179688 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pbw49y =
    '<svg viewBox="9.4 18.7 6.3 11.3" ><path transform="translate(-182.62, -301.1)" d="M 195.125 319.8410034179688 C 193.3991241455078 319.8410034179688 192 321.52099609375 192 323.5933532714844 L 192 331.0980224609375 L 198.25 331.0980224609375 L 198.25 323.5933532714844 C 198.25 321.52099609375 196.8508758544922 319.8410034179688 195.125 319.8410034179688 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
