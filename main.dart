import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hourly forecast',
          style: TextStyle(
            color: Color.fromARGB(255, 179, 221, 255),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 63, 25, 129),
      ),
      backgroundColor: Color.fromARGB(255, 63, 25, 129),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 27, 8, 59),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize
                    .min, //ayuda aque solo se pinte en este ejemplo de naraja hasta donde llega el contenido
                children: [
                  //puedo agregar text ect
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        //aqui vamos
                        "16°",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "14°",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "14°",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "13°",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "11°",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.mode_night,
                        size: 20,
                        color: Color.fromARGB(255, 67, 240, 246),
                      ),
                      Icon(
                        Icons.mode_night,
                        size: 20,
                        color: Color.fromARGB(255, 67, 240, 246),
                      ),
                      Icon(
                        Icons.mode_night,
                        size: 20,
                        color: Color.fromARGB(255, 67, 240, 246),
                      ),
                      Icon(
                        Icons.mode_night,
                        size: 20,
                        color: Color.fromARGB(255, 67, 240, 246),
                      ),
                      Icon(
                        Icons.mode_night,
                        size: 20,
                        color: Color.fromARGB(255, 67, 240, 246),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Now",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      ),
                      Text(
                        "12 AM",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      ),
                      Text(
                        "1 AM",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      ),
                      Text(
                        "2 AM",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      ),
                      Text(
                        "3 AM",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "10-day forecast",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 179, 221, 255),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            //Aqui va lo otro del clima
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content:
                          Text("Hoy - La temperatura es de: 28°C grados")));
              },
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 8, 59),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Today",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          width: 175.0,
                        ),
                        Icon(
                          Icons.wb_sunny,
                          size: 20,
                          color: Color.fromARGB(255, 67, 240, 246),
                        ),
                        SizedBox(
                          width: 70.0,
                        ),
                        Text(
                          "28°/9°",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            //Aqui va lo otro del clima
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content:
                          Text("Martes - La temperatura es de: 27°C grados")));
              },
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 8, 59),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Tuesday",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          width: 160.0,
                        ),
                        Icon(
                          Icons.wb_sunny_outlined,
                          size: 20,
                          color: Color.fromARGB(255, 67, 240, 246),
                        ),
                        SizedBox(
                          width: 70.0,
                        ),
                        Text(
                          "27°/9°",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            //Aqui va lo otro del clima
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content: Text("Miercoles - La temperatura es de: 26°C")));
              },
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 8, 59),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Wednesday",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          width: 140.0,
                        ),
                        Icon(
                          Icons.wb_sunny_outlined,
                          size: 20,
                          color: Color.fromARGB(255, 67, 240, 246),
                        ),
                        SizedBox(
                          width: 70.0,
                        ),
                        Text(
                          "26°/7°",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            //Aqui va lo otro del clima
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content: Text("Jueves - La temperatura es de: 28°C")));
              },
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 8, 59),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Thursday",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          width: 155.0,
                        ),
                        Icon(
                          Icons.wb_sunny,
                          size: 20,
                          color: Color.fromARGB(255, 67, 240, 246),
                        ),
                        SizedBox(
                          width: 70.0,
                        ),
                        Text(
                          "28°/8°",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            //Aqui va lo otro del clima
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content: Text("Viernes - La temperatura es de: 28°C")));
              },
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 8, 59),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Friday",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          width: 180.0,
                        ),
                        Icon(
                          Icons.wb_sunny,
                          size: 20,
                          color: Color.fromARGB(255, 67, 240, 246),
                        ),
                        SizedBox(
                          width: 70.0,
                        ),
                        Text(
                          "28°/9°",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            //Aqui va lo otro del clima
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content: Text("Sabado - La temperatura es de: 29°C")));
              },
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 8, 59),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Saturday",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          width: 160.0,
                        ),
                        Icon(
                          Icons.wb_sunny,
                          size: 20,
                          color: Color.fromARGB(255, 67, 240, 246),
                        ),
                        SizedBox(
                          width: 60.0,
                        ),
                        Text(
                          "29°/10°",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            //Aqui va lo otro del clima
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content: Text("Domingo - La temperatura es de: 29°C")));
              },
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 8, 59),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Sunday",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          width: 170.0,
                        ),
                        Icon(
                          Icons.wb_sunny_outlined,
                          size: 20,
                          color: Color.fromARGB(255, 67, 240, 246),
                        ),
                        SizedBox(
                          width: 60.0,
                        ),
                        Text(
                          "29°/12°",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            //Aqui va lo otro del clima
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content: Text("Lunes -  La temperatura es de: 26°C")));
              },
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 8, 59),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Monday",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          width: 168.0,
                        ),
                        Icon(
                          Icons.cloud,
                          size: 20,
                          color: Color.fromARGB(255, 67, 240, 246),
                        ),
                        SizedBox(
                          width: 60.0,
                        ),
                        Text(
                          "26°/12°",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            //Aqui va lo otro del clima
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content: Text("Martes - La temperatura es de: 28°C")));
              },
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 8, 59),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Tuesday",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          width: 165.0,
                        ),
                        Icon(
                          Icons.cloud,
                          size: 20,
                          color: Color.fromARGB(255, 67, 240, 246),
                        ),
                        SizedBox(
                          width: 60.0,
                        ),
                        Text(
                          "24°/11°",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            //Aqui va lo otro del clima
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content: Text("Miercoles - La temperatura es de: 24°C")));
              },
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 8, 59),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Wednesday",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          width: 145.0,
                        ),
                        Icon(
                          Icons.wb_sunny,
                          size: 20,
                          color: Color.fromARGB(255, 67, 240, 246),
                        ),
                        SizedBox(
                          width: 65.0,
                        ),
                        Text(
                          "24°/9°",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
