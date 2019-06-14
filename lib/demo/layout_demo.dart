import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      /**
       * spaceAround      space分配到小部件的周围
       * spaceBetween     space分配到小部件之间
       * spaceEvenly      space平均分配到小部件之间
       */
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: Alignment(-1.0, -1.0),
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 300.0,
              child: Container(
                alignment: Alignment(-1.0, 1.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            SizedBox(
              width: 100.0,
              height: 100.0,
              child: Container(
                alignment: Alignment(0.0, 0.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 0, 1.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(colors: [
                      Color.fromRGBO(7, 102, 255, 1.0),
                      Color.fromRGBO(3, 54, 255, 1.0)
                    ])),
                child: Icon(
                  Icons.brightness_2,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
            ),
            Positioned(
              right: 20.0,
              top: 120.0,
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            Positioned(
              right: 70.0,
              top: 180.0,
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 16.0,
              ),
            ),
            Positioned(
              right: 30.0,
              top: 230.0,
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 18.0,
              ),
            ),
          ],
        )
//        IconBadge(Icons.pool),
//        IconBadge(Icons.beach_access,size: 64.0,),
//        IconBadge(Icons.airplanemode_active)
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }

}
