import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Stack(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height - 20.0,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 190, 182, 183)),
          Positioned(
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                  height: MediaQuery.of(context).size.height / 2 - 20.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0)),
                      color: Colors.white))),

          //Content
          Positioned(
              top: MediaQuery.of(context).size.height / 2 + 25.0,
              left: 15.0,
              child: SizedBox(
                  height: (MediaQuery.of(context).size.height / 2) - 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(children: [
                    const Text(
                      'Preparation time',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726B68)),
                    ),
                    const SizedBox(height: 7.0),
                    const Text(
                      '5min',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: Color(0xFFC6C4C4)),
                    ),
                    const SizedBox(height: 10.0),
                    //This is the line
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Container(
                        height: 0.5,
                        color: const Color(0xFFC6C4C4),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Ingredients',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726B68)),
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                        height: 110.0,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              buildIngredientItem(
                                  'Water',
                                  const Icon(Icons.water_drop,
                                      size: 10.0, color: Colors.white),
                                  const Color(0xFF6FC5DA)),
                              buildIngredientItem(
                                  'Sugar',
                                  const Icon(Icons.fastfood,
                                      size: 18.0, color: Colors.white),
                                  const Color(0xFFF39595)),
                              const SizedBox(width: 25.0)
                            ])),
                    //Line
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Container(
                        height: 0.5,
                        color: const Color(0xFFC6C4C4),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Nutrition Information',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726B68)),
                    ),
                    const SizedBox(height: 10.0),
                    Row(children: const [
                      Text(
                        'Calories',
                        style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            color: Color(0xFFD4D3D2)),
                      ),
                      SizedBox(width: 15.0),
                      Text(
                        '250',
                        style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF716966)),
                      ),
                    ]),
                    const SizedBox(height: 10.0),
                    Row(
                      children: const <Widget>[
                        Text(
                          'Proteins',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: Color(0xFFD4D3D2)),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '10g',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF716966)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: const <Widget>[
                        Text(
                          'Caffeine',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: Color(0xFFD4D3D2)),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '150mg',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF716966)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    //Line
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Container(
                        height: 0.5,
                        color: const Color(0xFFC6C4C4),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              color: const Color(0xFF473D3A)),
                          child: const Center(
                            child: Text(
                              'Make Order',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                    const SizedBox(height: 5.0)
                  ]))),
          Positioned(
              top: MediaQuery.of(context).size.height / 10,
              left: 148.0,
              child: Container(
                  height: 290.0,
                  width: 300.0,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://th.bing.com/th/id/R.102d72cdd58f2ea4fc22575c828ca67d?rik=Njx0ZKKmsmrbwQ&riu=http%3a%2f%2fwww.freepngimg.com%2fdownload%2fcoke%2f4-2-coca-cola-picture.png&ehk=HPkx1XWIAShrYMlrMiX7GA%2bnomeGkIcp5660nWCokeY%3d&risl=&pid=ImgRaw&r=0'),
                          fit: BoxFit.cover)))),
          Positioned(
              top: 25.0,
              left: 15.0,
              child: SizedBox(
                  height: 300.0,
                  width: 250.0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //use a row with crossaxis as end
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            const SizedBox(
                              width: 150.0,
                              child: Text('Coca-Cola',
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            const SizedBox(width: 15.0),
                            Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white),
                                child: const Center(
                                    child: Icon(Icons.favorite,
                                        size: 18.0, color: Colors.red)))
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        const SizedBox(
                          width: 170.0,
                          child: Text(
                              'Whoever You Are, Whatever You Do, Wherever You May Be, When You Think of Refreshment Think of Ice Cold Coca-Cola',
                              style: TextStyle(
                                  fontSize: 13.0, color: Colors.white)),
                        ),
                        const SizedBox(height: 20.0),
                        Row(children: [
                          Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: const Color(0xFF473D3A)),
                              child: Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Text('1.1',
                                      style: TextStyle(
                                          fontSize: 13.0, color: Colors.white)),
                                  Text('/3',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Color(0xFF7C7573))),
                                ],
                              ))),
                          const SizedBox(width: 15.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(children: [
                                  const SizedBox(height: 35.0, width: 80.0),
                                  Positioned(
                                      left: 10.0,
                                      child: Container(
                                          height: 35.0,
                                          width: 35.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(17.5),
                                              border: Border.all(
                                                  color:
                                                      const Color(0xFFF3B2B7),
                                                  style: BorderStyle.solid,
                                                  width: 1.0),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      'https://livplasticsurgery.com/wp-content/uploads/gallery-bg.png'),
                                                  fit: BoxFit.cover)))),
                                  Positioned(
                                    left: 20.0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  'https://th.bing.com/th/id/OIP.GjiAVItg8P_xtbmRPJGfFgHaIO?pid=ImgDet&rs=1'),
                                              fit: BoxFit.cover),
                                          border: Border.all(
                                              color: const Color(0xFFF3B2B7),
                                              style: BorderStyle.solid,
                                              width: 1.0)),
                                    ),
                                  ),
                                ]),
                                const SizedBox(height: 3.0),
                                const Text(
                                  '+ 127 more',
                                  style: TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 12.0,
                                      color: Colors.white),
                                )
                              ])
                        ])
                      ])))
        ],
      )
    ]));
  }

  buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Column(children: [
          Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0), color: bgColor),
              child: Center(child: iconName)),
          const SizedBox(height: 4.0),
          SizedBox(
              width: 60.0,
              child: Center(
                  child: Text(name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 12.0, color: Color(0xFFC2C0C0)))))
        ]));
  }
}
