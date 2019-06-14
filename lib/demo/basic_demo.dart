import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Demo();
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _name = '王泽鹏说：';

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_name Hello flutter！\n'
          '$_name Hello flutter！\n'
          '$_name Hello flutter！\n'
          '$_name Hello flutter！\n',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Hello',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(fontSize: 17.0, color: Colors.grey))
          ]),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2016/06/25/17/36/rain-1479303__480.jpg"),
            alignment: Alignment.topCenter,
//              fit: BoxFit.cover
            repeat: ImageRepeat.repeat,
            colorFilter: ColorFilter.mode(
                Colors.indigoAccent[400].withOpacity(0.5),
                BlendMode.hardLight)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                  color: Colors.indigoAccent[100],
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
//                borderRadius: BorderRadius.only(
//                    topLeft: Radius.circular(64.0),
//                    bottomLeft: Radius.circular(64.0)),
                boxShadow: [
                  BoxShadow(
//                      offset: Offset(6.0, 7.0),
                      color: Color.fromRGBO(16, 20, 188, 1.0),
                      blurRadius: 20.0,
                      spreadRadius: 6.0)
                ],
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          )
        ],
      ),
    );
  }
}
