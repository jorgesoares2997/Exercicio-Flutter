import 'package:fluttejorginho/app/my_app.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final lista = [
    {
      'nome': 'Jorginho',
      'telefone': '(81) 9 8759-4291',
      'avatar':
          'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'
    },
    {
      'nome': 'Ingrid',
      'telefone': '(81) 9 8349-5769',
      'avatar':
          'https://cdn.pixabay.com/photo/2016/08/20/05/36/avatar-1606914_960_720.png'
    },
    {
      'nome': 'Mãe',
      'telefone': '(81) 9 8993-1670',
      'avatar':
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/user-310807_960_720.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista De Contatos'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
              })
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i) {
          var contato = lista[i];
          var avatar = CircleAvatar(
            backgroundImage: NetworkImage(contato['avatar']!),
          );
          return ListTile(
            leading: avatar,
            title: Text(contato['nome']!),
            subtitle: Text(contato['telefone']!),
            trailing: Container(
              width: 100,
              child: Row(
                children: [
                  IconButton(onPressed: null, icon: Icon(Icons.edit)),
                  IconButton(icon: Icon(Icons.delete), onPressed: null),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
