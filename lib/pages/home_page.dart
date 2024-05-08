import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
      body: Container(
        decoration: const BoxDecoration(
          image: 
            DecorationImage(
              image: AssetImage("assets/images/liquid-cheese.png"),
              fit: BoxFit.cover
              ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  contador >= 15 ? "Lotado" : "Pode entrar",
                  style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  contador.toString(),
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: contador >=15 ? Colors.red : Colors.black),
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
                      fixedSize: const Size(100, 100),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      backgroundColor: contador >=15 ? Colors.white.withOpacity(0.2) : Colors.white
                    ),
                    child: const Text("Entrou", style: TextStyle(color: Colors.black)),
                  ),
                ),
                ElevatedButton(
                  onPressed: decrementar,
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 100),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    backgroundColor: contador <= 0 ? Colors.white.withOpacity(0.2) : Colors.white
                  ),
                  child: const Text("Saiu", style: TextStyle(color: Colors.black)),
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
