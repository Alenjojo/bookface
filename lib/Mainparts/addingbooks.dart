import 'package:bookface/Model/Product.dart';
import 'package:flutter/material.dart';

class AddBooks extends StatefulWidget {
  @override
  _AddBooksState createState() => _AddBooksState();
}

class _AddBooksState extends State<AddBooks> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 110,
                    child: MyTextFormField(
                      hintText: 'Book ID',
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter your first name';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        products.add(
                          Product(
                              title: "AA",
                              id: 9,
                              description: "BBBB",
                              image: "https://picsum.photos/200",
                              color: Color(0xFFAEAEAE)),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              child: MyTextFormField(
                hintText: 'Title',
                isEmail: true,
                validator: (String value) {
                  // if (!validator.isEmail(value)) {
                  //   return 'Please enter a valid email';
                  // }
                  return null;
                },
                onSaved: (String value) {},
              ),
            ),
            Container(
              height: 80,
              child: MyTextFormField(
                hintText: 'Description',
                isPassword: true,
                validator: (String value) {
                  if (value.length < 0) {
                    return 'Enter the description';
                  }

                  _formKey.currentState.save();

                  return null;
                },
                onSaved: (String value) {},
              ),
            ),
            MyTextFormField(
              hintText: 'Image URL',
              isPassword: true,
            ),
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  print(products);
                  Navigator.pop(context);
                }
              },
              child: Text(
                'Add Book',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;

  MyTextFormField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}
