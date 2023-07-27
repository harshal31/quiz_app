import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CakeScreen extends StatelessWidget {
  const CakeScreen({super.key});

  @override
  Widget build(BuildContext context) => createCake();

  Widget createCake() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/cake.png",
              width: double.infinity,
            ),
            belowCake()
          ],
        ),
      ),
    );
  }
}

Widget belowCake() {
  return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            "Strawberry Pavlova",
            style: GoogleFonts.jetBrainsMono(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 20.0),
          Text(
            "Pavlova is meringue-based dessert named after the russian ballerina Anna Pavlova, Pavlova features a crisp crust and soft light inside, topped with fruit and whipped cream",
            style: GoogleFonts.jetBrainsMono(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10.0),
          starAndReviewsSection()
        ],
      ));
}

Widget starAndReviewsSection() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0),
    child: Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RatingBarIndicator(
                rating: 4.5,
                itemCount: 5,
                itemSize: 30.0,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(width: 40.0),
              Expanded(
                child: Text(
                  "170 Reviews sjkabdjbasbdas dkjasbksjdbkas daskbbdkjbask da sdkbaskbndka kasjdasjdhksa dsakjbdkabsj",
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  maxLines: 3,
                ),
              )
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              Column(
                children: [
                  const Icon(
                    Icons.gif_box,
                    size: 20.0,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    "Prep:",
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                  Text(
                    "25 Min",
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    const Icon(
                      Icons.cookie,
                      size: 20.0,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Cook:",
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 14.0),
                    Text(
                      "1 hr",
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  const Icon(
                    Icons.feed,
                    size: 20.0,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    "Feeds:",
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                  Text(
                    "25 Min",
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
