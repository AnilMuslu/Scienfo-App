import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikeButton extends StatefulWidget {
  final String userId;
  final String imageId;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  LikeButton({Key? key, required this.userId, required this.imageId}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  Future<void> handleLike() async {
    try {
      CollectionReference favorites = widget._firestore
          .collection('users')
          .doc(widget.userId)
          .collection('favorites');

      if (isLiked) {
        // If the image is already liked, remove it from favorites and update isLiked
        await favorites.doc(widget.imageId).delete();
        setState(() {
          isLiked = false;
        });
      } else {
        // If the image is not liked, add it to favorites and update isLiked
        await favorites.doc(widget.imageId).set({});
        setState(() {
          isLiked = true;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleLike,
      child: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: SvgPicture.string(
              isLiked ? _svg_redHeart : _svg_p6j7u, // Use the filled red heart SVG if isLiked is true, otherwise use the unfilled heart
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}


const String _svg_p6j7u =
    '<svg viewBox="0.0 0.0 40.0 40.0" ><path transform="translate(-2.03, -3.04)" d="M 22.02775001525879 6.500380039215088 C 19.84258651733398 4.273202419281006 16.98239135742188 3.037105321884155 14.01386547088623 3.037002086639404 C 10.84040927886963 3.040665864944458 7.799347877502441 4.447253704071045 5.564788818359375 6.944972991943359 C 0.8458999991416931 12.19783401489258 0.8479053378105164 20.41390609741211 5.568799495697021 25.6445369720459 L 20.27295875549316 41.94329833984375 C 20.6138916015625 42.60796356201172 21.27168655395508 43.03699493408203 22.02775001525879 43.03699493408203 C 22.65730094909668 43.03021621704102 23.24664115905762 42.69286346435547 23.6160888671875 42.12780380249023 L 38.4867057800293 25.64453315734863 C 43.20759963989258 20.41168022155762 43.20759963989258 12.19783115386963 38.48269271850586 6.936075687408447 C 36.2492790222168 4.442971706390381 33.21133422851562 3.039690494537354 30.0416374206543 3.036996841430664 C 27.07512855529785 3.036994695663452 24.21488571166992 4.272513866424561 22.02918243408203 6.498920440673828 Z M 35.64694976806641 10.0793514251709 C 38.78150939941406 13.57162666320801 38.78351211547852 19.02677726745605 35.65096282958984 22.50126647949219 L 22.02775001525879 37.60185623168945 L 8.404543876647949 22.50127029418945 C 5.271988391876221 19.02677917480469 5.273994445800781 13.57162666320801 8.400533676147461 10.08824348449707 C 9.924696922302246 8.407683372497559 11.91814041137695 7.482930660247803 14.0138635635376 7.482930660247803 C 16.10958862304688 7.482930660247803 18.09500885009766 8.407683372497559 19.60713768005371 10.08379745483398 L 20.60987663269043 11.19527912139893 C 20.98569869995117 11.61256694793701 21.49580574035645 11.84705543518066 22.02775001525879 11.84705543518066 C 22.5596923828125 11.84705543518066 23.06979942321777 11.61256694793701 23.44562149047852 11.19527912139893 L 24.44836044311523 10.08379745483398 C 27.48064422607422 6.72934627532959 32.61867141723633 6.738237380981445 35.64694595336914 10.0793514251709 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_redHeart =
    '<svg viewBox="0.0 0.0 40.0 40.0" ><path transform="translate(-2.03, -3.04)" d="M 22.02775001525879 6.500380039215088 C 19.84258651733398 4.273202419281006 16.98239135742188 3.037105321884155 14.01386547088623 3.037002086639404 C 10.84040927886963 3.040665864944458 7.799347877502441 4.447253704071045 5.564788818359375 6.944972991943359 C 0.8458999991416931 12.19783401489258 0.8479053378105164 20.41390609741211 5.568799495697021 25.6445369720459 L 20.27295875549316 41.94329833984375 C 20.6138916015625 42.60796356201172 21.27168655395508 43.03699493408203 22.02775001525879 43.03699493408203 C 22.65730094909668 43.03021621704102 23.24664115905762 42.69286346435547 23.6160888671875 42.12780380249023 L 38.4867057800293 25.64453315734863 C 43.20759963989258 20.41168022155762 43.20759963989258 12.19783115386963 38.48269271850586 6.936075687408447 C 36.2492790222168 4.442971706390381 33.21133422851562 3.039690494537354 30.0416374206543 3.036996841430664 C 27.07512855529785 3.036994695663452 24.21488571166992 4.272513866424561 22.02918243408203 6.498920440673828 Z M 35.64694976806641 10.0793514251709 C 38.78150939941406 13.57162666320801 38.78351211547852 19.02677726745605 35.65096282958984 22.50126647949219 L 22.02775001525879 37.60185623168945 L 8.404543876647949 22.50127029418945 C 5.271988391876221 19.02677917480469 5.273994445800781 13.57162666320801 8.400533676147461 10.08824348449707 C 9.924696922302246 8.407683372497559 11.91814041137695 7.482930660247803 14.0138635635376 7.482930660247803 C 16.10958862304688 7.482930660247803 18.09500885009766 8.407683372497559 19.60713768005371 10.08379745483398 L 20.60987663269043 11.19527912139893 C 20.98569869995117 11.61256694793701 21.49580574035645 11.84705543518066 22.02775001525879 11.84705543518066 C 22.5596923828125 11.84705543518066 23.06979942321777 11.61256694793701 23.44562149047852 11.19527912139893 L 24.44836044311523 10.08379745483398 C 27.48064422607422 6.72934627532959 32.61867141723633 6.738237380981445 35.64694595336914 10.0793514251709 Z" fill="#ff0000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
