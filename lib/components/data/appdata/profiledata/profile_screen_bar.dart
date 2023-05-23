import 'package:flutter/material.dart';

import '../../../../controlar/cubit/thems_cubit/thems_cubit.dart';
import '../../../../controlar/navigator_helper.dart';

class ProfileScreenbar {
  static profilebar(BuildContext context, {required String title}) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigatorhelper.navigatpop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: ThemsCubit.get(context).darkmood
                  ? Colors.white
                  : Colors.black,
            )),
        SizedBox(width: MediaQuery.of(context).size.width * .25),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color:
                ThemsCubit.get(context).darkmood ? Colors.white : Colors.black,
          ),
        )
      ],
    );
  }

  static profilebarwithadd(BuildContext context, {required String title}) {
    return ListTile(
      title: Center(
        child: Text(
          title,
          style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: ThemsCubit.get(context).darkmood ? Colors.white : Colors.black,),
        ),
      ),
      leading: IconButton(
          onPressed: () {
            Navigatorhelper.navigatpop(context);
          },
          icon:  Icon(Icons.arrow_back,color:ThemsCubit.get(context).darkmood ? Colors.white : Colors.black, ),),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color:
                ThemsCubit.get(context).darkmood ? Colors.white : Colors.black,
          )),
    );
  }
}
