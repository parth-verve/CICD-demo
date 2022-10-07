import 'package:flutter/material.dart';
import 'package:hivepractice/viewModel/homeViewModel.dart';
import 'package:hivepractice/ui/secondPage.dart';
import 'package:hivepractice/widgets/appButton.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController movieTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<HomeViewModel>(context, listen: false).incrementCounter();
        },
        child: const Icon(Icons.add),
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
          const SizedBox(
            height: 100,
          ),
          AppButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                ),
              );
            },
            btnLabel: "Next Page",
          ),
          // InkWell(
          //   onTap: () {
          //
          //   },
          //   child: Container(
          //     height: 50,
          //     width: 300,
          //     alignment: Alignment.center,
          //     decoration: BoxDecoration(
          //       color: Colors.blue,
          //       borderRadius: BorderRadius.circular(5),
          //     ),
          //     child: const Text(
          //       "Next Page",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontWeight: FontWeight.w600,
          //         fontSize: 20,
          //       ),
          //     ),
          //   ),
          // ),
          // Card(
          //   elevation: 5,
          //   color: Colors.black12,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       SizedBox(
          //         height: 100,
          //         width: 100,
          //         child: Image.network(
          //           "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/tVxDe01Zy3kZqaZRNiXFGDICdZk.jpg",
          //         ),
          //       ),
          //       Column(
          //         children: const [
          //           Text("Title Title Title"),
          //           Text(
          //             "Description",
          //             maxLines: null,
          //           ),
          //         ],
          //       ),
          //       InkWell(
          //           onTap: () {},
          //           child: const Icon(
          //             Icons.edit,
          //           )),
          //       InkWell(
          //           onTap: () {},
          //           child: const Icon(
          //             Icons.delete_forever,
          //           )),
          //     ],
          //   ),
          // ),
          // Center(
          //   child: Text(
          //     "Home Screen",
          //     style: TextStyle(
          //       fontSize: 28,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
