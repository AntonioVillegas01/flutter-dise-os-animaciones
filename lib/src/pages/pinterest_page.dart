import 'package:disenos_animaciones/src/theme/theme.dart';
import 'package:disenos_animaciones/src/widgets/pinterest_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class PinterestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _MenuModel(),
      child: Scaffold(
        body: Stack(
          children: <Widget>[PinterestGrid(), _PinterestMenuLocation()],
        ),
        //body: PinterestMenu(),
      ),
    );
  }
}

class _PinterestMenuLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final mostrar = Provider.of<_MenuModel>(context).mostrar;
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    if(width > 500 ){
      width = width - 300;
    }

    return Positioned(
        bottom: 30,
        child: Container(
          width: width,
          child: Row(
            children: <Widget>[
              Spacer(),
              PinterestMenu(
                mostrar: mostrar,
                backgroundColor: appTheme.scaffoldBackgroundColor,
                activeColor: appTheme.accentColor,
                items: <PinterestButton>[
                  PinterestButton(
                      icon: Icons.pie_chart,
                      onPressed: () {
                        print('Icon pie_chart');
                      }),
                  PinterestButton(
                      icon: Icons.search,
                      onPressed: () {
                        print('Icon search');
                      }),
                  PinterestButton(
                      icon: Icons.notifications,
                      onPressed: () {
                        print('Icon notifications');
                      }),
                  PinterestButton(
                      icon: Icons.supervised_user_circle,
                      onPressed: () {
                        print('Icon supervised user circle');
                      })
                ],
//              backgroundColor: Colors.green,
//              activeColor: Colors.blue,
//              inactiveColor: Colors.black,
              ),
              Spacer()
            ],
          ),
        ));
  }
}

class PinterestGrid extends StatefulWidget {
  @override
  _PinterestGridState createState() => _PinterestGridState();
}

class _PinterestGridState extends State<PinterestGrid> {
  ScrollController controller = new ScrollController();

  @override
  void initState() {
    super.initState();
    double scrollAnterior = 0;

    controller.addListener(() {
      if (controller.offset > scrollAnterior && controller.offset > 150) {
        // print('ocultar menu');
        Provider.of<_MenuModel>(context, listen: false).mostrar = false;
      } else {
        Provider.of<_MenuModel>(context, listen: false).mostrar = true;
        // print('mostrar menu');
      }
      scrollAnterior = controller.offset;
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  final List items = List.generate(200, (i) => i);

  @override
  Widget build(BuildContext context) {

    int count;

    if(MediaQuery.of(context).size.width > 500){
      count = 3;
    }else{
      count = 2;
    }


    return new StaggeredGridView.countBuilder(
      controller: controller,
      crossAxisCount: count,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) => _PinterestItem(
        index: index,
      ),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(1, index.isEven ? 2 : 3),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}

class _PinterestItem extends StatelessWidget {
  final int index;

  const _PinterestItem({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.blueAccent,
        ),
        child: new Center(
          child: new CircleAvatar(
            backgroundColor: Colors.white,
            child: new Text('$index'),
          ),
        ));
  }
}

class _MenuModel with ChangeNotifier {
  bool _mostrar = true;

  bool get mostrar => this._mostrar;

  set mostrar(bool valor) {
    this._mostrar = valor;
    notifyListeners();
  }
}
