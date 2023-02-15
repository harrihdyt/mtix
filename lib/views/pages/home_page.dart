part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List imgCarousel = [
      'assets/images/img1.png',
      'assets/images/img2.png',
      'assets/images/img3.png',
      'assets/images/img4.png',
      'assets/images/img5.png',
      'assets/images/img6.png',
      'assets/images/img7.png',
    ];

//! Appbar
    appbar() {
      return AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Image.asset(
          'assets/images/logo.png',
          width: 100,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(
                left: 12,
                right: 12,
              ),
              child: Image.asset(
                'assets/icons/refresh.png',
                color: whiteColor,
                width: 20,
              ),
            ),
          )
        ],
      );
    }

//! Location
    Widget location() {
      return Expanded(
        child: Row(
          children: [
            Image.asset(
              'assets/icons/maps.png',
              color: primaryColor,
              width: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Jakarta',
              style: yellowTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: primaryColor,
              size: 20,
            ),
          ],
        ),
      );
    }

//! tabbar
    Widget tabbar() {
      return Container(
        padding: EdgeInsets.all(12),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: whiteColor,
        ),
        child: Row(
          children: [
            location(),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: primaryColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Inbox',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/discount.png',
                    color: primaryColor,
                    width: 24,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'E-Voucher',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget imageSlider() {
      return CarouselSlider(
          items: imgCarousel
              .map((img) => Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.cover,
                    )),
                  ))
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            height: 225,
          ));
    }

    Widget content() {
      return GridView.builder(
        itemCount: 10,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            mainAxisExtent: 310),
        itemBuilder: (_, index) {
          return Container(
            margin: EdgeInsets.only(
              top: 30,
              left: 12,
              right: 12,
            ),
            padding: EdgeInsets.all(5),
            width: 180,
            height: 300,
            decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(
                color: greyColor,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/poster.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'ONE PIECE RED',
                  style: blackTextStyle.copyWith(
                    fontWeight: semoBold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '2D',
                        style: greenTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'SU',
                        style: greenTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: appbar(),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(
                12,
              ),
              bottomRight: Radius.circular(
                12,
              ),
            )),
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            tabbar(),
            imageSlider(),
            content(),
          ],
        ),
      ),
    );
  }
}
