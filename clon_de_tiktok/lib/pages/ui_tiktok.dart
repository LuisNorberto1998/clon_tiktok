import 'package:flutter/material.dart';

class UITikTok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/img/sid.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        _blackGradient(),
        _topMenu(),
      ],
    );
  }

  Widget _blackGradient() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
            Colors.black87,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black54,
            Colors.black87,
          ])),
    );
  }

  Widget _topMenu() {
    return Column(
      children: <Widget>[
        _topNav(),
        _interctionsButtons(),
      ],
    );
  }

  Widget _topNav() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _columnTop('Siguiendo', Colors.white),
          SizedBox(
            width: 30.0,
          ),
          _columnTop('Para ti', Colors.white54),
        ],
      ),
    );
  }

  _columnTop(String titulo, Color color) {
    return Column(
      children: <Widget>[
        Text(
          titulo,
          style: TextStyle(
            fontSize: 18.0,
            color: color,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          color: color,
          width: 40.0,
          height: 2.0,
        ),
      ],
    );
  }

  Widget _interctionsButtons() {
    return Column(
      children: <Widget>[
        //Imagen de perfil de usuario
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: ClipOval(
            child: Image.network(
              'https://p16.muscdn.com/img/musically-maliva-obj/1664997143306245~c5_720x720.jpeg',
              width: 50.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        //Icono de me gusta
        Icon(
          Icons.favorite,
          color: Colors.red,
          size: 50.0,
        ),
        Text(
          '167.2K',
          style: TextStyle(
            fontSize: 10.0,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
