import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class NearbyEventScreen extends StatelessWidget {
  const NearbyEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
            centerTitle: true,
            title: Text("Nearby Events",
                style: GoogleFonts.mulish(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            actions: [Image.asset("assets/heart.png")]),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 354,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    image: DecorationImage(
                      image: AssetImage("assets/event_1_big.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 65,
                        width: 47,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Oct",
                                style: GoogleFonts.mulish(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 14,
                                )),
                            Text("5",
                                style: GoogleFonts.mulish(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: 90),
                      Container(
                        height: 152,
                        width: 372,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Let’s RocknRoll",
                                    style: GoogleFonts.mulish(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    )),
                                SizedBox(width: 8),
                                Image.asset("assets/tick.png")
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("by William Jr.",
                                style: GoogleFonts.mulish(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                )),
                            SizedBox(height: 20),
                            Container(
                              height: 60,
                              width: 321,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xffF3F3F3),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("2.4 km",
                                          style: GoogleFonts.mulish(
                                            color: Colors.black,
                                            fontSize: 16,
                                          )),
                                      Text("Hai Ba Trung, Ha Noi",
                                          style: GoogleFonts.mulish(
                                            color: Colors.black,
                                            fontSize: 12,
                                          )),
                                    ],
                                  ),
                                  Container(
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle),
                                      child: Image.asset(
                                          "assets/location_pin.png"))
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text("About",
                    style: GoogleFonts.mulish(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 10),
                Text.rich(TextSpan(
                    text:
                        "Let's RocknRoll is an outdoor music festival, with passionate bands and fiery vocals that will make the space go crazy. We have music, parties, supercars...",
                    style: GoogleFonts.mulish(
                        color: Color(0xff7C7C7C),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    children: <InlineSpan>[
                      TextSpan(
                        text: "Read more",
                        style: GoogleFonts.mulish(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ])),
                SizedBox(height: 20),
                Text("Timeline Event",
                    style: GoogleFonts.mulish(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 10),
                Container(
                  height: 40,
                  width: 382,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffEAE9EE),
                    borderRadius: BorderRadius.circular(37),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Opening",
                          style: GoogleFonts.mulish(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          )),
                      Row(children: [
                        Image.asset("assets/clock.png"),
                        SizedBox(width: 5),
                        Text("October 21, 09:00 PM",
                            style: GoogleFonts.mulish(
                              color: Color(0xff7C7C7C),
                              fontSize: 12,
                            )),
                      ])
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 40,
                  width: 382,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffEAE9EE),
                    borderRadius: BorderRadius.circular(37),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Opening",
                          style: GoogleFonts.mulish(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          )),
                      Row(children: [
                        Image.asset("assets/clock.png"),
                        SizedBox(width: 5),
                        Text("October 26, 10:00 PM",
                            style: GoogleFonts.mulish(
                              color: Color(0xff7C7C7C),
                              fontSize: 12,
                            )),
                      ])
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: 56,
                  width: 382,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(53),
                  ),
                  child: TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            isDismissible: true,
                            enableDrag: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) => DraggableScrollableSheet(
                                  builder: ((context, scrollController) =>
                                      Container(
                                          padding: EdgeInsets.only(
                                              top: 20,
                                              left: 20,
                                              right: 28,
                                              bottom: 20),
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 208,
                                                    width: 382,
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24),
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                            "Let’s RocknRoll Ticket",
                                                            style: GoogleFonts.mulish(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        SizedBox(height: 5),
                                                        Text(
                                                          "by William Jr.",
                                                          style: GoogleFonts
                                                              .mulish(
                                                            color: Color(
                                                                0xffB4B4B4),
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Container(
                                                          height: 72,
                                                          width: 329,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16),
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    "09:00 PM",
                                                                    style: GoogleFonts.mulish(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w500),
                                                                  ),
                                                                  Text(
                                                                    "10:00 PM",
                                                                    style: GoogleFonts.mulish(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w500),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                  height: 5),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    "October 20",
                                                                    style: GoogleFonts
                                                                        .mulish(
                                                                      color: Color(
                                                                          0xff7C7C7C),
                                                                      fontSize:
                                                                          10,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "October 21",
                                                                    style: GoogleFonts
                                                                        .mulish(
                                                                      color: Color(
                                                                          0xff7C7C7C),
                                                                      fontSize:
                                                                          10,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 180,
                                                    width: 382,
                                                    padding: EdgeInsets.all(20),
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24),
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                            "0xe60FE3Fd9e...4E420",
                                                            style: GoogleFonts
                                                                .mulish(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 14,
                                                            )),
                                                        SizedBox(height: 20),
                                                        Image.asset(
                                                            "assets/qr.png"),
                                                        SizedBox(height: 10),
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  shape: BoxShape
                                                                      .circle),
                                                                      child: Image.asset("assets/download.png"),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                  top: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.22,
                                                  child: Image.asset(
                                                      "assets/line_circle.png")),
                                            ],
                                          ))),
                                ));
                      },
                      child: Text(
                        "Get a Ticket",
                        style: GoogleFonts.mulish(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
