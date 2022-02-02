import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const bordereStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: const Color(0xffa7cfea), width: 2));

    const linkTextStyle = TextStyle(fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF8BBBDE));

    return MaterialApp(
        home:Scaffold(
            body: Container (
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/SkyFON2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: 70,),
                  SizedBox(width: 100, height: 100,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(
                          224, 95, 172, 0.9), border: Border.all(width: 3, color: Colors.green)),
                      child: Image(image: AssetImage('assets/dartLOGO.png'),),
                    ),
                  ),
                  SizedBox(height: 23,),
                  Container(
                    width: 240,
                    height: 20,
                    decoration: BoxDecoration(color: Color.fromRGBO(
                        25, 105, 141, 0.7)),
                    child: Text('Введите логин в ввиде 10 цифр вашего телефона',
                      style:TextStyle(fontSize: 16,color:Color.fromRGBO(
                          49, 21, 21, 1.0)
                      ),
                    ),
                  ),
                  SizedBox(height: 18,),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffaed2ea),
                      enabledBorder: bordereStyle,
                      focusedBorder: bordereStyle,
                      labelText: 'Телефон',
                    ),
                  ),
                  SizedBox(height: 18,),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffaed2ea),
                      enabledBorder: bordereStyle,
                      focusedBorder: bordereStyle,
                      labelText: 'Пароль',
                    ),
                  ),
                  SizedBox(height: 28,),
                  SizedBox(width: 254, height: 42, child:
                  ElevatedButton(onPressed: () {},
                    child: Text('ВХОД', style: TextStyle(fontSize:18 ),),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF07B1AB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(height: 32),
                  InkWell(
                      child: const Text('Регистрация',
                          style: linkTextStyle), onTap: () {}),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        child: const Text('Забыли пароль?',style: linkTextStyle),
                        onTap: () {}),
                  )],
                ),
              ),
            )));
  }
}