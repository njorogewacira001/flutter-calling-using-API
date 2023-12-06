import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BalanceCheckScreen extends StatefulWidget {
  final String token;
  final String userId;
  final String password;
  final String timestamp;

  BalanceCheckScreen({
    required this.token,
    required this.userId,
    required this.password,
    required this.timestamp,
  });

  @override
  _BalanceCheckScreenState createState() => _BalanceCheckScreenState();
}

class _BalanceCheckScreenState extends State<BalanceCheckScreen> {
  late Future<Map<String, dynamic>> _futureBalance;

  @override
  void initState() {
    super.initState();
    _futureBalance = fetchBalance();
  }

  Future<Map<String, dynamic>> fetchBalance() async {
    final url = Uri.parse('https://testbed.flex-money.tech/balanceCheck');
    final headers = {
      'Accept': 'application/json',
      'authorization': 'Bearer ${widget.token}',
      'x-userId': widget.userId,
      'x-password': widget.password,
      'x-timestamp': widget.timestamp,
    };

    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch balance');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Balance Check'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _futureBalance,
        builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error occurred: ${snapshot.error}'));
          }
          if (snapshot.hasData) {
            final balance = snapshot.data;
            return Center(child: Text('Balance: $balance'));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/verify');
        },
        child: Icon(Icons.verified),
      ),
    );
  }
}
