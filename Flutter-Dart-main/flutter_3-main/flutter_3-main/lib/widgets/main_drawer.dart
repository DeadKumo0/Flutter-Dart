import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget _badge(String count) {
    return ClipOval(
      child: Container(
        color: Colors.red,
        width: 20,
        height: 20,
        child: Center(
          child: Text(
            count,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Практическая работа № 1-1-3',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text(
              'Разработка мобильных приложений',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://4-x-4.ru/wp-content/uploads/2023/05/1295566be0f5d1ba3ff144fe6c631515.jpeg',
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      const Icon(Icons.person, size: 40),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              image: DecorationImage(
                image: NetworkImage(
                  'https://img.goodfon.ru/original/4096x2734/d/6d/2015-chevrolet-fnr-concept.jpg',
                ),
                fit: BoxFit.cover,
                onError: (_, __) {},
              ),
            ),
          ), // UserAccountsDrawerHeader

          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Избранное'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Друзья'),
            onTap: () {},
            trailing: _badge('7'),
          ),
          ListTile(
            leading: const Icon(Icons.share_location),
            title: const Text('Места'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Уведомления'),
            onTap: () {},
            trailing: _badge('5'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Настройки'),
            onTap: () {},
            trailing: _badge('4'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.photo_camera),
            title: const Text('Фотографии'),
            onTap: () {},
            trailing: _badge('9'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Выйти'),
            onTap: () {},
          ),
        ], // <Widget>[]
      ), // ListView
    ); // Drawer
  }
}
