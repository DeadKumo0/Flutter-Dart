import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  // Вспомогательный виджет для бейджа с числом
  Widget _badge(String count) {
    return ClipOval(
      child: Container(
        color: Colors.red,
        width: 20,
        height: 20,
        child: Center(
          child: Text(
            count,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ), // Text
        ), // Center
      ), // Container
    ); // ClipOval
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Практическая работа № 1-1-2',
              style: TextStyle(fontWeight: FontWeight.bold),
            ), // Text
            accountEmail: const Text(
              'Разработка мобильных приложений',
              style: TextStyle(fontWeight: FontWeight.bold),
            ), // Text
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://i.ytimg.com/vi/yVTHBTl9oG8/maxresdefault.jpg',
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const Icon(Icons.person, size: 40),
                ), // Image.network
              ), // ClipOval
            ), // CircleAvatar
            decoration: BoxDecoration(
              color: Colors.redAccent,
              image: DecorationImage(
                image: NetworkImage(
                  'https://i.playground.ru/i/pix/1013395/image.jpg',
                ),
                fit: BoxFit.cover,
                onError: (_, __) {},
              ), // DecorationImage
            ), // BoxDecoration
          ), // UserAccountsDrawerHeader

          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Избранное'),
            onTap: () {},
          ), // ListTile

          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Друзья'),
            onTap: () {},
            trailing: _badge('7'),
          ), // ListTile

          ListTile(
            leading: const Icon(Icons.share_location),
            title: const Text('Места'),
            onTap: () {},
          ), // ListTile

          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Уведомления'),
            onTap: () {},
            trailing: _badge('5'),
          ), // ListTile

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Настройки'),
            onTap: () {},
            trailing: _badge('4'),
          ), // ListTile

          const Divider(),

          ListTile(
            leading: const Icon(Icons.photo_camera),
            title: const Text('Фотографии'),
            onTap: () {},
            trailing: _badge('9'),
          ), // ListTile

          const Divider(),

          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Выйти'),
            onTap: () {},
          ), // ListTile
        ], // <Widget>[]
      ), // ListView
    ); // Drawer
  }
}
