import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin2_controller.dart';

class ELogin2View extends StatefulWidget {
  const ELogin2View({Key? key}) : super(key: key);

  Widget build(context, ELogin2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin2"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image/profile1.png',
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Scheme\niOS Wireframe\nLayouts",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Biggest collection of 300+ layouts\nfor iOS prototyping.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              const Text(
                "Use Facebook to find your friends",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                  minimumSize: Size(MediaQuery.of(context).size.width, 0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Log In with Facebook',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.facebook_sharp),
                  ],
                ),
              ),
              const SizedBox(
                height: 54,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ELogin2View> createState() => ELogin2Controller();
}
