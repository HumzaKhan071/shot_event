import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'NearbyEvents.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 36,
          width: 165,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  "assets/location_pin.png",
                  color: Colors.black,
                ),
              ),
              Text(
                "Ha Noi, Viet Nam",
                style: GoogleFonts.mulish(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        actions: [Image.asset("assets/avatar.png")],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Today’s October 5th",
                style: GoogleFonts.mulish(
                  color: Color(0xff7C7C7C),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(
              height: 10,
            ),
            Text("Good Morning, Penguin!",
                style: GoogleFonts.mulish(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 48,
                width: 400,
                decoration: BoxDecoration(
                  color: Color(0xffEAE9EE),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xffB1B1BE),
                    ),
                    hintText: "Search by location or event",
                    hintStyle: GoogleFonts.mulish(
                      color: Color(0xffB1B1BE),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Text("Nearby Events",
                style: GoogleFonts.mulish(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>NearbyEventScreen()));
              
              },
              child: Container(
                height: 168,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    image: AssetImage("assets/event1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Let’s RocknRoll",
                        style: GoogleFonts.mulish(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/tick.png")
                  ],
                ),
                Container(
                    height: 41,
                    width: 44,
                    decoration: BoxDecoration(
                      color: Color(0xffE6E6E6),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/heart.png",
                      color: Colors.black,
                    ))
              ],
            ),
            Text("by William Jr.",
                style: GoogleFonts.mulish(
                  color: Color(0xff7C7C7C),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(
              height: 20,
            ),
            Text("Upcoming Events",
                style: GoogleFonts.mulish(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 20,
            ),
            MyContainer(
                image: "assets/event2.png",
                title: "Festival Dancer",
                subtitle: "By Linkin Park.",
                time: "October 21, 09:00 PM"),
            SizedBox(
              height: 10,
            ),
            MyContainer(
              image: "assets/event3.png",
              title: "Lantern Festival",
              subtitle: "By Suku Ahong",
              time: "October 26, 10:00 PM",
            ),
          ],
        ),
      )),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String image;
  const MyContainer({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(image),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: GoogleFonts.mulish(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
              Text(subtitle,
                  style: GoogleFonts.mulish(
                    color: Color(0xff7C7C7C),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset("assets/clock.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(time,
                      style: GoogleFonts.mulish(
                        color: Color(0xff7C7C7C),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
