import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin1_controller.dart';

class ELogin1View extends StatefulWidget {
  const ELogin1View({Key? key}) : super(key: key);

  Widget build(context, ELogin1Controller controller) {
    controller.view = this;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("ELogin1"),
      //   actions: const [],
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Welcome\nto MagicBook",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'assets/image/profile1.png',
                    width: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Biggest collection of 300+ layouts\nfor iOS prototyping.',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Email Addres',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a Password',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                  minimumSize: Size(MediaQuery.of(context).size.width, 0),
                ),
                child: const Text('Login'),
              ),
              const Spacer(),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Sign up',
                  suffixIcon: Icon(
                    Icons.arrow_right,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ELogin1View> createState() => ELogin1Controller();
}
