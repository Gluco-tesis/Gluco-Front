import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      child: Column(
        children: [
          SizedBox(height: 25),
          Cabecera(context),
          Nombre(),
          Separador(context),
          ContenedorBordeNivel(),
          //Nivel(context),
          Expanded(
            child: Container(),
          ),
          BotonMedir(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          )
        ],
      ),
    );
  }

  Widget Cabecera(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Image.asset(
              'assets/img/gluconewnew.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 25, top: 50),
            alignment: Alignment.centerRight,
            child: Text(
              "Gluco",
              style: TextStyle(
                  color: Colors.red[800],
                  fontSize: 50,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }

  Widget Nombre() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20),
      child: Text(
        "Nivel de Glucosa",
        style: TextStyle(
          color: Colors.black,
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget Nivel(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          width: 170,
          height: 120,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Text("85", style: TextStyle(fontSize: 50)),
        ),
        Container(
          color: Colors.black,
          height: 3,
          width: 170,
        ),
      ],
    );
  }

  Widget BotonMedir(context) {
    return FlatButton(
      onPressed: () {},
      minWidth: MediaQuery.of(context).size.width * 0.65,
      height: 55,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(
          color: Colors.black,
          width: 0.5,
        ),
      ),
      child: Text(
        "Medir",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      color: Colors.blue[600],
    );
  }

  Widget Separador(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      color: Colors.grey[700],
      height: 2,
      width: MediaQuery.of(context).size.width,
    );
  }

  Widget ContenedorBordeNivel() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 120,
      width: 170,
      padding: EdgeInsets.only(top: 4, left: 2, right: 2, bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        color: Colors.black,
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
          color: Colors.white,
        ),
        child: Text("85", style: TextStyle(fontSize: 50)),
      ),
    );
  }
}