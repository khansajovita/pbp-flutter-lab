import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/mywatchlist_page.dart';
import 'package:counter_7/page/budget.dart';

class MyWatchlistDetail extends StatefulWidget {
  final data;
  const MyWatchlistDetail({super.key, required this.data});

  @override
  State<MyWatchlistDetail> createState() => _MyWatchlistDetail();
}

class _MyWatchlistDetail extends State<MyWatchlistDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter_7'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyBudgetForm()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyBudgetPage()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watchlist'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyWatchlistPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(30.0),
              child: Text(
                widget.data.title,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
            child: Row(children: [
              Text(
                'Release Date : ',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.data.releaseDate,
                style: TextStyle(fontSize: 20.0),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
            child: Row(children: [
              Text(
                'Rating : ',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "${widget.data.rating}/5",
                style: TextStyle(fontSize: 20.0),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
            child: Row(children: [
              Text(
                'Status : ',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.data.watched == true ? "watched" : "not watched",
                style: TextStyle(fontSize: 20.0),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
            child: Column(children: [
              Text(
                'Review : ',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.data.review,
                style: TextStyle(fontSize: 20.0),
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(left: 30.0),
        width: double.infinity,
        height: 40.0,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Back',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
