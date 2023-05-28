import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:apptask/components/data/appdata/profiledata/profile_screen_bar.dart';
import 'package:apptask/controlar/navigator_helper.dart';
import 'package:apptask/view/appscreen/homescreen/cart_screens/cheak_out_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../components/customization/Custom_productbox.dart';
import '../../../../controlar/cubit/cart_cubut/cubit/cubit/cart_cubit.dart';

class CartScereen extends StatelessWidget {
  const CartScereen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            return Column(
              children: [
                Flexible(
                  flex: 3,
                  child: ListView(children: [
                    ProfileScreenbar.profilebar(context, title: "Your Cart "),
                    const SizedBox(
                      height: 15,
                    ),
                    const Center(child: Text("5 Products")),
                    const SizedBox(
                      height: 15,
                    ),
                    Boxdata.databox(
                      context,
                      index: 0,
                      onTap: () {
                        CartCubit.ordernumber(context).increment().toString();
                      },
                      cubitnumber:CartCubit.ordernumber(context).num1.toString() ,
                   onTap2: () {
                        CartCubit.ordernumber(context).decrement().toString();
                      },
                    ),
                  Boxdata.databox(
                      context,
                      index: 1,
                      onTap: () {
                        CartCubit.ordernumber(context).increment2().toString();
                      },
                      cubitnumber:CartCubit.ordernumber(context).num2.toString() ,
                   onTap2: () {
                        CartCubit.ordernumber(context).decrement2().toString();
                      },),
                  Boxdata.databox(
                      context,
                      index: 2,
                      onTap: () {
                        CartCubit.ordernumber(context).increment3().toString();
                      },
                      cubitnumber:CartCubit.ordernumber(context).num3.toString() ,
                   onTap2: () {
                        CartCubit.ordernumber(context).decrement3().toString();
                      },),
                  Boxdata.databox(
                      context,
                      index: 3,
                      onTap: () {
                        CartCubit.ordernumber(context).increment4().toString();
                      },
                      cubitnumber:CartCubit.ordernumber(context).num4.toString() ,
                   onTap2: () {
                        CartCubit.ordernumber(context).decrement4().toString();
                      },),
                  Boxdata.databox(
                      context,
                      index: 4,
                      onTap: () {
                        CartCubit.ordernumber(context).increment5().toString();
                      },
                      cubitnumber:CartCubit.ordernumber(context).num5.toString() ,
                   onTap2: () {
                        CartCubit.ordernumber(context).decrement5().toString();
                      },),
                                
                  ]),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Sub Toltal'),
                              Text(
                                '150.0',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Toltal'),
                                Text(
                                  '170.0',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ])
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigatorhelper.navigatpush(
                                  context, const CheckoutScreen());
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.deepPurple),
                                fixedSize: MaterialStatePropertyAll(
                                    Size.fromHeight(50))),
                            child: const Text(
                              "Cheak Out",
                              style: TextStyle(fontSize: 20),
                            )))
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
