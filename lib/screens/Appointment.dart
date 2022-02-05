import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhostel/screens/Patients.dart';
import 'loginScreen.dart';

class Appointment extends StatefulWidget {
  Appointment() : super();

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  //final _formKey = GlobalKey<FormState>();
  List services = [
    'Emergency',
    'Immunisation',
    'Couselling',
    'Testing',
    'Dentistry',
    'Ophthalmology',
    'Midwifery'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Service",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Segoe UI',
              fontSize: 30,
            )),
        //centerTitle: true,
        leading: InkWell(
          onTap: () => Get.to(Patient()),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                print('Appointment booked');
              },
              title: Text(
                services[index],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Stack(
        children: [
          new Container(
            height: 50.0,
            color: Colors.white,
            child: Center(
                child: Wrap(
              children: [
                Material(
                    child: InkWell(
                  onTap: () {
                    print("log out tapped");
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    "Log out",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                )),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
