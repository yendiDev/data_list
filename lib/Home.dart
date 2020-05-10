import 'package:flutter/material.dart';
import 'package:datalist/Qoute.dart';

class Home extends StatelessWidget{

  List<Qoute> qoutes = [
    Qoute(qoute: 'Be yourself; everyone else is taken', author: 'Kpamsoga John'),
    Qoute(qoute: 'Great things start small; make everyday count', author: 'Jeff Bezoz'),
    Qoute(qoute: 'Believe in yourself, or else no one will', author: 'Unknown'),
    Qoute(qoute: 'Be yourself; everyone else is taken', author: 'Kpamsoga John'),
    Qoute(qoute: 'Great things start small; make everyday count', author: 'Jeff Bezoz'),
    Qoute(qoute: 'Believe in yourself, or else no one will', author: 'Unknown'),
    Qoute(qoute: 'Be yourself; everyone else is taken', author: 'Kpamsoga John'),
    Qoute(qoute: 'Great things start small; make everyday count', author: 'Jeff Bezoz'),
    Qoute(qoute: 'Believe in yourself, or else no one will', author: 'Unknown'),
    Qoute(qoute: 'Be yourself; everyone else is taken', author: 'Kpamsoga John'),
    Qoute(qoute: 'Great things start small; make everyday count', author: 'Jeff Bezoz'),
    Qoute(qoute: 'Believe in yourself, or else no one will', author: 'Unknown'),
    Qoute(qoute: 'Be yourself; everyone else is taken', author: 'Kpamsoga John'),
    Qoute(qoute: 'Great things start small; make everyday count', author: 'Jeff Bezoz'),
    Qoute(qoute: 'Believe in yourself, or else no one will', author: 'Unknown')

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Awesome Qoutes"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
      ),

      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: qoutes.map((quote) => CustomCard(qoute: quote,)).toList(),
            ),
          ),
        ],
      )

    );
  }

}

class CustomCard extends StatelessWidget{

  Qoute qoute;
  CustomCard({this.qoute});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(

      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[

              CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 20,

              ),

              Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text(qoute.qoute,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic
                      ),),

                    SizedBox(height: 1.0,),

                    Text(qoute.author,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500
                      ),
                    ),

                    SizedBox(height: 10.0,)

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