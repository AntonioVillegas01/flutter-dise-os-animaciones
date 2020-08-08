import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
        color: Color(0xff615AAB),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        )
      ),
      height: 300,
    );
  }
}


class HeaderDiagonal extends StatelessWidget {

  final Color color;
  HeaderDiagonal({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
     // color:
      child: CustomPaint(
        painter:_HeaderWavesPainter(this.color),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; //.fill .stroke
    lapiz.strokeWidth = 2;

    final path = new Path();

    //Dibujar el path y el lapiz
    path.moveTo(0, size.height*0.35);
    path.lineTo(size.width, size.height*0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
//    path.lineTo(0, size.height*0.5);

    canvas.drawPath(path,lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; //.fill .stroke
    lapiz.strokeWidth = 2;

    final path = new Path();

    //Dibujar el path y el lapiz

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path,lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; //.fill .stroke
    lapiz.strokeWidth = 2;

    final path = new Path();

    //Dibujar el path y el lapiz


    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width *0.5, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path,lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; //.fill .stroke
    lapiz.strokeWidth = 2;

    final path = new Path();

    //Dibujar el path y el lapiz


    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width* 0.5, size.height*0.40, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);



    canvas.drawPath(path,lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


class _HeaderWavesPainter extends CustomPainter {

  final Color color;

  _HeaderWavesPainter(this.color);


  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();
    //Propiedades
    //lapiz.color = Color(0xff615AAB);
    lapiz.color = this.color;
    lapiz.style = PaintingStyle.fill; //.fill .stroke
    lapiz.strokeWidth = 2;

    final path = new Path();
    //Dibujar el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width* 0.25, size.height*0.30, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width* 0.75, size.height*0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path,lapiz);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


class _HeaderWavesGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect = new Rect.fromCircle(
      center: Offset(0,155),
      radius: 180
    );

    final Gradient gradient = new LinearGradient(
      begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xff6D05E8),
          Color(0xffC012FF),
          Color(0xff6D05FA),
        ],
      stops: [
        0.2,
        0.5,
        1.0
      ]
    );

    final lapiz = new Paint()..shader = gradient.createShader(rect);

    //Propiedades
//    lapiz.color = Colors.redAccent;
    lapiz.style = PaintingStyle.fill; //.fill .stroke
    lapiz.strokeWidth = 2;

    final path = new Path();

    //Dibujar el path y el lapiz


    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width* 0.25, size.height*0.30, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width* 0.75, size.height*0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);



    canvas.drawPath(path,lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


