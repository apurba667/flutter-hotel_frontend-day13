import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var photos = [
    "https://www.ihgplc.com/-/media/ihg/images/brands/regent/regent_carousel_1.jpg",
    "https://www.lux-review.com/wp-content/uploads/2019/09/turkish-hotel.jpg",
    "https://www.dianamiaus.com/wp-content/uploads/2017/05/IMG_9725.jpg",
    "https://www.princehotels.com/wp-content/uploads/2019/04/aboutslider2-1.jpg",
    "https://www.swissotel.com/assets/0/92/3686/3768/3770/6442451433/ae87da19-9f23-450a-8927-6f4c700aa104.jpg",
    "https://www.ihgplc.com/-/media/ihg/images/brands/regent/regent_carousel_1.jpg",
    "https://www.lux-review.com/wp-content/uploads/2019/09/turkish-hotel.jpg",
    "https://www.dianamiaus.com/wp-content/uploads/2017/05/IMG_9725.jpg",
    "https://www.princehotels.com/wp-content/uploads/2019/04/aboutslider2-1.jpg",
    "https://www.swissotel.com/assets/0/92/3686/3768/3770/6442451433/ae87da19-9f23-450a-8927-6f4c700aa104.jpg",
    "https://www.ihgplc.com/-/media/ihg/images/brands/regent/regent_carousel_1.jpg",
    "https://www.lux-review.com/wp-content/uploads/2019/09/turkish-hotel.jpg",
    "https://www.dianamiaus.com/wp-content/uploads/2017/05/IMG_9725.jpg",
    "https://www.princehotels.com/wp-content/uploads/2019/04/aboutslider2-1.jpg",
    "https://www.swissotel.com/assets/0/92/3686/3768/3770/6442451433/ae87da19-9f23-450a-8927-6f4c700aa104.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 5,
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
          ),
        ),
        title: Text(
          "Hotels",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hotels for You"),
                      Spacer(),
                      Icon(Icons.edit),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 8)),
                  Text("150 results for you"),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: photos.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(photos[index])),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      height: 5,
                      width: 50,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.38,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 6,
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  alignment: Alignment.topCenter,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "World leargest resort",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        maxRadius: 20,
                                        child: Icon(
                                          Icons.edit,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://www.princehotels.com/wp-content/uploads/2019/04/aboutslider2-1.jpg",
                                          ),
                                          fit: BoxFit.cover)),
                                )),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "\$600.00",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text("Booking ID: 123421")
                                        ],
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.book_online,
                                          color: Colors.green,
                                        ),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.grey, width: 2)),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Facilities"), Text("See more")],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.plumbing_outlined,
                                  color: Colors.green,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.grey, width: 2)),
                              ),
                              Text("Swiming")
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.plumbing_outlined,
                                  color: Colors.green,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.grey, width: 2)),
                              ),
                              Text("Swiming")
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.plumbing_outlined,
                                  color: Colors.green,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.grey, width: 2)),
                              ),
                              Text("Swiming")
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.plumbing_outlined,
                                  color: Colors.green,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.grey, width: 2)),
                              ),
                              Text("Swiming")
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                  left: 80,
                  right: 80,
                  bottom: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Icon(Icons.book_online), Text("Booking Now")],
                    ),
                  ))
            ],
          )),
    );
  }
}
