import 'package:apptask/controlar/cubit/language_cubit/cubit/language_cubit.dart';
import 'package:apptask/controlar/cubit/order_cubit/orderstate_cubit.dart';
import 'package:apptask/view/appscreen/homescreen.dart';
import 'package:apptask/view/loginscreen/login_screen.dart';
import 'package:apptask/view/loginscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controlar/cubit/color_cubit/color_cheakbox_cubit.dart';
import '../controlar/cubit/edit_profile_cubit/cubit/edit_cubit.dart';
import '../controlar/cubit/switch_cubit/cubit/switch_cubit.dart';
import '../controlar/cubit/thems_cubit/thems_cubit.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemsCubit(),
        ),
        BlocProvider(
          create: (context) => ColorCheakboxCubit(),
        ),
        BlocProvider(
          create: (context) => OrderstateCubit(),
        ),
        BlocProvider(
          create: (context) => EditCubit(),
        ),BlocProvider(
          create: (context) => SwitchCubit(),
        ), BlocProvider(
          create: (context) => LanguageCubit(),
        ),
      ],
      child:  BlocBuilder<ThemsCubit, ThemsState>(
        builder: (context, state) {
          return MaterialApp(

              theme: ThemsCubit.get(context).darkmood?ThemeData.dark():ThemeData.light(),
              debugShowCheckedModeBanner: false,
              home:Splashscreen(),
            );
        },
      ),
    );
  }
}
