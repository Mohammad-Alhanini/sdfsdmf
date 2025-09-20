import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xff2382AA),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.location_on, color: Color(0xff15546E)),
                            Text("Algiers, 476CP..."),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "|",
                      style: TextStyle(color: Color(0xff979899), fontSize: 38),
                    ),
                    SizedBox(width: 8),

                    Image.asset('assets/images/png/motorbike.png', width: 35),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Free delivery",
                          style: TextStyle(
                            color: Color(0xff979899),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "800da + ⓘ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(width: 22),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0x49979899),
                      child: Image.asset(
                        'assets/images/png/profile.png',
                        width: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What are u looking for ?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 125,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.sizeOf(context).width / 1.2,
                      height: 200,
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        'assets/images/png/discount1.png',
                        width: MediaQuery.sizeOf(context).width / 1.2,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff2382AA),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Wrap(children: []),
            ],
          ),
        ),
      ),
    );
  }
}
