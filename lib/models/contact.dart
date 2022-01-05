class Contact {
  Contact(this.name, this.accountNumber);

  final String name;
  final int? accountNumber;

  @override
  String toString() {
    return 'Contact{name: $name, accountNumber: $accountNumber}';
  }
}