import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GuidelinesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            leading: FaIcon(FontAwesomeIcons.mask, color: Colors.blue), // Ikon mask-face dari FontAwesome
            title: Text('Gunakan Masker'),
            subtitle: Text(
                'Pastikan Anda selalu menggunakan masker ketika berada di luar rumah untuk mencegah penularan virus.'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.social_distance, color: Colors.orange),
            title: Text('Jaga Jarak'),
            subtitle: Text(
                'Jaga jarak minimal 1 meter dengan orang lain untuk menghindari penyebaran melalui droplet.'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.wash, color: Colors.blueAccent),
            title: Text('Cuci Tangan'),
            subtitle: Text(
                'Cuci tangan dengan sabun selama 20 detik secara teratur, terutama sebelum makan dan setelah menyentuh benda di area publik.'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.sanitizer, color: Colors.teal),
            title: Text('Gunakan Hand Sanitizer'),
            subtitle: Text(
                'Gunakan hand sanitizer berbasis alkohol setelah menyentuh benda atau saat tidak ada akses untuk cuci tangan.'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.health_and_safety, color: Colors.red),
            title: Text('Hindari Menyentuh Wajah'),
            subtitle: Text(
                'Hindari menyentuh mata, hidung, dan mulut sebelum mencuci tangan untuk mencegah virus masuk ke dalam tubuh.'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.cleaning_services, color: Colors.purple),
            title: Text('Bersihkan Permukaan Benda'),
            subtitle: Text(
                'Bersihkan permukaan benda yang sering disentuh dengan disinfektan secara berkala.'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.call, color: Colors.green),
            title: Text('Hubungi Layanan Darurat'),
            subtitle: Text(
                'Jika mengalami gejala serius seperti demam tinggi atau sesak napas, hubungi nomor darurat 119.'),
            onTap: () {
              // Fungsi panggilan darurat
              // Implementasi panggilan telepon dapat disesuaikan
            },
          ),
        ],
      ),
    );
  }
}
