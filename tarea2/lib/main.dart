import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cuenta de Google'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding( //Se le da un padding al boddy para que haya espacion entre los bordes de la pagina
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Container donde se almacenara todo sobre
                //la cuenta protegida
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    children: [ //En el children almacenaremos el Expanded y el icon
                      Expanded(
                        child: Column( //En este children pondremos los textos que se van a mostrar
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tu cuenta esta Protegida', 
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                            ),
                            SizedBox(height: 8),
                            Text('La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.'),
                            SizedBox(height: 8),
                            Text('Ver Detalles', style: TextStyle(color: Colors.blue),),
                          ], // Children
                        ),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.check_circle_outline, color: Colors.green, size: 40),
                    ],
                  ),
                ),
                //Aqui termina el container de TU CUENTA ESTA PROTEGIDA


                //Ahora empezaremos con el otro container EL DE SEGURIDAD
                SizedBox(height: 8,), //Ponemos un poco de espacio entre los 2 containers
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    children: [ //En el children almacenaremos el Expanded y el icon
                      Expanded(
                        child: Column( //En este children pondremos los textos que se van a mostrar
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Verificacion de Privacidad', 
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                            ),
                            SizedBox(height: 8),
                            Text('Elige la configuración de privacidad indicada para ti con esta guía paso a paso.'),
                            SizedBox(height: 8),
                            Text('Realizar la verificacion de privacidad', 
                             style: TextStyle(color: Colors.blue),
                            ),
                          ], // Children
                        ),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.security, color: Colors.blue, size: 40),
                    ],
                  ),
                ),
                //Aqui termina el container de seguridad


                //Ahora empezaremos con el resto del codigo
                SizedBox(height: 20), // Espacio entre secciones
                Text(
                  '¿Buscas otra información?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 10), // Espacio entre textos
                // Crear las opciones de información
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.search, color: Colors.grey),
                  title: Text('Buscar en la Cuenta de Google'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.help_outline, color: Colors.grey),
                  title: Text('Ver las opciones de ayuda'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.feedback, color: Colors.grey),
                  title: Text('Enviar comentarios'),
                ),
                SizedBox(height: 20), // Espacio entre textos
                Text(
                  'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos.',
                  style: TextStyle(fontSize: 12),
                ),
                Text('Más información',style: TextStyle(color: Colors.blue)),

              ],//Children
            ),
            ),
          ),  
        ),
      );
  }
}
