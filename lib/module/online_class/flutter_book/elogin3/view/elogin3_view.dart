import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin3_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ELogin3View extends StatefulWidget {
  const ELogin3View({Key? key}) : super(key: key);

  Widget build(context, ELogin3Controller controller) {
    controller.view = this;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("ELogin3"),
      //   actions: const [],
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                // todo: img
                const SizedBox(
                  height: 127,
                ),
                Image.asset(
                  'assets/image/profile2.png',
                  // height: 112,
                  // width: 113,
                ),
                const SizedBox(
                  height: 19,
                ),
                // todo: Text 1
                const Text(
                  "Biggest collection of 300+ layouts\nfor iOS prototyping.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                // todo: Text 2
                const Text(
                  "Login with social networks",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                // todo: Row fb dan twitter
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Twitter',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(
                                Icons.facebook_sharp,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Twitter',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(
                                FontAwesomeIcons.twitter,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                // todo: Text 3
                const Text(
                  "or sign up with Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                // todo: TextField

                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Sign up',
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    suffixIcon: const Icon(
                      Icons.email,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // todo: Text 4
                const Text(
                  "Login with Email",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ELogin3View> createState() => ELogin3Controller();
}
