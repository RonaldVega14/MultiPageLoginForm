import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget{
  @override
  _SignUpScreenState createState() => new _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with TickerProviderStateMixin{
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
//Apellidos
    final apellidosField = TextFormField(
      validator: (val) => !val.contains('@') ? 'Usuario Incorrecto' :null,
      onSaved: (val) => _email = val,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 14.0, color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        labelText: 'Apellidos',
        hintText: 'Apellidos, según DUI',
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0)
        )
      ),
    );
//Nombres
    final nombresField =TextFormField(
      validator: (val) => !(val.length > 5) ? 'Contraseña Invalida' :null,
      onSaved: (val) => _password = val,
      obscureText: true,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 14.0, color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        labelText: 'Nombres',
        hintText: 'Nombres, según DUI',
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0)
        )
      ),
    );
//NIT
    final nitField =TextFormField(
      validator: (val) => !(val.length > 5) ? 'Contraseña Invalida' :null,
      onSaved: (val) => _password = val,
      obscureText: true,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 14.0, color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.note),
        labelText: 'NIT',
        hintText: 'NIT',
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0)
        )
      ),
    );
//DUI
    final duiField =TextFormField(
      validator: (val) => !(val.length > 5) ? 'Contraseña Invalida' :null,
      onSaved: (val) => _password = val,
      obscureText: true,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 14.0, color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.note),
        labelText: 'DUI',
        hintText: 'DUI',
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0)
        )
      ),
    );
//Email
    final emailField = TextFormField(
      validator: (val) => !val.contains('@') ? 'Usuario Incorrecto' :null,
      onSaved: (val) => _email = val,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        labelText: 'Correo Electrónico',
        hintText: 'Correo Electrónico (con el que abrió la cuenta)',
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
//Direccion
    final adressField = TextFormField(
      validator: (val) => !val.contains('@') ? 'Usuario Incorrecto' :null,
      onSaved: (val) => _email = val,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.my_location),
        labelText: 'Dirección',
        hintText: 'Dirección',
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
//Teléfono
    final phoneField = TextFormField(
      validator: (val) => !val.contains('@') ? 'Usuario Incorrecto' :null,
      onSaved: (val) => _email = val,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone),
        labelText: 'Teléfono',
        hintText: 'Teléfono',
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
//Cuenta CEDEVAL o Cuenta...
    final accountsField = TextFormField(
      validator: (val) => !val.contains('@') ? 'Usuario Incorrecto' :null,
      onSaved: (val) => _email = val,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        labelText: 'Cuenta',
        hintText: 'Cuenta CEDEVAL o Cuenta de Fondo de Inversión',
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

    return  Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: new Form(
          key:formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
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
              reverse: false,
              child: new Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(80.0, 30.0, 80.0, 10.0),
                child: Center(
                  child: SizedBox(
                    height: 40.0,
                    child: Image.asset("assets/logot_sgb.png",
                    fit:BoxFit.contain,
                    ),
                  ),
                ),
              ),
          new Padding(
            padding: const EdgeInsets.only(bottom: 10.0)
            ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 5.0),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: apellidosField
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 7.0)
            ),
          new Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 5.0),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: nombresField
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 7.0)
            ),
          new Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 5.0),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: nitField
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 7.0)
            ),
            new Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 5.0),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: duiField
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 7.0)
            ),
            new Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 5.0),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: emailField
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 7.0)
            ),
            new Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 5.0),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: adressField
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 7.0)
            ),
            new Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 5.0),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: phoneField
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 7.0)
            ),
            new Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 35.0, right: 35.0, top: 5.0),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: accountsField
            ),
          ),

          Divider(
            height: 10.0,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: new FlatButton(
                  child: new Text(
                    "¿Ya tiene un usuario?",
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
            padding: const EdgeInsets.only(bottom: 5.0)
            ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 35.0, right: 35.0, bottom: 15.0),
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
                              "REGISTRARSE",
                              textAlign: TextAlign.center,
                              style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)
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