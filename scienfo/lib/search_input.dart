import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInput extends StatelessWidget {
  SearchInput({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Stack(
          children: <Widget>[
            SizedBox(
              width: 368.0,
              height: 44.0,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: 368.0,
                    height: 44.0,
                    child: Stack(
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(11.5, 6.0),
                          child: Container(
                            width: 349.0,
                            height: 33.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(52.0),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Container(
                          width: 368.0,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: const Color(0x66fafafa),
                            borderRadius: BorderRadius.circular(72.0),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(67.5, 13.0),
                          child: Text(
                            'Search',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: const Color(0xff000000),
                              height: 1.4285714285714286,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Transform.translate(
          offset: Offset(25.1, 11.0),
          child: SizedBox(
            width: 28.0,
            height: 24.0,
            child: SvgPicture.string(
              _svg_egsuzw,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_egsuzw =
    '<svg viewBox="25.1 11.0 28.2 23.8" ><path transform="translate(20.59, 6.46)" d="M 32.39216613769531 26.60544586181641 L 24.54267311096191 19.91522979736328 C 26.07876205444336 18.28921890258789 27.00482749938965 16.22878074645996 27.00482749938965 13.98836517333984 C 27.00482749938965 8.744176864624023 21.97027206420898 4.492969036102295 15.75241279602051 4.492969036102295 C 9.534553527832031 4.492969036102295 4.500000953674316 8.750381469726562 4.500000953674316 13.9945707321167 C 4.500000953674316 19.2387580871582 9.534553527832031 23.48996734619141 15.75241279602051 23.48996734619141 C 18.44240951538086 23.48996734619141 20.90456390380859 22.69557952880859 22.84488487243652 21.36746597290039 L 30.64293098449707 28.01424407958984 C 30.87812423706055 28.22525405883789 31.20150566101074 28.33075714111328 31.51754570007324 28.33075714111328 C 31.81888771057129 28.33075714111328 32.1202278137207 28.23766326904297 32.34806442260742 28.05148315429688 C 32.83314895629883 27.66049194335938 32.84784698486328 27.01505279541016 32.39216613769531 26.60544586181641 Z M 15.75241279602051 21.44814300537109 C 13.39315319061279 21.44814300537109 11.17354011535645 20.67237854003906 9.505155563354492 19.26358413696289 C 7.836771011352539 17.85478973388672 6.918056964874268 15.98053359985352 6.918056964874268 13.99456882476807 C 6.918056964874268 12.00239849090576 7.836771011352539 10.12814331054688 9.505155563354492 8.725556373596191 C 11.17354011535645 7.316762447357178 13.39315319061279 6.540994644165039 15.75241279602051 6.540994644165039 C 18.11166954040527 6.540994644165039 20.33128929138184 7.316762447357178 21.99966812133789 8.725556373596191 C 23.66805648803711 10.13434982299805 24.58676719665527 12.00860404968262 24.58676719665527 13.99456882476807 C 24.58676719665527 15.98674011230469 23.66805648803711 17.86099624633789 21.99966812133789 19.26358413696289 C 20.33128929138184 20.67237854003906 18.11166954040527 21.44814300537109 15.75241279602051 21.44814300537109 Z" fill="#262626" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
