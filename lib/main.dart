import 'package:flutter/material.dart';

void main() {
	runApp(
			MyAppDos("Esta es nuevaTarea")	
	);
}
// este es una prueba de texto
class MyAppDos extends StatefulWidget {
	String nuevaTarea;
	MyAppDos(this.nuevaTarea);
	@override
	_MyAppDosState createState() => _MyAppDosState();
}

class _MyAppDosState extends State<MyAppDos> {

	List<String> tareas;
	void initState(){
		super.initState();
		tareas = [
			"Tarea 1",
			"Tarea 2",
			"Tarea 3",
			"Tarea4"
		];
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
				title: "Prueba App",
				home: Scaffold(

						backgroundColor: Colors.grey[200],
						appBar: AppBar(
								title: Text("Hola"),
						),
						body: ListView.builder(
								//scrollDirection: Axis.horizontal ,
								itemCount: tareas.length,
								itemBuilder: (context, position){
										return Tarea( tareas[position] );
								},
						),
						floatingActionButton: FloatingActionButton(
								child: Icon(Icons.add),
								onPressed: (){
									setState(() {
										tareas.add(widget.nuevaTarea);
										print(tareas.length);
									});
								},
						),
				),
		);	
	}
//@override
	//Widget build(BuildContext context) {
		//return MaterialApp(
				//title: "Prueba App",
				//home: Scaffold(
						//appBar: AppBar(
								//title: Text("Hola"),
						//),
						//body: ListView(
								//children: tareas.map( (elem) => Tarea(elem)).toList(),
						//),
						//floatingActionButton: FloatingActionButton(
								//child: Icon(Icons.add),
								//onPressed: (){
									//setState(() {
										//tareas.add(widget.nuevaTarea);
										//print(tareas.length);
									//});
								//},
						//),
				//),
		//);	
	//}

}

class MyApp extends StatelessWidget {

	List<String> tareas = [
		"Tarea 1",
		"Tarea 2",
		"Tarea 3",
		"Tarea4"
	];


	@override
	Widget build(BuildContext context) {
		return MaterialApp(
				title: "Prueba App",
				home: Scaffold(
						appBar: AppBar(
								title: Text("Hola"),
						),
						body: Column(
								children: tareas.map( (elem) => Tarea(elem)).toList(),
						),
						floatingActionButton: FloatingActionButton(
								child: Icon(Icons.add),
								onPressed: (){
									tareas.add("Hola");
									print(tareas.length);
								},
						),
				),
		);	
	}
}
class Tarea extends StatelessWidget {
	String tarea;
	//	Tarea(String tarea){
	//		this.tarea = tarea;
	//	}
	Tarea(this.tarea);
	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			child: Card(
					child: Container(
							height: 40.0,
							child: Center(
								child: Text(tarea),
				),
					)
			),
			onTap: (){
				print("Tarea: $tarea");
			},
			onDoubleTap: (){
				print("Doble clik en: $tarea");
			},
			onLongPress: (){
				print("Long press in : $tarea");
			},
		);
	}
}
