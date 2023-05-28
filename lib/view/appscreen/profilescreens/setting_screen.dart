import 'package:apptask/components/data/appdata/profiledata/profile_screen_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../components/data/appdata/profiledata/custom_setting_data.dart';
import '../../../controlar/cubit/language_cubit/cubit/language_cubit.dart';
import '../../../controlar/cubit/switch_cubit/cubit/switch_cubit.dart';
import '../../../controlar/cubit/thems_cubit/thems_cubit.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, state) {
          return ListView(
            children: [
              ProfileScreenbar.profilebar(context, title: "Setting"),
              BlocBuilder<SwitchCubit, SwitchState>(
                builder: (context, state) {
                  return Costomsitingdata.coustomdata(
                    context,
                    title: 'Push Notifications',
                    subtiltel: "OFF/ON",
                    switchs: SwitchCubit.switchs(context).intstat,
                    onTap: (value) {
                      value = SwitchCubit.switchs(context).changestate();
                    },
                  );
                },
              ),
              BlocBuilder<ThemsCubit, ThemsState>(
                builder: (context, state) {
                  return Costomsitingdata.coustomdata(
                    context,
                    title: "Theme",
                    subtiltel: "Light / Dark",
                    switchs: ThemsCubit.get(context).darkmood,
                    onTap: (value) {
                      value = ThemsCubit.get(context).changemode();
                    },
                  );
                },
              ),
              Card(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                        "Languages",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    DropdownButton(
                      value: LanguageCubit.cheakstate(context).pos,
                      items: LanguageCubit.cheakstate(context)
                          .langouges
                          .map(
                              (s) => DropdownMenuItem(value: s, child: Text(s,style: const TextStyle(fontWeight: FontWeight.bold),)))
                          .toList(),
                      onChanged: (value) {
                        LanguageCubit.cheakstate(context).langaugestate(value!);
                      },
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
