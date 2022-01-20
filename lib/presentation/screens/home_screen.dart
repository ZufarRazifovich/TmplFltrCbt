import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proj2/logic/cubit/counter_cubit.dart';
import 'package:proj2/logic/cubit/hello_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(child: Text('Главная'),
                  onPressed:(){Navigator.of(context).pushNamed('/');},
                  color: Colors.blueAccent,
                ),
                SizedBox(width: 11,),
                MaterialButton(child: Text('go second'),
                  onPressed:(){Navigator.of(context).pushNamed('/second');},
                  color: Colors.blueAccent,
                ),
                SizedBox(width: 11,),
                MaterialButton(child: Text('go third'),
                  onPressed:(){Navigator.of(context).pushNamed('/three');},
                  color: Colors.blueAccent,
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              MaterialButton(child: Text('sign in'),
                onPressed:(){Navigator.of(context).pushNamed('/login');},
                color: Colors.blueAccent,
              ),
              SizedBox(height: 100, width: 30,),
              MaterialButton(child: Text('request'),
                onPressed:(){Navigator.of(context).pushNamed('/four');},
                color: Colors.blueAccent,
              ),
            ],),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                if (state.counterValue > 0) {
                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('Incremented')));
                } else {
                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('Decremented')));
                }
              },
              builder: (context, state) {
                return Column(
                  children: [
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      state.counterValue.toString(),
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline4,
                    ),
                    MaterialButton(onPressed: (context.read<CounterCubit>().returnValuePlus), child: Text('+'), color: Colors.orangeAccent,),
                    MaterialButton(onPressed: (context.read<CounterCubit>().returnValueMinus), child: Text('-'), color: Colors.orangeAccent,)
                  ],
                );
              },
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterCubit>().returnValuePlus,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
