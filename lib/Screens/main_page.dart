import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Welcome, Adesh',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: NetworkImage(
                                'https://th.bing.com/th/id/R.eda55018b843cab8041aa801d9b6761c?rik=T2y4N5AjzoGLPw&pid=ImgRaw&r=0',
                              ),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 45.0),
              child: Text('The bottle that quenches your thirst.',
                  style: TextStyle(fontSize: 17, color: Color(0xFFB0AAA7))),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Text(
                    'Taste of the day',
                    style: TextStyle(fontSize: 17, color: Color(0xFF473D3A)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 15, color: Color(0xFFCEC7C4)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 410,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  mydrinks(
                    'https://th.bing.com/th/id/R.cc6eb73e51b82dcd3f7228c992cb32b9?rik=3X7dSzw3V4pw8g&pid=ImgRaw&r=0',
                    'Coke',
                    'Ashwin Kirana',
                    ' Coca-Cola ... pure drink of natural flavors',
                    'Rs.150',
                  ),
                  mydrinks(
                      'https://th.bing.com/th/id/R.4d894907126eb6538ba8064d0c96162f?rik=%2b%2fHlIh0cIwUnDg&pid=ImgRaw&r=0',
                      'Fanta',
                      'Mahesh Chiso',
                      'Official Soft Drink of Summer',
                      'Rs.200'),
                  mydrinks(
                      'https://www.pnglib.com/wp-content/uploads/2020/08/mountain-dew-bucket_5f34aeb1c481a.png',
                      'Dew',
                      'Hamro Dew',
                      'You Can\'t Beat The Real Thing.',
                      'Rs.200'),
                  mydrinks(
                      'https://pluspng.com/img-png/sprite-hd-png-sprite-901.png',
                      'Sprite',
                      'Pure Chiso',
                      'Life tastes good.',
                      'Rs.300')
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 125,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  cafeshop(
                      'https://sweetteawithlemon.com/wp-content/uploads/2017/08/Cafe-Con-Leche-W-watermark11b.jpg'),
                  cafeshop(
                      'https://sweetteawithlemon.com/wp-content/uploads/2017/08/Cafe-Con-Leche-W-watermark11b.jpg'),
                  cafeshop(
                      'https://sweetteawithlemon.com/wp-content/uploads/2017/08/Cafe-Con-Leche-W-watermark11b.jpg'),
                  cafeshop(
                      'https://sweetteawithlemon.com/wp-content/uploads/2017/08/Cafe-Con-Leche-W-watermark11b.jpg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  cafeshop(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        height: 100,
        width: 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: NetworkImage(imagePath))),
      ),
    );
  }

  mydrinks(
    String image,
    String drinksName,
    String shopName,
    String descp,
    String price,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: SizedBox(
          height: 300,
          width: 225,
          child: Column(children: [
            Stack(
              children: [
                Container(
                  height: 335,
                ),
                Positioned(
                    top: 75.0,
                    child: Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                      height: 260.0,
                      width: 225.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: const Color(0xFFDAB68C)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 60.0,
                          ),
                          Text(
                            '$shopName\'s',
                            style: const TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            drinksName,
                            style: const TextStyle(
                                fontFamily: 'varela',
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            descp,
                            style: const TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                // fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  price,
                                  style: const TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF3A4742)),
                                ),
                                Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.white),
                                    child: const Center(
                                        child:
                                            Icon(Icons.favorite, size: 15.0)))
                              ])
                        ],
                      ),
                    )),
                Positioned(
                    left: 60.0,
                    top: 25.0,
                    child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(image),
                                fit: BoxFit.contain))))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const DetailsPage()));
              },
              child: Container(
                  height: 50.0,
                  width: 225.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: const Color(0xFF473D3A)),
                  child: const Center(
                      child: Text('Order Now',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)))),
            )
          ])),
    );
  }
}
