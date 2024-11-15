import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> newsList = [
    {
      'title': 'Vaksinasi COVID-19 Dimulai',
      'description': 'Program vaksinasi nasional dimulai untuk mengendalikan penyebaran COVID-19.',
      'imagePath': 'assets/images/img1.jpg',
    },
    {
      'title': 'Kasus COVID-19 Menurun',
      'description': 'Penurunan kasus COVID-19 yang signifikan terlihat dalam beberapa minggu terakhir.',
      'imagePath': 'assets/images/img2.jpg',
    },
  ];

  void _showNewsDialog(BuildContext context, String title, String description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(description),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        final news = newsList[index];
        return Card(
          margin: EdgeInsets.only(bottom: 16),
          child: InkWell(
            onTap: () {
              _showNewsDialog(context, news['title']!, news['description']!);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  news['imagePath']!,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.contain,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    news['title']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
