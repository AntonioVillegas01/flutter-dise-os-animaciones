import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:disenos_animaciones/src/theme/theme.dart';
import 'package:disenos_animaciones/src/widgets/headers_widgets.dart';

class HeadersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;
    
    return Scaffold(
      body: HeaderDiagonal(color: appTheme.accentColor,),
    );
  }
}
