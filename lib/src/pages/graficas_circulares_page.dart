import 'package:disenos_animaciones/src/theme/theme.dart';
import 'package:disenos_animaciones/src/widgets/radial_progress.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GraficasCircularesPage extends StatefulWidget {
  @override
  _GraficasCircularesPageState createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {

  double porcentaje = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child:Icon(Icons.refresh),
          onPressed: (){
            setState(() {
              porcentaje += 10;
              if(porcentaje > 100){
                porcentaje = 0;
              }
            });
          }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomRadialProgress(porcentaje: porcentaje, color: Colors.blueGrey,),
              CustomRadialProgress(porcentaje: porcentaje * 1.2, color: Colors.green)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomRadialProgress(porcentaje: porcentaje * 4, color: Colors.pink),
              CustomRadialProgress(porcentaje: porcentaje * 6, color: Colors.purple)
            ],
          )
        ],
      )
    );
  }
}

class CustomRadialProgress extends StatelessWidget {
  final Color color;

  const CustomRadialProgress({
    @required this.porcentaje,
    @required this.color,
  });

  final double porcentaje;

  @override
  Widget build(BuildContext context) {

    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return Container(
      height: 180,
      width: 180,
      child: RadialProgress(
        porcentaje: porcentaje,
        colorPrimario: color,
        colorSecundario: appTheme.textTheme.body1.color,
        grosorPrimario: 10,
        grosorSecundario: 5,
      ),
      //child: Text('$porcentaje %',style: TextStyle(fontSize: 50.0),),
    );
  }
}
