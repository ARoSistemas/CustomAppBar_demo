import 'package:flutter/material.dart';

class UnoPage extends StatelessWidget {
  const UnoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obtienes las dimensiones de la pantalla acutal, para trabajar con Responsive Design
    final hw = MediaQuery.of(context).size;
    // Te asegura no sobrepasar la barra del sistema.
    return SafeArea(
      // Es el widget principal
      child: Scaffold(
        // Aquí se hace la magia.....
        body: Container(
          height: hw.height * 1.0,
          width: hw.width * 1.0,
          color: Colors.blueGrey,
          child: Column(
            children: [
              Container(
                height: hw.height * 0.130,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.amber.shade300,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xAA6EB1E6),
                      offset: Offset(9, 9),
                      blurRadius: 6,
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    'Aquí puedes usar tooooodooo este espacio para tu custom appBar ',
                    style: TextStyle(
                      fontSize: hw.height * 0.03,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Text(
                'Desde aqui, ya es tu body, y puedes empezar a trabajar ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: hw.height * 0.03,
                ),
              ),
              const Divider(),
              Text(
                'Como es una columna, puedes ir colocando tus widgets como los vas necesitando ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: hw.height * 0.03,
                ),
              ),
              const Divider(),
              Text(
                'Si sobrepasas el alto de la pantalla, recuerda envolver el Column en un SingleChildScrollView ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: hw.height * 0.03,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Regresar al Main'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
