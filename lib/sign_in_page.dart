import 'package:chat_app/common_widget/social_loginbutton.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CANLI SOHBET UYGULAMASI"),
        elevation: 10, //GÖLGE
      ),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Oturum Açın",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            const SizedBox(
              height: 8,
            ),
            SocialLoginButton(
                butonText: "Google ile Giriş Yap",
                butonColor: Colors.white,
                textColor: Colors.black,
                radius: 16,
                butonIcon: Image.asset("images/google.png"),
                onPressed: () {}),
                const SizedBox(height: 10,),
            SocialLoginButton(
                butonText: "Facebook ile Giriş Yap",
                butonColor: const Color(0xFF334D92),
                textColor: Colors.white,
                radius: 16,
                butonIcon: Image.asset("images/facebook.png"),
                onPressed: () {}),
                const SizedBox(height: 10,),
            SocialLoginButton(
                butonText: "Email ve Şifre ile Giriş Yap",
                butonColor: Colors.purple,
                textColor: Colors.white,
                radius: 16,
                butonIcon: Image.asset("images/mail.png"),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
