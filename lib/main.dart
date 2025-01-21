import 'package:flutter/material.dart';
import 'package:flutter_internship_challenge/booking_card.dart';
import 'package:flutter_internship_challenge/detail_card.dart';
import 'package:flutter_internship_challenge/text_formatting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                double opacity = (constraints.maxHeight - kToolbarHeight) / 200;
                opacity = opacity.clamp(0.0, 1.0);
                Color backgroundColor =
                    Color.lerp(Colors.transparent, Colors.white, opacity)!;
                Color titleColor =
                    Color.lerp(Colors.black, Colors.white, opacity)!;

                return FlexibleSpaceBar(
                  centerTitle: true,
                  title: Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chevron_left_sharp,
                                color: titleColor),
                          ),
                          stringBold("Detail", color: titleColor, size: 17),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert, color: titleColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  background: Container(
                    color: backgroundColor,
                    child: Image.asset(
                      "images/lounge.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Detail_Card(),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BookingCard(),
    );
  }
}
