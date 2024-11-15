import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        SizedBox(height: 16),
        Card(
          child: ListTile(
            leading: Icon(Icons.phone, color: Colors.blue),
            title: Text('Hotline Darurat'),
            subtitle: Text('Hubungi 123-456-789 untuk keadaan darurat COVID-19.'),
          ),
        ),
        // FAQ Section with dropdowns
        Card(
          child: ExpansionTile(
            leading: Icon(Icons.question_answer, color: Colors.green),
            title: Text('Pertanyaan yang Sering Diajukan (FAQ)'),
            children: [
              ExpansionTile(
                title: Text('Apa yang harus saya lakukan jika saya merasa sakit?'),
                children: [
                  ListTile(
                    title: Text('Jika Anda merasa sakit, segera hubungi tenaga medis atau profesional kesehatan.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Bagaimana cara melindungi diri dari COVID-19?'),
                children: [
                  ListTile(
                    title: Text('Anda dapat melindungi diri dengan memakai masker, mencuci tangan secara rutin, dan menjaga jarak fisik.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Bagaimana proses vaksinasi COVID-19?'),
                children: [
                  ListTile(
                    title: Text('Vaksin COVID-19 diberikan dalam dua dosis, yang dipisahkan beberapa minggu. Silakan konsultasikan dengan pusat kesehatan setempat untuk informasi lebih lanjut.'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
