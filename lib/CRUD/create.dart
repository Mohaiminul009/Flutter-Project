import 'dart:ffi';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreateInformation extends StatefulWidget {
  const CreateInformation({Key? key}) : super(key: key);

  @override
  State<CreateInformation> createState() => _CreateInformationState();
}

class _CreateInformationState extends State<CreateInformation> {
  late String studentId, studentName, studentSubject;
  late double studentCgpa;

  getStudentId(id){
    this.studentId = id;
  }
  getStudentName(name){
    this.studentName = name;
  }
  getStudentSubject(subject){
    this.studentSubject = subject;
  }
  getStudentCgpa(cgpa){
    this.studentCgpa = cgpa;
  }

  Future createData() async{
    // DocumentReference documentReference = FirebaseFirestore.instance.collection("Student Information").doc("Mohaiminul");
    DocumentReference documentReference = FirebaseFirestore.instance.collection("Student Information").doc("Mohaiminul");
    Map<String, dynamic> students = {
      "studentId" : studentId,
      "studentName" : studentName,
      "studentSubject" : studentSubject,
      "studentCgpa" : studentCgpa,
    };
    documentReference.set(students).whenComplete(() {
      print("$studentName created");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Information"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "ID",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      )
                    )
                  ),
                  onChanged: (String id){
                    getStudentId(id);
                  },
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2.0,
                          )
                      )
                  ),
                  onChanged: (String name){
                    getStudentName(name);
                  },
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Subject",
                      labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2.0,
                          )
                      )
                  ),
                  onChanged: (String subject){
                    getStudentSubject(subject);
                  },
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "CGPA",
                      labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2.0,
                          )
                      )
                  ),
                  onChanged: (String cgpa){
                    getStudentCgpa(cgpa);
                  },
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Center(
                  child: FloatingActionButton.extended(
                      onPressed: () {createData();},
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                        size: 25,
                      ),
                      label: Text("Create", style: TextStyle(fontSize: 20)),
                    backgroundColor: Colors.green,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
