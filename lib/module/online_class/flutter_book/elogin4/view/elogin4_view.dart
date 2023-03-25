import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin4_controller.dart';

class ELogin4View extends StatefulWidget {
  const ELogin4View({Key? key}) : super(key: key);

  Widget build(context, ELogin4Controller controller) {
    controller.view = this;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("ELogin4"),
      //   actions: const [],
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          padding: const EdgeInsets.only(top: 50.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 31,
                ),
                Image.asset(
                  "assets/image/profile1.png",
                ),
                const SizedBox(
                  height: 85,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 75,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ELogin4View> createState() => ELogin4Controller();
}
