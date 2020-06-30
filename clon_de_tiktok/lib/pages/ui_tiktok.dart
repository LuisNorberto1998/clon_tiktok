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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _topNav(),
        Column(
          children: <Widget>[
            _interctionsButtons(),
            _postData(),
          ],
        ),
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
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
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
          SizedBox(height: 25.0),
          Icon(Icons.favorite, color: Colors.red, size: 45.0),
          SizedBox(height: 5.0),
          Text('167.2K', style: TextStyle(fontSize: 10.0, color: Colors.white)),
          //Icono de me comentarios
          SizedBox(height: 20.0),
          Icon(Icons.mode_comment, color: Colors.white, size: 40.0),
          SizedBox(height: 5.0),
          Text('5109', style: TextStyle(fontSize: 10.0, color: Colors.white)),
          //Icono de me gusta
          SizedBox(height: 20.0),
          Icon(Icons.reply, color: Colors.white, size: 40.0),
          SizedBox(height: 5.0),
          Text('1252', style: TextStyle(fontSize: 10.0, color: Colors.white)),
        ],
      ),
    );
  }

  Widget _postData() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 8.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '@jirafita_oficial',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10.0),
              Text('03-05', style: TextStyle(color: Colors.white54)),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            children: <Widget>[
              Flexible(
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '¡Sid esta feliz el día de hoy!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.music_note, size: 20.0, color: Colors.white),
                        SizedBox(width: 10.0),
                        Text(
                          'jirafita_oficila - audio sid',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Sonido original',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24, width: 10.0),
                    borderRadius: BorderRadius.circular(25.0)),
                child: ClipOval(
                  child: Image.network(
                    'https://p16.muscdn.com/img/musically-maliva-obj/1664997143306245~c5_720x720.jpeg',
                    width: 30.0,
                    height: 30.0,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
