import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dummy extends StatefulWidget {
  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {

Widget _createInputFie(String hint, bool isObscureText){
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius:  BorderRadius.circular(10),
    ),
    child: TextField(
      obscureText: isObscureText,
    ),
  );
}

_emailMe(){
  print("email button pressed");
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My First App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
            ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: Image.network("https://images.unsplash.com/photo-1579783483458-83d02161294e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=728&q=80").image,
            fit: BoxFit.cover,),
          ),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
                child: Image.network(
                "https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              ),
              Text("John Doe", style: TextStyle(fontSize: 35,
              ),
              ),
              Text("Full Stack Developer",
              style: TextStyle(fontSize: 20, 
              color: Colors.grey,
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                color: Colors.blue,
                onPressed: _emailMe,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10,),
                    child: Icon(CupertinoIcons.book, color: Colors.white,),),
                    Text("Email Me",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              SizedBox(width: 10,),
               MaterialButton(
                color: Colors.blue,
                onPressed: ()=>{
                  print("website button pressed")
                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10,),
                    child: Icon(CupertinoIcons.bell, color: Colors.white,),),
                    Text("My Website",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
                ],
              ),
            ],
          ),
        ), 
      ),
    );
  }
}