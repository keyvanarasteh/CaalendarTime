import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detay.dart';

void main() {
  runApp(Anasayfa());
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "MontSerrat",
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          elevation: 0,
          title: Text(
            "Modam Bu",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                onPressed: () {})
          ],
        ),
        body: Icerik(),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.pink,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "favorite"),
              BottomNavigationBarItem(icon: Icon(Icons.send), label: "send"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "person"),
            ]),
      ),
    );
  }
}

class Icerik extends StatefulWidget {
  @override
  _IcerikState createState() => _IcerikState();
}

class _IcerikState extends State<Icerik> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 140,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              storyler("assets/model1.jpeg", "assets/chanellogo.jpg"),
              storyler("assets/model2.jpeg", "assets/chloelogo.png"),
              storyler("assets/model3.jpeg", "assets/louisvuitton.jpg"),
              storyler("assets/modelgrid1.jpeg", "assets/chloelogo.png"),
              storyler("assets/modelgrid2.jpeg", "assets/chanellogo.jpg"),
              storyler("assets/modelgrid3.jpeg", "assets/louisvuitton.jpg"),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  padding:
                      EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 15),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.pink, blurRadius: 7)],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.pink,
                  ),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/modelgrid3.jpeg"),
                        ),
                        title: Text(
                          "Daisy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        subtitle: Text(
                          "1 hafta önce",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(Icons.more_vert),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır "
                              "metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir "
                              "hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak "
                              "karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır.",
                              style: (TextStyle(color: Colors.white)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Detay("assets/modelgrid1.jpeg"),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: "assets/modelgrid1.jpeg",
                                    child: Container(
                                      height: 200,
                                      padding: EdgeInsets.only(right: 5),
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  70) /
                                              2,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid1.jpeg"),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width - 70) /
                                          2,
                                  padding: EdgeInsets.only(left: 5),
                                  child: Column(
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Detay("assets/model1.jpeg"),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag: "assets/model1.jpeg",
                                          child: Container(
                                            height: 97.5,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/model1.jpeg"),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => Detay(
                                                  "assets/modelgrid3.jpeg"),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag: "assets/modelgrid3.jpeg",
                                          child: Container(
                                            height: 97.5,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/modelgrid3.jpeg"),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Text("Louis Vuitton",
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 10)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 6),
                                  margin: EdgeInsets.only(top: 5, right: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                Container(
                                  child: Text("Chloe",
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 10)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 6),
                                  margin: EdgeInsets.only(top: 5, right: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 40,
                              thickness: 0.6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.reply,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            " 2.3k",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.chat,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            " 2.8k",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      " 3.4k",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  storyler(String resimPath, String kucukResimPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(resimPath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(37.5),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 60,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(kucukResimPath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.5),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 75,
          height: 25,
          decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Center(
              child: Text(
            "Yeniler",
            style: TextStyle(color: Colors.white, fontFamily: "MontSerrat"),
          )),
        ),
      ],
    );
  }
}
