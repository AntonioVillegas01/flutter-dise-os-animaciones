import 'package:disenos_animaciones/src/pages/launcher_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:disenos_animaciones/src/pages/animaciones_page.dart';
import 'package:disenos_animaciones/src/labs/circular_progress_page.dart';
import 'package:disenos_animaciones/src/pages/emergency_page.dart';
import 'package:disenos_animaciones/src/pages/graficas_circulares_page.dart';
import 'package:disenos_animaciones/src/pages/pinterest_page.dart';
import 'package:disenos_animaciones/src/pages/slideshow_page.dart';
import 'package:disenos_animaciones/src/pages/sliver_list_page.dart';
import 'package:disenos_animaciones/src/retos/cuadrado_animado_page.dart';
import 'package:disenos_animaciones/src/pages/headers_page.dart';
import 'package:disenos_animaciones/src/pages/home_page.dart';



//import 'package:disenos_animaciones/src/pages/navegacion_page.dart';
//import 'package:disenos_animaciones/src/pages/pagina1_page.dart';
//import 'package:disenos_animaciones/src/pages/twitter_page.dart';
//    'pagina1': (BuildContext context) => Pagina1Page(),
//    'twitter': (BuildContext context) => TwitterPage(),
//    'navegacion': (BuildContext context) => NavegacionPage(),

getApplicationRoutes(){
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'headers': (BuildContext context) => HeadersPage(),
    'animaciones': (BuildContext context) => AnimacionesPage(),
    'cuadradoAnimado': (BuildContext context) => CuadradoAnimadoPage(),
    'circularPage': (BuildContext context) => CircularProgressPage(),
    'graficasPage': (BuildContext context) => GraficasCircularesPage(),
    'pinterestPage': (BuildContext context) => PinterestPage(),
    'slideShow': (BuildContext context) => SlideshowPage(),
    'emergency': (BuildContext context) => EmergencyPage(),
    'sliverList': (BuildContext context) => SliverListPage(),
    'launcher': (BuildContext context) => LauncherPage(),
  };
}