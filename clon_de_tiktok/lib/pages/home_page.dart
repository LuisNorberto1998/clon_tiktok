import 'package:clon_de_tiktok/pages/ui_tiktok.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: UITikTok(),
        ),
        bottomNavigationBar: _bottomNav(),
      ),
    );
  }

  Widget _bottomNav() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          //Inicio
          bottomNavBarItem(Icon(Icons.home), 'Inicio'),
          //Tendencias
          bottomNavBarItem(Icon(Icons.search), 'Tendencias'),
          //Agregar
          bottomNavBarItemAdd(),
          //Mensajes
          bottomNavBarItem(Icon(Icons.textsms), 'Bandeja de entrada'),
          //Yo
          bottomNavBarItem(Icon(Icons.person), 'Yo'),
        ]);
  }

  bottomNavBarItem(Icon icon, String title) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 2.0),
        child: icon,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 10.0),
      ),
    );
  }

  bottomNavBarItemAdd() {
    return BottomNavigationBarItem(
      icon: Padding(
        padding:
            EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0, top: 4.0),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 20.0,
                height: 28.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.blue),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 20.0,
                height: 28.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.pink),
              ),
            ),
            //Icono Blanco
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 45.0,
                height: 30.0,
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      title: Container(),
    );
  }
}
