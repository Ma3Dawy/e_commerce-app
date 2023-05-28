import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../controlar/cubit/order_cubit/orderstate_cubit.dart';

class Orderdata extends ConsumerWidget {
  Orderdata({
    super.key,
    required this.date,
    required this.totalprice,
    required this.states,
  });
  final String date;
  final int number = Random.secure().nextInt(50);
  final double totalprice;
  final String states;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocBuilder<OrderstateCubit, OrderstateState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Order#",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(
                  "26919451$number",
                  style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Date"),
                Text(date),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total Price",
                ),
                Text(totalprice.toString()),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Status",
                ),
                Text(states)
              ],
            ),
            states == "Pending"
                ? Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.deepPurple)),
                          child: const Text("Details",
                              style: TextStyle(
                                color: Colors.white,
                              ))),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.grey)),
                          child: const Text(
                            "Track",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  )
                : Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.deepPurple)),
                          child: const Text("Details",
                              style: TextStyle(
                                color: Colors.white,
                              ))),
                    ],
                  ),
          ]),
        );
      },
    );
  }
}
