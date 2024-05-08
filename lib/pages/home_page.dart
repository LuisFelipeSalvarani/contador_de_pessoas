import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void incrementar() {
    if (contador < 15) {
      setState(() {
        contador++;
      });
    }
  }

  void decrementar() {
    if (contador > 0) {
      setState(() {
        contador--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                contador >= 15 ? "Lotado" : "Pode entrar",
                style: TextStyle(fontSize: 40),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                contador.toString(),
                style: TextStyle(fontSize: 80),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: ElevatedButton(
                  onPressed: incrementar,
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 100),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    backgroundColor: contador >=15 ? Colors.red : Colors.grey
                    ),
                  child: Text("Entrou"),
                ),
              ),
              ElevatedButton(
                onPressed: decrementar,
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(100, 100),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  backgroundColor: contador <= 0 ? Colors.red : Colors.grey
                  ),
                child: Text("Saiu"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
