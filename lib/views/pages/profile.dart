part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget drawerHeader() {
      return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 200,
        padding: EdgeInsets.all(
          12,
        ),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(
              18,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: whiteColor,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Welcome [Guest]',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'v.1.0',
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 12,
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget menu() {
      return Column(
        children: [
          MenuWidget(
            onPressed: () {},
            text: 'Home',
            color: primaryColor,
          ),
          MenuWidget(
            onPressed: () {},
            text: 'M-Tix Registration',
            color: yellowColor,
          ),
          MenuWidget(
            onPressed: () {},
            text: 'Favorite Theater',
            color: primaryColor,
          ),
          MenuWidget(
            onPressed: () {},
            text: 'Imax Theater',
            color: primaryColor,
          ),
          MenuWidget(
            onPressed: () {},
            text: 'Term of Service/disclaimer',
            color: primaryColor,
          ),
          MenuWidget(
            onPressed: () {},
            text: 'FAQ',
            color: primaryColor,
          ),
          MenuWidget(
            onPressed: () {},
            text: 'What\'s New',
            color: primaryColor,
          ),
          MenuWidget(
            onPressed: () {},
            text: 'Privacy Policy',
            color: primaryColor,
          ),
          MenuWidget(
            onPressed: () {},
            text: 'Contact Us',
            color: primaryColor,
          ),
        ],
      );
    }

    Widget drawer() {
      return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(
              18,
            ),
            bottomRight: Radius.circular(
              18,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //!Header
              drawerHeader(),
              //!Menu
              menu(),
            ],
          ),
        ),
      );
    }

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

    return Scaffold(
      appBar: appbar(),
      drawer: drawer(),
      body: Center(
        child: Text(
          'Profile Page',
        ),
      ),
    );
  }
}
