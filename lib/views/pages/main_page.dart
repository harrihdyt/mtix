part of 'pages.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customButtomNav() {
      return BottomNavigationBar(
        backgroundColor: whiteColor,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            print(value);
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/icons/icon_movies.png',
                  width: 21,
                  color: currentIndex == 0 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/icons/icon_upcoming.png',
                  width: 20,
                  color: currentIndex == 1 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/icons/icon_theater.png',
                  width: 20,
                  color: currentIndex == 2 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/icons/icon_food.png',
                  width: 18,
                  color: currentIndex == 3 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/icons/icon_user.png',
                  width: 18,
                  color: currentIndex == 4 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: ''),
        ],
      );
    }

    Widget? body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return UpcomingPage();
          break;
        case 2:
          return TheaterPage();
          break;
        case 3:
          return FoodPage();
          break;
        case 4:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customButtomNav(),
      body: body(),
    );
  }
}
