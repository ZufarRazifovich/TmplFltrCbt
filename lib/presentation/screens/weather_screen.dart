import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget{



  WeatherScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _loginForm()
    );
  }


  Widget _loginForm(){
    return Column(
      key: _formKey,
      children: [
        SizedBox(height: 54,),
        _userNameField(),
        SizedBox(height: 11,),
        _passwordField(),
        SizedBox(height: 11,),
        _loginButton(),
      ],
    );
  }

  Widget _passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.security),
        hintText: 'Password',
      ),
      validator: (value) =>null,
    );
  }
  Widget _userNameField(){
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        hintText: 'user name'
      ),
      validator: (value) =>null,
    );
  }
  Widget _loginButton(){
    return ElevatedButton(
      onPressed: (){},
      child: Text('Login'),
    );
  }
}