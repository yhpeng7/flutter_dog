import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raiseButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
//                  shape: BeveledRectangleBorder(
//                      borderRadius: BorderRadius.circular(5.0))
                  shape: StadiumBorder())),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            color: Theme.of(context).accentColor,
//          textColor: Colors.white,
//          textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('iconButton'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
          elevation: 12.0,
        ),
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
//                  shape: BeveledRectangleBorder(
//                      borderRadius: BorderRadius.circular(5.0))
                  shape: StadiumBorder())),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightedBorderColor: Colors.black,
//            color: Theme.of(context).accentColor,
//            textColor: Colors.white,
//            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('iconButton'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget fixedWidthButton = Container(
      width: 130.0,
      child: OutlineButton(
        child: Text('Button'),
        onPressed: () {},
        splashColor: Colors.grey[100],
        borderSide: BorderSide(color: Colors.black),
        textColor: Colors.black,
        highlightedBorderColor: Colors.black,
      ),
    );

    final Widget expandedWidthButton = Expanded(
      child: OutlineButton(
        child: Text('Button'),
        onPressed: () {},
        splashColor: Colors.grey[100],
        borderSide: BorderSide(color: Colors.black),
        textColor: Colors.black,
        highlightedBorderColor: Colors.black,
      ),
    );

    final Widget buttonBar = Theme(
      data: Theme.of(context).copyWith(
          buttonTheme:
              ButtonThemeData(padding: EdgeInsets.symmetric(horizontal: 32.0))),
      child: ButtonBar(
        children: <Widget>[
          OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightedBorderColor: Colors.black,
          ),
          OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightedBorderColor: Colors.black,
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Button Demo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raiseButtonDemo,
            outlineButtonDemo,
            fixedWidthButton,
            expandedWidthButton,
            buttonBar
          ],
        ),
      ),
    );
  }
}
