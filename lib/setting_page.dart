import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pengaturan')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: const Text('Tema'),
            subtitle: const Text('Pilih tema aplikasi'),
            trailing: DropdownButton<String>(
              items: const [
                DropdownMenuItem(value: 'Terang', child: Text('Terang')),
                DropdownMenuItem(value: 'Gelap', child: Text('Gelap')),
              ],
              onChanged: (value) {},
              hint: const Text('Pilih'),
            ),
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('Notifikasi'),
            subtitle: const Text('Aktifkan notifikasi'),
            value: true,
            onChanged: (val) {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Versi Aplikasi'),
            subtitle: const Text('1.0.0'),
          ),
        ],
      ),
    );
  }
}