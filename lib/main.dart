import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas2',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: Tugas2Kenneth(title: 'Eudeka! Flutter Basic'),
    );

  }
}

class Tugas2Kenneth extends StatefulWidget {
  Tugas2Kenneth({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _Tugas2KennethState createState() => _Tugas2KennethState();
}

class _Tugas2KennethState extends State<Tugas2Kenneth> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Tugas2 - Kenneth'),
          leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.school),
          ),
            ),
        body:SingleChildScrollView(
            child: Column(children: <Widget>[
          Row(
            //ROW 1
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.orange,
                    child:Align(
                      alignment: Alignment.center,
                        child:  Image.network('https://cdn.idntimes.com/content-images/post/20190816/moh-yamin-ff54a7fbbe9e45c0aab5f876395ddf13_600x400.jpg',
                            // width: 300,
                            height: 270,
                            fit:BoxFit.fill)
                    )
                ),
            ],
          ),
          Row(//ROW 2
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text('Mohammad Yamin', style: TextStyle(fontSize: 35.0 ,fontWeight:FontWeight.bold,color: Colors.black)),
                ),
              ]),
          Row(// ROW 3

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    color: Colors.green,
                    width: 410,
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      child: Text(
                        "Pria yang terkenal sebagai sastrawan, sejarawan, budayawan, politikus dan ahli hukum ini merupakan orang yang merumuskan isi teks Sumpah Pemuda. Mohammad Yamin lahir di Talawi, Sawahlunto, Sumatera Barat pada 23 Agustus 1903. Dialah yang pertama kali mengusulkan dijadikannya Bahasa Indonesia sebagai bahasa persatuan. ",
                        style: TextStyle(fontSize: 20.0 ,color: Colors.black),
                        maxLines: 10,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ),
              ]),
          Row(// ROW 4

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(12.0),
                    child:
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 35,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 45.0, top: 4.0),
                    child: Text('1000 Vote', style: TextStyle(fontSize: 25.0 ,color: Colors.black)),
                ),
              ]),
          Row(// ROW 5
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  child:
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 40.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  )
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  child:
                  Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: 40.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),

                  child:
                  Icon(
                    Icons.save,
                    color: Colors.black,
                    size: 40.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  child:
                  Icon(
                    Icons.restore_from_trash,
                    color: Colors.black,
                    size: 40.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  child:
                  Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 40.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
              ]),
        ]
        )
        )
      );
  }
}
