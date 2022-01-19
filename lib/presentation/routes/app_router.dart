import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:proj2/presentation/screens/home_screen.dart';
import 'package:proj2/presentation/screens/second_screen.dart';
import 'package:proj2/presentation/screens/third_screen.dart';

class AppRouter{
  Route? onGenerateRoute(RouteSettings routerSettings){
    switch(routerSettings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>HomeScreen(title: 'one',));
        break;
      case '/second':
        return MaterialPageRoute(builder: (_)=>SecondScreen(title: 'two',));
        break;
      case '/three':
        return MaterialPageRoute(builder: (_)=>ThirdScreen(title: 'Three',));
        break;


      default: return null;
    }
  }
}



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc_concepts/logic/cubit/counter_cubit.dart';
// import 'package:flutter_bloc_concepts/presentation/screens/home_screen.dart';
// import 'package:flutter_bloc_concepts/presentation/screens/second_screen.dart';
// import 'package:flutter_bloc_concepts/presentation/screens/third_screen.dart';
//
// class AppRouter{
//   final CounterCubit _counterCubit = CounterCubit();
//   Route onGenerateRoute(RouteSettings routerSettings){
//     switch(routerSettings.name){
//       case '/':
//         return MaterialPageRoute(builder: (_)=>BlocProvider.value(
//           value: _counterCubit,
//           child: HomeScreen(title: 'первая страничка', color: Colors.blueAccent,),
//         ));
//         break;
//
//       case '/second':
//         return MaterialPageRoute(builder: (_)=>BlocProvider.value(
//           value: _counterCubit,
//           child: SecondScreen(title: 'vtoraya страничка', color: Colors.greenAccent,),
//         ));
//         break;
//
//
//       case '/third':
//         return MaterialPageRoute(builder: (_)=>BlocProvider.value(
//           value: _counterCubit,
//           child: ThirdScreen(title: 'tretia страничка', color: Colors.redAccent,),
//         ));
//         break;
//       default: return null;
//     }
//   }
// }