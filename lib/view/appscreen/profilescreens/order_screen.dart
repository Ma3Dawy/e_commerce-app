import 'package:apptask/components/data/appdata/profiledata/order_data.dart';
import 'package:flutter/material.dart';
import '../../../components/data/appdata/profiledata/profile_screen_bar.dart';
import '../../../controlar/cubit/order_cubit/orderstate_cubit.dart';
import '../../../controlar/cubit/thems_cubit/thems_cubit.dart';

class Orderscreen extends StatelessWidget {
  const Orderscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            ThemsCubit.get(context).darkmood ? Colors.black : Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              ProfileScreenbar.profilebar(context, title: "My Ordare"),
              Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  child: Orderdata(
                      date: '7/9/2022',
                      totalprice: 1500,
                      states:
                          OrderstateCubit.cheakstate(context).orderstate())),
              Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  child: Orderdata(
                      date: '7/9/2022',
                      totalprice: 1500,
                      states:
                          OrderstateCubit.cheakstate(context).orderstate2())),
              Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  child: Orderdata(
                      date: '7/9/2022',
                      totalprice: 1500,
                      states:
                          OrderstateCubit.cheakstate(context).orderstate3())),
              Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  child: Orderdata(
                      date: '7/9/2022',
                      totalprice: 1500,
                      states:
                          OrderstateCubit.cheakstate(context).orderstate3())),
            ],
          ),
        ));
  }
}
