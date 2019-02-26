import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  
  @override
  _LoginScreenState createState()=> new _LoginScreenState();
    
  }
  
  class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin{
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  String _email, _password;

  @override
  void initState(){
    super.initState();
  }
  TextStyle style =TextStyle(fontFamily: 'Montserrat', fontSize: 14.0, color: Colors.black);
  @override
  Widget build(BuildContext context) {
//Email
    final emailField = TextFormField(
      validator: (val) => !val.contains('@') ? 'Usuario Incorrecto' :null,
      onSaved: (val) => _email = val,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        labelText: 'Usuario',
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 1.0,
            style: BorderStyle.solid
          ),
          borderRadius: BorderRadius.circular(25.0)
        )
      ),
    );
//Password
    final passwordField =TextFormField(
      validator: (val) => !(val.length > 5) ? 'Contraseña Invalida' :null,
      onSaved: (val) => _password = val,
      obscureText: true,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 14.0, color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        labelText: 'Contraseña',
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0)
        )
      ),
    );
//Interfaz de Usuario
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: new Form(
          key:formKey,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.05), BlendMode.dstATop),
                image: AssetImage('assets/bg_sgb.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              reverse: true,
              child: new Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(80.0, 45.0, 80.0, 40.0),
                child: Center(
                  child: SizedBox(
                    height: 120.0,
                    child: Image.asset("assets/logot_sgb.png",
                    fit:BoxFit.contain,
                    ),
                  ),
                ),
              ),
          new Padding(
            padding: const EdgeInsets.only(bottom: 15.0)
            ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 10.0),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: emailField
          ),
          SizedBox(
            height: 14.0,
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 15.0)
            ),
          new Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 10.0),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: passwordField
            ),
          ),
          Divider(
            height: 24.0,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: new FlatButton(
                  child: new Text(
                    "¿Olvidó su contraseña?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  onPressed: () => {},
                ),
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: new FlatButton(
                  child: new Text(
                    "¿Olvidó su usuario?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  onPressed: () => {},
                ),
              ),
            ],
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 15.0)
            ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 20.0, bottom: 15.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                    ),
                    color: Colors.blueAccent,
                    onPressed: () => {},
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 11.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "ENTRAR",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
            ) 
    ),
        ),
    ),
    );
  }


}