import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttermultiblocinmultipage/bloc/color_bloc.dart';
import 'package:fluttermultiblocinmultipage/bloc/counter_bloc.dart';
import 'package:fluttermultiblocinmultipage/ui/draft_page.dart';
import 'package:fluttermultiblocinmultipage/ui/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => Text(number.toString(), style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
              RaisedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SecondPage()));
                },
                child: Text("Click To Change", style: TextStyle(color: Colors.white),),
                color: color,
                shape: StadiumBorder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
