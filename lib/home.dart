import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFF1A3B44),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              leading: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
              ),
              title: Column(
                children: [
                  Text(
                    'Sanbonani!',
                    style: theme.textTheme.titleLarge,
                  ),
                  Text(
                    'Sanya Chauke',
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              actions: [
                SvgPicture.asset(
                  'assets/image.svg',
                  color: Colors.white,
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                //crossAxisAlignment: CrossAxisAlignment.start,
                [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .25,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset('assets/image.svg'),
                          Text(
                            'Let’s meet you where you are',
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            'Get started with our questionnaire, this will help us set you up for success and curate your experience. ',
                            style: theme.textTheme.bodySmall,
                          ),
                          ElevatedButton(
                            style: const ButtonStyle(
                              minimumSize: MaterialStatePropertyAll<Size>(
                                  Size(double.infinity, 50)),
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Color(0xFF34998B),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Start Questionnaire',
                              style: theme.textTheme.titleMedium,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .75,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container1(theme: theme),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Need Help, ask away',
                              style: GoogleFonts.manrope(
                                color: const Color(0xFF283C42),
                                fontSize: 18,
                                //fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                                height: 0.07,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const SearchBar(
                              elevation: MaterialStatePropertyAll<double>(0),
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Color(0xFFF3F4F6),
                              ),
                              leading: Icon(Icons.search),
                              hintText: 'Ask Us Anything ...',
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  listContainer('Where to Start'),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  listContainer('I\'m stressed'),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  listContainer('I\'m feeling anxious')
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Get to Know Us',
                              style: theme.textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 10),
                            Container2(theme: theme)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container listContainer(String text) {
    return Container(
      // height: 50,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.manrope(
          color: const Color(0xFF1A3B44),
          fontSize: 12,
          fontWeight: FontWeight.w500,
          height: 0.13,
          letterSpacing: 0.20,
        ),
      ),
    );
  }
}

class Container1 extends StatelessWidget {
  const Container1({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 165,
      padding: const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFFD5F8E6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                    child: const Text('Quick Start'),
                  ),
                  const Text('Vimbo in 1 min')
                ],
              ),
              ElevatedButton.icon(
                style: const ButtonStyle(
                  iconColor: MaterialStatePropertyAll<Color>(Color(0xFFD5F8E6)),
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    Color(0xFF1A3B44),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle,
                  color: Colors.white,
                ),
                label: Text(
                  'Play',
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'No time for reading? No sweat! Take a listen to what Vimbo is all ablout and where you can start.',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class Container2 extends StatelessWidget {
  const Container2({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 144,
      padding: const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFFFFC273),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                    child: const Text('Take a Tour'),
                  ),
                  Text(
                    'My Wellbeing Machine',
                    style: GoogleFonts.manrope(
                      color: const Color(0xFF1A3B44),
                      fontSize: 18,
                      //fontFamily: 'Manrope',
                      fontWeight: FontWeight.w700,
                      //height: 0.07,
                    ),
                  )
                ],
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  iconColor: MaterialStatePropertyAll<Color>(Color(0xFFD5F8E6)),
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    Color(0xFF1A3B44),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'View',
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Immerse yourself with knowledge to understand your journey',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
