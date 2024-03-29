import 'package:flutter/material.dart';
import 'home_page.dart';
import 'my_page.dart';
import 'search_page.dart';
import 'travel_page.dart';

class TabNavigatorView extends StatefulWidget {
  @override
  _TabNavigatorViewState createState() => _TabNavigatorViewState();
}

class _TabNavigatorViewState extends State<TabNavigatorView> {

  var _controller = PageController(
      initialPage: 0
  );
   int _currentIndex = 0;
final _defaultColor = Colors.grey;
final _activeColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[HomePage(), SearchPage(), TravelPage(), MyPage()],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _defaultColor,
              ),
              activeIcon: Icon(Icons.home, color: _activeColor,),
              title: Text("首页", style: TextStyle(
                  color: _currentIndex != 0 ? _defaultColor:_activeColor),)
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _defaultColor,
              ),
              activeIcon: Icon(Icons.search, color: _activeColor,),
              title: Text("搜索", style: TextStyle(
                  color: _currentIndex != 1 ? _defaultColor: _activeColor),)
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _defaultColor,
              ),
              activeIcon: Icon(Icons.camera_alt, color: _activeColor,),
              title: Text("旅拍", style: TextStyle(
                  color: _currentIndex != 2 ? _defaultColor: _activeColor),)
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _defaultColor,
              ),
              activeIcon: Icon(Icons.account_circle, color: _activeColor,),
              title: Text("我的", style: TextStyle(
                  color: _currentIndex != 3 ? _defaultColor: _activeColor),)
          ),
        ],
      ),
    );
  }
}
