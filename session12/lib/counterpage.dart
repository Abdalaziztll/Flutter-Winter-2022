import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session12/bloc/bloc/counterbloc_bloc.dart';

double width = 200;
double height = 200;

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () =>
                      context.read<CounterblocBloc>().add(Evnet1()),
                  child: Text('change to the state 1')),
              TextButton(
                  onPressed: () =>
                      context.read<CounterblocBloc>().add(Evnet2()),
                  child: Text('change to the state 2')),
              TextButton(
                  onPressed: () =>
                      context.read<CounterblocBloc>().add(Evnet3()),
                  child: Text('change to the state 3'))
            ],
          ),
        ));
  }
}
