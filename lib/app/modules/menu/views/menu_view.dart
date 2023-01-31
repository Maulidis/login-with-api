import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login/login.dart';

import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  const MenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 270
        ),
        child: Column(
          children: [
            const Center(
                child:
                  Text(
                    'BERHASIL LOGIN',
                    style: TextStyle(fontSize: 20),
                  ),
            ),const SizedBox(
              height: 30,
            ),
             Padding(
               padding: const EdgeInsets.only(
                top: 0,
                left: 50,
                right: 50
               ),
               child: SizedBox(
                  width: double.infinity,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'Keluar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )),
             ),
          ],
        ),
      ),
    );
  }
}
