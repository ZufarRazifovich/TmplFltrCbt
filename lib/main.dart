import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proj2/logic/cubit/hello_cubit.dart';
import 'package:proj2/presentation/routes/app_router.dart';
import 'package:proj2/logic/cubit/counter_cubit.dart';

final CounterCubit _counterCubit = CounterCubit();
final HelloCubit _helloCubit = HelloCubit();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  final AppRouter _appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { //обьединяет
    return MultiBlocProvider(providers: [
      BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(),
      ),
      BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(),
      ),
    ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
          onGenerateRoute: _appRouter.onGenerateRoute,

        ));
  }
}
