import 'package:animated_co/bloc/log_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: _MyHomePageState());
  }
}

class _MyHomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LogBloc>(
      create: (context) => LogBloc(),
      child: Scaffold(
        body: Container(
          color: Colors.orange,
          child: Center(
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: SizedBox.square(
                dimension: 400,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                          child: Text(
                        'يرجى تسجيل الدخول',
                      )),
                      TextField(),
                      TextField(),
                      OutlinedButton(
                          onPressed: () {
                            context.read<LogBloc>().add(TryToLogIn());
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage()),
                            );
                          },
                          child: Text('متابعة'))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LogBloc, LogState>(
        builder: (context, state) {
          if (state is Success)
            return Container(
              color: Colors.red,
            );
          else if (state is Falied)
            return CircularProgressIndicator();
          else
            return Center(
              child: FlutterLogo(),
            );
        },
      ),
    );
  }
}
