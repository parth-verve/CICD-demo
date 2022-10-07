import 'package:flutter/material.dart';
import 'package:hivepractice/viewModel/homeViewModel.dart';
import 'package:hivepractice/widgets/appButton.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<HomeViewModel>(context, listen: false).decrementCounter();
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset('assets/images/minus.png', color: Colors.white,),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<HomeViewModel>(
            builder: (context, value, child) {
              return Center(
                child: Text(
                  "Count : ${value.counter}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              );
            },
          ),
            // parth@987#
          const SizedBox(
            height: 100,
          ),
          AppButton(
            onTap: () {
              Navigator.pop(context);
            },
            btnLabel: "Previous Page",
          ),
        ],
      ),
    );
  }
}
