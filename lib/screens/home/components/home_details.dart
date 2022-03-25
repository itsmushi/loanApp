import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.black12)),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(

                  alignment: Alignment.center,
                  height: 52,
                  color: Colors.blue[100],
                  child: Text(
                    "Your Debt is",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
            SizedBox(
              width: 1,
            ),
            Expanded(
                flex: 2,
                child: Container(
                  // color: Colors.blue[300],
                  child: TextFormField(
                    enabled: false,
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      fillColor: Colors.blue[400],
                      filled: true,
                      label: Text('input'),
                      // hintText: '23456',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8),
                      disabledBorder: InputBorder.none,
                      suffix: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          _isHidden ? Icons.visibility : Icons.visibility_off,
                          color: Color.fromARGB(200, 300, 500, 1),
                        ),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              width: 1,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  height: 52,
                  color: Colors.blue,
                  child: Text(
                    "TZS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )),
          ],
        ));
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
