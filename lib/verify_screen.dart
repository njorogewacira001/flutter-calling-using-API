import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class VerifyScreen extends StatefulWidget {
  final String token;
  final String userId;
  final String password;
  final String timestamp;

  VerifyScreen({
    required this.token,
    required this.userId,
    required this.password,
    required this.timestamp,
  });

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  TextEditingController _msisdnController = TextEditingController();
  String _verificationStatus = '';

  Future<void> verifyMSISDN(String msisdn) async {
    final url = Uri.parse('https://testbed.flex-money.tech/iVeryfy');
    final headers = {
      'Accept': 'application/json',
      'authorization': 'Bearer ${widget.token}',
      'x-userId': widget.userId,
      'x-password': widget.password,
      'x-timestamp': widget.timestamp,
    };
    final body = {
      'payload': msisdn,
    };

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      setState(() {
        _verificationStatus = 'Verification Successful';
      });
    } else {
      setState(() {
        _verificationStatus = 'Verification Failed';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify MSISDN'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _msisdnController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'MSISDN',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String msisdn = _msisdnController.text;
                verifyMSISDN(msisdn);
              },
              child: Text('Verify'),
            ),
            SizedBox(height: 16.0),
            Text(
              _verificationStatus,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
