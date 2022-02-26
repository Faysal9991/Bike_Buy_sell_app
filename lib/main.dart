import 'package:bikesellapp/homebody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();
  late String title;

  @override
  void initState() {
    title = "Home";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SliderDrawer(
            appBar: SliderAppBar(
                appBarColor: Colors.white,
                trailing: CircleAvatar(radius: 12,
                  backgroundColor: Color(0xffd4d181),
                  child: Icon(Icons.favorite,
                    color: Colors.pink,
                    size: 24.0),
                ),
                title: Text(title,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w700))),
            key: _key,
            sliderOpenSize: 179,
            slider: _SliderView(
              onItemClick: (title) {
                _key.currentState!.closeSlider();
                setState(() {
                  this.title = title;
                });
              },
            ),
            child: HomePageBody()),
      ),
    );
  }
}

class _SliderView extends StatefulWidget {
  final Function(String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  State<_SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<_SliderView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/user_profile.jpg'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Nick',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'BalsamiqSans'),
          ),
          SizedBox(
            height: 20,
          ),
          _SliderMenuItem(
              title: 'Home', iconData: Icons.home, onTap: widget.onItemClick),
          _SliderMenuItem(
              title: 'Add Post',
              iconData: Icons.add_circle,
              onTap: widget.onItemClick),
          _SliderMenuItem(
              title: 'Notification',
              iconData: Icons.notifications_active,
              onTap: widget.onItemClick),
          _SliderMenuItem(
              title: 'Likes', iconData: Icons.favorite, onTap: widget.onItemClick),
          _SliderMenuItem(
              title: 'Setting', iconData: Icons.settings, onTap: widget.onItemClick),
          _SliderMenuItem(
              title: 'LogOut',
              iconData: Icons.arrow_back_ios,
              onTap: widget.onItemClick),
        ],
      ),
    );
  }
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function(String)? onTap;

  const _SliderMenuItem(
      {Key? key,
        required this.title,
        required this.iconData,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: TextStyle(
                color: Colors.black, fontFamily: 'BalsamiqSans_Regular')),
        leading: Icon(iconData, color: Colors.black),
        onTap: () => onTap?.call(title));
  }
}

