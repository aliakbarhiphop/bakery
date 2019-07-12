import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bakery extends StatelessWidget {
  final Color primary = HexColor("#7b7513");
  final Color background = HexColor("#18171f");
  final Color overlay = HexColor("#212129");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30.0),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Fruits cake',
                style: Theme.of(context).textTheme.title.copyWith(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Strawberry & Kiwi Special',
                style: TextStyle(fontSize: 16.0, color: primary),
              ),
              Container(
                height: 60.0,
                child: ListView(
                  padding: EdgeInsets.all(8.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    ChoiceChip(
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text(
                        '1 kg',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: background,
                      selected: true,
                      onSelected: (val) {},
                      selectedColor: primary,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    ChoiceChip(
                      shape: StadiumBorder(
                          side: BorderSide(width: 2.0, color: primary)),
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text(
                        '2 kg',
                        style: TextStyle(
                            color: primary, fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: background,
                      selected: false,
                      onSelected: (val) {},
                      selectedColor: primary,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    ChoiceChip(
                      shape: StadiumBorder(
                          side: BorderSide(width: 2.0, color: primary)),
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text(
                        '3 kg',
                        style: TextStyle(
                            color: primary, fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: background,
                      selected: false,
                      onSelected: (val) {},
                      selectedColor: primary,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    ChoiceChip(
                      shape: StadiumBorder(
                          side: BorderSide(width: 2.0, color: primary)),
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text(
                        '4 kg',
                        style: TextStyle(
                            color: primary, fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: background,
                      selected: false,
                      onSelected: (val) {},
                      selectedColor: primary,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 180,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset("assets/cake.png"),
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                        CircleAvatar(
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          backgroundColor: primary,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20.0),
                width: double.infinity,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "\$84.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '99',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                    color: overlay, borderRadius: BorderRadius.circular(10.0)),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/eggs.png'),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '4 Eggs',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/vanilla.png'),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '2 tsp Vanilla',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/sugar.png'),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '1 Cup Sugar',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                      color: overlay,
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 100,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/map.png'),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                'DELIVERY',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                              Text('45, Amarlands',
                                  style:
                                      TextStyle(color: Colors.grey.shade300)),
                              Text('Nr. Hamer Road, London',
                                  style:
                                      TextStyle(color: Colors.grey.shade300)),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Ratings',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.yellow,
                    ),
                    Text("(55)",
                        style: TextStyle(color: Colors.grey, fontSize: 16.0))
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                child: Text(
                  'Make Order Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal),
                ),
                color: primary,
                onPressed: () {},
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
