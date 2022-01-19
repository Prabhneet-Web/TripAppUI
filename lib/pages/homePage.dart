import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);
    super.initState();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _pageController,
      children: [
        makePage(
            image: 'lib/assets/images/one.jpeg', title: "", description: ""),
        makePage(image: 'lib/assets/images/two.jpeg', title: ""),
        makePage(image: 'lib/assets/images/three.jpeg', title: ""),
        makePage(image: 'lib/assets/images/four.jpeg', title: ""),
        makePage(image: 'lib/assets/images/five.jpeg', title: "")
      ],
    ));
  }

  Widget makePage({image, title, description}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: const [
              0.3,
              0.9
            ],
                colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.1)
            ])),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: const [
                  Text("1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Text("/4",
                      style: TextStyle(color: Colors.white, fontSize: 15))
                ],
              ),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(Icons.star,
                              color: Colors.yellow, size: 15),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(Icons.star,
                              color: Colors.yellow, size: 15),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(Icons.star,
                              color: Colors.yellow, size: 15),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(Icons.star,
                              color: Colors.yellow, size: 15),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(Icons.star,
                              color: Colors.grey, size: 15),
                        ),
                        const Text("4.0",
                            style: TextStyle(color: Colors.white70)),
                        const Text("(2300)",
                            style:
                                TextStyle(color: Colors.white38, fontSize: 12))
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(description),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
