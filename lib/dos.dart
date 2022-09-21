import 'package:flutter/material.dart';

class DosPage extends StatelessWidget {
  const DosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obtienes las dimensiones de la pantalla acutal, para trabajar con Responsive Design
    final hw = MediaQuery.of(context).size;

    return SafeArea(
      // Es el widget principal
      child: Scaffold(
        // Aquí se hace la magia.....
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
            height: hw.height * 1.0,
            width: hw.width * 1.0,
            color: Colors.blueGrey,
            child: Column(
              children: [
                // Custom AppBar
                Container(
                  height: hw.height * 0.1,
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
                      left: 5,
                      right: 15,
                    ),
                    child: ListTile(
                      leading: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                      title:
                          const Text('Este es el titulo de tu Custom appBar '),
                      subtitle: const Text(
                          'Este es el Subtitulo de tu Custom appBar '),
                      trailing: GestureDetector(
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Un simple SnackBar'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                // Por si necesitas más acciones dentro del SnackBar

                                // ignore: avoid_print
                                print('Acciones del boton en el snackbar');
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: const Icon(
                          Icons.help,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: hw.height * 0.017),

                // Este container es el body de tu pagina, pero al llevar inputs, se envuelve en un singlescroll
                Container(
                  height: hw.height * 0.816,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      // Como veras, a partir de aquí, ya solo son filas....
                      SizedBox(height: hw.width * 0.05),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.close,
                            size: hw.width * 0.09,
                          ),
                          SizedBox(width: hw.width * 0.04),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: hw.width * 0.03),
                          Text(
                            'Add Social Profiles',
                            style: TextStyle(
                              fontSize: hw.height * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: hw.width * 0.03),
                          Text(
                            'Help brands, etc.etc.etc.etc.',
                            style: TextStyle(
                              fontSize: hw.height * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: hw.width * 0.05),

                      // Aquí puedes crear un container con detalles o un simple Textfield
                      Container(
                        height: hw.height * 0.05,
                        width: hw.width * 0.9,
                        color: Colors.grey,
                        child: TextFormField(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
