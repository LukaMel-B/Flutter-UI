import 'package:flutter/material.dart';
import 'package:ui_design/widgets/get_in_touch_widget.dart';
import 'package:ui_design/widgets/premium_card.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            PremiumCard(),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 10, bottom: 10),
              child: Text(
                'Features',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const FeaturesCard(
                head: 'Custom domain name',
                newIcon: Icons.language_outlined,
                sub:
                    'Get your own custom domain and build your brand on the internet.'),
            const SizedBox(
              height: 10,
            ),
            const FeaturesCard(
                newIcon: Icons.verified_outlined,
                head: 'Verified seller badge',
                sub:
                    'Get green verified badge under your store name and build trust.'),
            const SizedBox(
              height: 10,
            ),
            const FeaturesCard(
                newIcon: Icons.computer,
                head: 'Dukaan for PC',
                sub:
                    'Access all the exclusive premium features on Dukaan for PC.'),
            const SizedBox(
              height: 10,
            ),
            const FeaturesCard(
                newIcon: Icons.support_agent_rounded,
                head: 'Priority support',
                sub: 'Get your questions resolved with our priority support.'),
            const Divider(
              height: 30,
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What\'s Dukaan premium ?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/images/img2.png'),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    height: 40,
                  ),
                  const Text(
                    'Frequently asked questions',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const ExpansionCard(
                      questions:
                          'What types business can use Dukaan premium ?'),
                  const ExpansionCard(
                      questions: 'What is your refund policy ?'),
                  const ExpansionCard(
                      questions:
                          'Will there will be a automatic change after the paid trail ?'),
                  const ExpansionCard(
                      questions: 'What payment method do you offer ?'),
                  const ExpansionCard(
                      questions: 'What happens when my free trial ends ?'),
                  const ExpansionCard(
                      questions: 'What are the terms for the custom domain ?'),
                ],
              ),
            ),
            const Divider(
              height: 40,
              thickness: 4,
            ),
            GetInTouch(),
          ],
        ),
      ),
    );
  }
}
