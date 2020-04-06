import 'package:flutter/material.dart';
import 'trip.dart';
import 'package:intl/intl.dart';

class HomeWiev extends StatelessWidget {
  final List<Trip> listWiev = [
    Trip("New York", DateTime.now(), DateTime.now(), 200.00, "car"),
    Trip("Boston", DateTime.now(), DateTime.now(), 300.00, "bus"),
    Trip("Washinton", DateTime.now(), DateTime.now(), 100.00, "train"),
    Trip("Los-Angels", DateTime.now(), DateTime.now(), 120.00, "plane"),
    Trip("Los-Vegas", DateTime.now(), DateTime.now(), 230.00, "car"),
    Trip("Florensia", DateTime.now(), DateTime.now(), 80.00, "car"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Container(
        child: ListView.builder(
            itemCount: listWiev.length,
            itemBuilder: (BuildContext context, int index) =>
                TravelBuild(context, index)),
      ),
    );
  }

  Widget TravelBuild(BuildContext context, int index) {
    final trip = listWiev[index];
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all( 16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 1.00),
                child: Row(
                  children: <Widget>[Text(trip.title, style: TextStyle( fontSize: 30),), Spacer()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1.00),
                child: Row(
                  children: <Widget>[
                    Text(
                        "${DateFormat('dd/MM/yyyy').format(trip.dataStart).toString()}-${DateFormat('dd/MM/yyyy').format(trip.dataEnd).toString()}"),
                    Spacer()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.00),
                child: Row(
                  children: <Widget>[
                    Text("\$${trip.budget.toString()}", style: TextStyle(fontSize: 25,),),
                    Spacer(),
                    Icon(Icons.drive_eta),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}