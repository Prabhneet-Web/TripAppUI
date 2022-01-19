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
            image: 'lib/assets/images/one.jpeg',
            title: "Taj Mahal",
            page: "1",
            description:
                "An immense mausoleum of white marble, built in Agra between 1631 and 1648 by order of the Mughal emperor Shah Jahan in memory of his favourite wife, the Taj Mahal is the jewel of Muslim art in India and one of the universally admired masterpieces of the world's heritage."),
        makePage(
            image: 'lib/assets/images/two.jpeg',
            title: "Golden Temple",
            page: "2",
            description:
                "The Golden temple is famous for its full golden dome, it is one of the most sacred pilgrim spots for Sikhs. The Mandir is built on a 67-ft square of marble and is a two storied structure. Maharaja Ranjit Singh had the upper half of the building built with approximately 400 kg of gold leaf."),
        makePage(
            image: 'lib/assets/images/three.webp',
            title: "Qutub Minar",
            page: "3",
            description:
                "The Qutub Minar is a towering 73 meter high tower built by Qutub-ud-Din Aibak in 1193. The tower was built to celebrate Muslim dominance in Delhi after the defeat of Delhi's last Hindu ruler. This tower is the highest tower in India, complete with five storeys and projecting balconies."),
        makePage(
            image: 'lib/assets/images/four.jpeg',
            title: "Akshardham",
            page: "4",
            description:
                "Swaminarayan Akshardham is a Hindu temple, and spiritual-cultural campus in Delhi, India. The temple is close to the border with Noida. Also referred to as Akshardham Temple or Akshardham Delhi, the complex displays millennia of traditional and modern Hindu culture, spirituality, and architecture."),
        makePage(
            image: 'lib/assets/images/five.jpeg',
            title: "Lotus Temple",
            page: "5",
            description:
                "The Lotus Temple, located in Delhi, India, is a Baháʼí House of Worship that was dedicated in December 1986. Notable for its flowerlike shape, it has become a prominent attraction in the city. Like all Houses of Worship, the Lotus Temple is open to all, regardless of religion or any other qualification.")
      ],
    ));
  }

  Widget makePage({image, title, description, page}) {
    int totalPage = 4;

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
                children: [
                  Text(page,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Text("/ ${totalPage.toString()}",
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
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Text(
                        description,
                        style: const TextStyle(color: Colors.white30),
                      ),
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
