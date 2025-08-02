
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            buildTextFormField(hintText: 'Name'),
            buildTextFormField(hintText: 'Age'),
            buildTextFormField(hintText: 'Salary'),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text('Add Employee',style: TextStyle(fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }

  Widget buildTextFormField({
    required String hintText,
  }){
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey,fontSize: 18)
      ),
    );
  }
}