import 'package:flutter/material.dart';
import 'package:lumi_clone/customer/iconcustom.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
/* Size screen*/

// double Width = MediaQuery.of(context).size.width;
// double Height = MediaQuery.of(context).size.height;

  /* Color */
  final Color backgroundColor = Color(0xFF414350);
  final Color containerColor = Color(0xFF5157c2);
  final Color containerDisableColor = Color(0xFF303240);

  final Color iconColor = Colors.white;
  final Color iconDisableColor = Colors.white70;
  final Color txtColor = Colors.white;
  final Color txtDisableColor = Colors.white70;

  /* Margin & Padding*/

  final double margin = 8.0;
  final double padding = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
/* 
TOP SCREEN
*/
          Container(
            height: 250.0,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/phongkhach.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin * 6, left: margin * 1),
                  height: 30.0,
                  child:
                      Icon(Icons.arrow_back_ios, color: iconColor, size: 30.0),
                ),
              ],
            ),
          ),
/* 
BOTTOM SCREEN
*/
          SizedBox(height: margin),
          Container(
            height: 105.0,
            child: Column(
              children: <Widget>[
                /*
     Name Tittle
     */
                Container(
                  margin: EdgeInsets.only(left: margin * 2),
                  height: 40.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          alignment: AlignmentDirectional.topStart,
                          child: Text('Phòng khách',
                              style: TextStyle(
                                  color: txtColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                              textAlign: TextAlign.left)),
                      Container(width: 110, height: 2.0, color: txtColor)
                    ],
                  ),
                ),
                /*
      Temp,Humi,Lux
      */
                SizedBox(height: margin),
                Container(
                  // color: Colors.red,
                  height: 30.0,
                  margin: EdgeInsets.only(left: margin * 2, right: margin * 2),
                  // padding: EdgeInsets.only(right: margin*3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      /*
            Row Icons
            */
                      Container(
                        width: 90.0,
                        child: Row(
                          children: <Widget>[
                            IconCustom('weather.png', 30.0, iconColor),
                            SizedBox(width: margin),
                            Text('25.67°C', style: TextStyle(color: txtColor))
                          ],
                        ),
                      ),
                      // ---------
                      Container(
                        width: 80.0,
                        child: Row(
                          children: <Widget>[
                            IconCustom('humidity.png', 30.0, iconColor),
                            SizedBox(width: margin),
                            Text('70.5%', style: TextStyle(color: txtColor))
                          ],
                        ),
                      ),
                      //---------------
                      Container(
                        width: 90.0,
                        child: Row(
                          children: <Widget>[
                            IconCustom('sun.png', 30.0, iconColor),
                            SizedBox(width: margin),
                            Text('1000 lx', style: TextStyle(color: txtColor))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          /*
  GribView - Activity
  */
          // SizedBox(height: margin),
          Container(
            margin: EdgeInsets.only(left: margin * 2, right: padding * 2),
            height: 120.0,
            child: GridView.count(
              // padding: EdgeInsets.all(margin),
              crossAxisSpacing: margin * 2,
              mainAxisSpacing: margin * 2,
              crossAxisCount: 2,
              scrollDirection: Axis.horizontal,
              childAspectRatio: 0.23,
              children: <Widget>[
                TaskDay('lamp.png', 'Đi ngủ 22:00 pm', true),
                TaskDay('home.png', 'Về nhà 18:00 pm', false),
                TaskDay('work.png', 'Đi làm 6:30 am', false),
                TaskDay('phone.png', 'Tiếp khách 9:30 am', false),
                TaskDay('fan.png', 'Tắt quạt 6:30 am', false),
                TaskDay('airconditioner.png', 'Bật điều hòa 18:00', false),
              ],
            ),
          ),
          /*
  GribView - Status Device
  */
          SizedBox(height: margin * 2),
          Container(
            margin: EdgeInsets.only(left: margin * 2, right: padding * 2),
            height: 240.0,
            child: GridView.count(
              // padding: EdgeInsets.all(margin),
              crossAxisSpacing: margin,
              mainAxisSpacing: margin,
              crossAxisCount: 2,
              scrollDirection: Axis.horizontal,
              // childAspectRatio: 0.9,
              children: <Widget>[
                DeviceActivity('light.png', 'Tắt', 'Đèn\nPhòng khách', false),
                DeviceActivity(
                    'fan.png', 'Tắt', 'Quạt trần\nPhòng khách', false),
                DeviceActivity('airconditioner.png', '26°C',
                    'Điều hòa\nPhòng khách', true),
                DeviceActivity(
                    'colorlens.png', '#ffff', 'RGB\nPhòng khách', false),
                DeviceActivity(
                    'lamp.png', 'Tắt', 'Đèn hồ cá\nPhòng khách', false),
                DeviceActivity('pump.png', 'Tắt', 'Máy bơm hồ cá\nPhòng khách', false),
              ],
            ),
          ),
/*
BOTTOM TOOL BAR
 */
          Spacer(),
          Container(
            alignment: AlignmentDirectional.bottomCenter,
            height: 50.0,
            decoration: BoxDecoration(
                color: containerDisableColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(margin * 5),
                    topRight: Radius.circular(margin * 5))),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.dashboard, size: 30.0, color: iconColor),
                  Icon(Icons.home, size: 30.0, color: iconColor),
                  Icon(Icons.music_note, size: 30.0, color: iconColor),
                  Icon(Icons.view_agenda, size: 30.0, color: iconColor),
                  Icon(Icons.view_headline, size: 30.0, color: iconColor),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DeviceActivity extends StatelessWidget {
  Color containerColor = Color(0xFF5157c2);
  Color containerDisableColor = Color(0xFF303240);
  Color enableColor = Colors.white;
  Color disableColor = Colors.white70;

  final enable;
  final imgUrl;
  final txtTop;
  final txtBottom;

  DeviceActivity(this.imgUrl, this.txtTop, this.txtBottom, this.enable);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      // padding: EdgeInsets.only(left: 16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: enable ? containerColor : containerDisableColor),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 8.0,
            left: 8.0,
            child: IconCustom(
              imgUrl,
              30.0,
              enable ? enableColor : disableColor,
            ),
          ),
          Positioned(
            top: 16.0,
            right: 24.0,
            child: Text(
              txtTop,
              style: TextStyle(
                  color: enable ? enableColor : disableColor, fontSize: 16.0),
            ),
          ),
          Positioned(
            bottom: 24.0,
            left: 8.0,
            child: Text(
              txtBottom,
              style: TextStyle(
                  color: enable ? enableColor : disableColor, fontSize: 14.0),
            ),
          )
        ],
      ),
    );
  }
}

class TaskDay extends StatelessWidget {
  final urlImg;
  final txt;
  final enable;
  TaskDay(this.urlImg, this.txt, this.enable);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.0,
        padding: EdgeInsets.only(left: 16.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: enable ? Color(0xFF5157c2) : Color(0xFF303240)),
        child: Row(
          children: <Widget>[
            IconCustom(urlImg, 30.0, Colors.white),
            SizedBox(
              width: 16.0,
            ),
            Text(
              txt,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            )
          ],
        ));
  }
}
