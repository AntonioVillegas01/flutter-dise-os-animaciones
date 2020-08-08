import 'package:disenos_animaciones/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:disenos_animaciones/src/widgets/slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SlideshowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLarge;
    if (MediaQuery.of(context).size.height > 500) {
      isLarge = true;
    }else{
      isLarge = false;
    }

    final children = [
      Expanded(child: MiSlideshow()),
      Expanded(child: MiSlideshow()),
    ];

    return Scaffold(
      // backgroundColor: Colors.purple,
      body: isLarge
          ? Column(children: children)
          : Row(children: children),
    );
  }
}

class MiSlideshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    final accentColor = appTheme.currentTheme.accentColor;

    return Slideshow(
      // puntosArriba: true,
      colorPrimario: appTheme.darkTheme ? accentColor : Color(0xffFF5A7E),
      bulletPrimario: 18,
      bulletSecundario: 12,
      slides: <Widget>[
        SvgPicture.asset('assets/svgs/slide-1.svg'),
        SvgPicture.asset('assets/svgs/slide-2.svg'),
        SvgPicture.asset('assets/svgs/slide-3.svg'),
        SvgPicture.asset('assets/svgs/slide-4.svg'),
        SvgPicture.asset('assets/svgs/slide-5.svg'),
      ],
    );
  }
}
