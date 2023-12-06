import 'package:flutter/material.dart';
import 'package:project1/balance_check_screen.dart';

import 'package:project1/verify_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BalanceCheckScreen(
              token: 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6Ik1FSXpRa1UxTVVZek1qRXlOVEJDUVRVd1EwRTJOa0ZGTmpCRFFUSXdRa0l5TVRBeE16azBNdyJ9.eyJpc3MiOiJodHRwczovL2N5bmNpdC5hdXRoMC5jb20vIiwic3ViIjoiM3BCQXlySTBxVmxyN1JTMjQ2REtGb0hxNkl1bXdzWUFAY2xpZW50cyIsImF1ZCI6Imh0dHBzOi8vdWF0YXBpLmN5bmNpdC50ZWNoIiwiaWF0IjoxNjg5NjU1Mzg2LCJleHAiOjE2ODk3NDE3ODYsImF6cCI6IjNwQkF5ckkwcVZscjdSUzI0NkRLRm9IcTZJdW13c1lBIiwic2NvcGUiOiJyZWFkOm1lc3NhZ2VzIiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIn0.SZPav0qQsJiZh-1u1KRUsYzTqY5l0kMloKgJCfL67Uqx6FjvI6HNCLueKGHjioCKDvJc-16O1yug2iQ4SytwXXEp1-wDGPw9cs85vD5eCdHbB1A4GOurui57QzivyMdhnBKvNfKPpLt7qY9MKx6EnkIyvAE2eywJk9W-51fkoWC16n_JA6GQ2WUBOu_TJMAiOv6FbulnNqyHgP7UbwQLCWAxVsx75VPNtD1EM-pA6uu3vDgCsztKO3_IvbVzYoAEbDC91RG3V6kFvgSv1NBKuu_4dvAhEv4QE95uqz2S7RdG-h7sCSTsk5qz8lJqye5gSdxx23beYPT_aEMRXcPPDA',
              userId: '290',
              password: '18e114ed4591073d9d9068d1112bdbcb',
              timestamp: '20230718100456',
            ),
        '/verify': (context) => VerifyScreen(
              token: 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6Ik1FSXpRa1UxTVVZek1qRXlOVEJDUVRVd1EwRTJOa0ZGTmpCRFFUSXdRa0l5TVRBeE16azBNdyJ9.eyJpc3MiOiJodHRwczovL2N5bmNpdC5hdXRoMC5jb20vIiwic3ViIjoiM3BCQXlySTBxVmxyN1JTMjQ2REtGb0hxNkl1bXdzWUFAY2xpZW50cyIsImF1ZCI6Imh0dHBzOi8vdWF0YXBpLmN5bmNpdC50ZWNoIiwiaWF0IjoxNjg5NjU1Mzg2LCJleHAiOjE2ODk3NDE3ODYsImF6cCI6IjNwQkF5ckkwcVZscjdSUzI0NkRLRm9IcTZJdW13c1lBIiwic2NvcGUiOiJyZWFkOm1lc3NhZ2VzIiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIn0.SZPav0qQsJiZh-1u1KRUsYzTqY5l0kMloKgJCfL67Uqx6FjvI6HNCLueKGHjioCKDvJc-16O1yug2iQ4SytwXXEp1-wDGPw9cs85vD5eCdHbB1A4GOurui57QzivyMdhnBKvNfKPpLt7qY9MKx6EnkIyvAE2eywJk9W-51fkoWC16n_JA6GQ2WUBOu_TJMAiOv6FbulnNqyHgP7UbwQLCWAxVsx75VPNtD1EM-pA6uu3vDgCsztKO3_IvbVzYoAEbDC91RG3V6kFvgSv1NBKuu_4dvAhEv4QE95uqz2S7RdG-h7sCSTsk5qz8lJqye5gSdxx23beYPT_aEMRXcPPDA',
              userId: '290',
              password: '18e114ed4591073d9d9068d1112bdbcb',
              timestamp: '20230718100456',
            ),
            
      },
    );
  }
}
