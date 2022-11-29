import 'package:flutter/material.dart';
import 'package:trang_chu/bd/Infor.dart';
import 'package:trang_chu/bd/Even.dart';
import 'package:trang_chu/bd/pack.dart';
import 'package:trang_chu/bd/play.dart';
import 'package:trang_chu/bd/store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Widget IconFav = Icon(
  Icons.favorite,
  color: Colors.red,
  size: 24.0,
  semanticLabel: 'Text to announce in accessibility modes',
);
Widget IconEng = Icon(
  Icons.energy_savings_leaf,
  color: Colors.green,
  size: 24.0,
  semanticLabel: 'Text to announce in accessibility modes',
);
Widget IconDam = Icon(
  Icons.diamond,
  color: Color.fromARGB(255, 5, 155, 241),
  size: 24.0,
  semanticLabel: 'Text to announce in accessibility modes',
);

bool checkFav(int Fav) {
  if (Fav > 0) return true;
  return false;
}

Widget ItIconFav(String fav) => Row(
      children: [Text(fav), IconFav],
    );
Widget ItIconEng(String Eng) => Row(
      children: [Text(Eng), IconEng],
    );
Widget ItIconDam(String Dam) => Row(
      children: [Text(Dam), IconDam],
    );
Widget Title(String head) => Text(
      head,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
    );

Widget Top = Row(
  children: [
    Row(
      children: [ItIconEng('5'), ItIconFav('5')],
    ),
    Expanded(child: Row()),
    Column(
      children: [ItIconDam('5')],
    )
  ],
);
Widget Bot = Row(
  children: [btn, btn, btn, btn, btn],
);
Widget btn = ElevatedButton(
  style: ButtonStyle(
      backgroundColor:
          MaterialStatePropertyAll<Color>(Colors.blue.withOpacity(0.8)),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)))),
  onPressed: () => {}, //trong đây là chỗ để xửa lý mật khẩu
  child: const Padding(
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Icon(
      Icons.star,
      color: Colors.pink,
      size: 48,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
  ),
);

Widget Screen(String screen) {
  if (screen == "Sự Kiện")
    return Even();
  else if (screen == "Túi Đồ")
    return Pack();
  else if (screen == "Chơi")
    return Play();
  else if (screen == "Cửa Hàng")
    return Store();
  else
    return AccoutScreen();
}

Widget formTrang_Chu(int _selectedIndex) => Container(
      child: Column(
        children: [
          Top,
          Title("${_navBarItems[_selectedIndex].label}"),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(20),
            child: Screen(_navBarItems[_selectedIndex].label as String),
          )),
        ],
      ),
    );

const _navBarItems = [
  BottomNavigationBarItem(
    icon: Icon(
      Icons.library_books_outlined,
      color: Colors.black,
    ),
    label: 'Sự Kiện',
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.backpack_outlined,
      color: Colors.black,
    ),
    label: 'Túi Đồ',
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.home_outlined,
      color: Colors.black,
    ),
    label: 'Chơi',
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.storefront_outlined,
      color: Colors.black,
    ),
    label: 'Cửa Hàng',
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.person_outline,
      color: Colors.black,
    ),
    label: 'Thông Tin',
  ),
];

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final bool _isSmallScreen = _width < 600;
    final bool _isLargeScreen = _width > 800;
    return Scaffold(
        bottomNavigationBar: _isSmallScreen
            ? BottomNavigationBar(
                items: _navBarItems,
                currentIndex: _selectedIndex,
                onTap: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                })
            : null,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/backGround1.jpg'),
                      fit: BoxFit.cover)),
            ),
            Row(
              children: <Widget>[
                if (!_isSmallScreen)
                  NavigationRail(
                    selectedIndex: _selectedIndex,
                    onDestinationSelected: (int index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    extended: _isLargeScreen,
                    destinations: _navBarItems
                        .map((item) => NavigationRailDestination(
                            icon: item.icon,
                            label: Text(
                              item.label!,
                            )))
                        .toList(),
                  ),
                const VerticalDivider(thickness: 1, width: 1),
                // This is the main content.
                Expanded(
                  child: Center(
                    child: formTrang_Chu(_selectedIndex),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
