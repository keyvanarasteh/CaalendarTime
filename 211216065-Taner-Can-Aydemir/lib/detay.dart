import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  String resimYolu;

  Detay(this.resimYolu);

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Hero(
            tag: widget.resimYolu,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.resimYolu), fit: BoxFit.cover),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 8,
                    right: 2 * MediaQuery.of(context).size.width / 3 - 50),
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color.fromARGB(150, 233, 30, 99),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "İndirim  ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 2 * MediaQuery.of(context).size.width / 3),
                width: MediaQuery.of(context).size.height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color.fromARGB(150, 233, 30, 99),
                ),
                child: Center(
                    child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.chevron_left,
                    size: 35,
                    color: Colors.white,
                  ),
                )),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          child: Image.asset(
                            "assets/dress.jpg",
                            scale: 2.5,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "İndirim",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Louis Vuitton",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Kıyafetimiz BlackFriday sebebi ile indirimli halidir.",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0.6,
                      height: 30,
                    ),
                    ListTile(
                      leading: Text(
                        "\$6500",
                        style: TextStyle(fontSize: 25),
                      ),
                      trailing: CircleAvatar(
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.pink,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
