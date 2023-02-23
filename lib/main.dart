import 'package:flutter/material.dart';

void main() => runApp(MyApp());
final a = TextEditingController();
final b = TextEditingController();
final h = TextEditingController();
double resul = 0;

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculando el area de trapecio',
      home: MyCustomForm(),
    );
  }
}
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  get fieldText => null;

  @override
  void _area() {
    resul = ((double.parse(a.text)+double.parse(b.text))/(2*double.parse(h.text)));
          showDialog(context: context, builder: (context){
            return  AlertDialog(
              title: Text("Area"),
              content: Text("Resultado: $resul"),
            );
          });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculando el area del trapecio'),
      ),
      body:Padding(
        
        padding: const EdgeInsets.all(20),
        child: Column(
          
          children:[
            
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa el valor del lado a'
              ),
              controller:a, 
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa el valor del lado b'
              ),
              controller: b,
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa el valor del lado h'
              ),
              controller: h,
              keyboardType: TextInputType.number,
            )
          ],
            
          ),
      ),
      
    floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _area();
          a.clear();
          b.clear();
          h.clear();
        },
        label: const Text('Calcular'),
        backgroundColor: Colors.indigoAccent,
      ),
  );
  }
}
