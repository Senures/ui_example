import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.camera_alt_outlined,
          color: Colors.black54,
          size: 30.0,
        ),
        centerTitle: true,
        title: Image.asset(
          "assets/img.png",
          width: 120.0,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.telegram,
              size: 30.0,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Stories",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0)),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                    label: const Text(
                      "Watch all",
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
                height: 100.0,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  removeBottom: true,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Column(
                            children: [
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                width: 80.0,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                                child: Stack(
                                  children: [
                                    Container(
                                      child: Image.network(
                                          "https://images.unsplash.com/photo-1474978528675-4a50a4508dc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                                    )
                                  ],
                                ),
                              ),
                              Text("Your Story")
                            ],
                          );
                        } else {
                          return Column(
                            children: [
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                width: 50.0,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                                child: Image.network(
                                    "https://images.unsplash.com/photo-1474447976065-67d23accb1e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                              ),
                              Text("pouros")
                            ],
                          );
                        }
                      }),
                )),
          ),
          const Divider(
            color: Colors.black38,
            thickness: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 180.0,
                  // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        width: 40.0,
                        decoration: BoxDecoration(
                            color: Colors.amber, shape: BoxShape.circle),
                        child: Image.network(
                            "https://images.unsplash.com/photo-1614283233556-f35b0c801ef1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                      ),
                      Text("westley.winder")
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1579783483458-83d02161294e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=497&q=80"))),
            ),
          )
        ],
      ),
    );
  }
}
