import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proj2/data_service.dart';
import 'package:proj2/logic/cubit/counter_cubit.dart';

class FourScreen extends StatefulWidget {
  const FourScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<FourScreen> createState() => _FourScreenState();
}

class _FourScreenState extends State<FourScreen> {
  String _response = '';
  int _counter = 0;
  final _dataService = DataService();

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
            Builder(
              builder: (_) {
                if(_response != ''){
                  return Text(_response);
                }else{
                  return MaterialButton(onPressed: (){_makeRequest();}, color: Colors.orangeAccent, child: Text('Make Request'),);

                }
              }
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  void _makeRequest() async {
    final respone = await _dataService.makeRequestFromApi();
    setState(() => _response = respone.toString());
  }
}
