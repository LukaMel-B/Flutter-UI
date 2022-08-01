import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(color: Colors.blue[800]), height: 230),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 100),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 177, 176, 176),
                    blurRadius: 5,
                    blurStyle: BlurStyle.normal)
              ],
              color: Colors.white,
            ),
            width: 350,
            height: 220,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 32,
                        child: Icon(
                          Icons.shopping_bag_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text('dukaan',
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              'PREMIUM',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.blue[800]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Get Dukaan Premium For Just',
                          style: GoogleFonts.ubuntu(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '4,999/year',
                          style: GoogleFonts.ubuntu(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Text(
                            'All the advanced features for scaling your',
                            style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.60)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Text(
                            'business',
                            style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.60)),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: const Text("Dukaan Premium"),
          ),
        ),
      ],
    );
  }
}

class FeaturesCard extends StatelessWidget {
  final IconData newIcon;
  final String head;
  final String sub;

  const FeaturesCard(
      {Key? key, required this.newIcon, required this.head, required this.sub})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: Icon(newIcon),
          ),
        ),
        title: Text(head),
        subtitle: Text(sub),
      ),
    );
  }
}

class ExpansionCard extends StatelessWidget {
  final String questions;
  const ExpansionCard({Key? key, required this.questions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        questions,
      ),
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
          ),
        ),
      ],
    );
  }
}
