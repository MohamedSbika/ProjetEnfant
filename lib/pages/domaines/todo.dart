import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Todo extends StatefulWidget{
  const Todo ({super.key});

  @override
  State<StatefulWidget> createState() => _TodoState();

}
class _TodoState extends State<Todo>{

  List todolist =[];
  String singlevalue="";

  addString(content){
    setState(() {
      singlevalue=content;
    });
  }

  addList(){
    setState(() {
      todolist.add({"value": singlevalue});
    });
  }


  deleteItem(index){
    setState(() {
      todolist.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: Center(
          child: Text(
            "dessiner",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 90,
                child: ListView.builder(
                    itemCount: todolist.length,
                    itemBuilder: (context,index){
                  return Card(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ) ,
                    color: Colors.green[400] ,
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                                flex : 80,
                            child: Text(todolist[index]['value'].toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),

                            ),

                            ),

                            Expanded(
                                flex: 20,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: TextButton(
                                    onPressed: (){
                                    deleteItem(index);
                                    },
                                    child: Icon(Icons.delete ,
                                    color : Colors.red,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                })


            ),
            Expanded(
              flex: 10,
                child: Row(
                  children: [
                    Expanded(
                      flex : 70,
                        child: Container(
                          height: 40,
                          child: TextFormField(
                            onChanged: (content){
                              addString(content);
                            },



                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              fillColor: Colors.green,
                              filled: true,
                              labelText: "saisir tache",
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          ),
                        )),
                    Expanded(
                      flex: 3,
                        child: SizedBox(width: 5,)),
                    Expanded(
                      flex: 27,
                        child: ElevatedButton(
                          onPressed: (){
                            addList();
                          },
                          child: Container(
                              height: 15,
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Text('ajouter')),
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }

}