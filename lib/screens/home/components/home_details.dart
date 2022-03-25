import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeDetails extends StatefulWidget {
  HomeDetails({this.debt = ""});

  String debt;

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  bool _isHidden = true;
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    inputController.text = widget.debt;
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
                  child: TextFormField(
                    obscuringCharacter: '*',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    controller: inputController,
                    enabled: true,
                    readOnly: true,
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      fillColor: Colors.blue[400],
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 12),
                      disabledBorder: InputBorder.none,
                      suffix: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          _isHidden ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white,
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
