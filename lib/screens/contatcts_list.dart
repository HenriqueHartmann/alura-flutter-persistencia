import 'package:bytebank/models/contact.dart';
import 'package:bytebank/screens/contact_form.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  ContactsList({Key? key}) : super(key: key);

  final List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    contacts.add(Contact(0, 'Alex', 1000));
    contacts.add(Contact(0, 'Julio', 2000));
    contacts.add(Contact(0, 'Amanda', 3000));

    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Contact contact = contacts[index];

          return _ContactItem(contact: contact);
        },
        itemCount: contacts.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => const ContactForm()
              )
          )
          .then(
            (newContact) => debugPrint(newContact.toString()),
          );
        },
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  const _ContactItem({Key? key, required this.contact}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        child: ListTile(
          title: Text(contact.name, style: const TextStyle(fontSize: 24.0),),
          subtitle:
          Text(contact.accountNumber.toString(),
               style: const TextStyle(fontSize: 16.0)
          ),
        )
    );
  }
  
}