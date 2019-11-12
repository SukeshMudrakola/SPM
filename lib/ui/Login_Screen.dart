import 'package:flutter/material.dart';
import 'package:gender_selection/gender_selection.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String name='';
  String gender='';
  String age='';
  String homeCountry='';
  String citizenCountry='';
  String nativeLang='';
  String ethnicity='';
  String religion='';
  String socioEconomics='';
  String education='';
  String profession='';
  String employer='';
  String employerDomain='';
  String role='';

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
          child: Column(
          children: <Widget>[
            NameField(),

       //     emailField(),
      //      passwordField(),
            genderField(),
          //  genderField2(),
            ageField(),
            homeCountryField(),
            citizenCountryField(),
            nativeLangField(),
            ethnicityField(),
            religionField(),
            socioEconomicsField(),
            educationField(),
            professionField(),
            employerField(),
            employerDomainField(),
            roleField(),


            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget ageField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'My Age is',
        hintText: '21',
      ),

      onSaved: (String value) {
        age = value;
      },
    );
  }

  Widget genderField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'My Gender',
        hintText: 'male/female',
      ),

      onSaved: (String value) {
        gender = value;
      },
    );
  }




 // Widget genderField2() {
   // return DropdownButtonHideUnderline(





  //}

  Widget homeCountryField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'My home country is',
        //hintText: '',
      ),

      onSaved: (String value) {
        homeCountry = value;
      },
    );
  }

  Widget citizenCountryField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'I am currently a citizen of',
      //  hintText: 'XYZ ABC',
      ),

      onSaved: (String value) {
        citizenCountry = value;
      },
    );
  }

  Widget nativeLangField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'My native language is',
     //   hintText: 'XYZ ABC',
      ),

      onSaved: (String value) {
        nativeLang = value;
      },
    );
  }

  Widget ethnicityField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'My ethnic identity',
     //   hintText: 'XYZ ABC',
      ),

      onSaved: (String value) {
        ethnicity = value;
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      validator:
      validateEmail, //passing the reference of the validation mixin, not calling directly
      onSaved: (String value) {
        email = value;
      },
    );
  }




  Widget religionField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'My religion orientation is',
     //   hintText: 'XYZ ABC',
      ),

      onSaved: (String value) {
        religion = value;
      },
    );
  }
  Widget NameField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'XYZ ABC',
      ),

      onSaved: (String value) {
        name = value;
      },
    );
  }

  Widget socioEconomicsField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'My socio-economic situation is',
     //   hintText: 'XYZ ABC',
      ),

      onSaved: (String value) {
        socioEconomics = value;
      },
    );
  }

  Widget educationField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'My education field',
      //  hintText: 'XYZ ABC',
      ),

      onSaved: (String value) {
        education = value;
      },
    );
  }


  Widget professionField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'My professional field is',
      //  hintText: 'you@example.com',
      ),
    //  validator:
      //validateEmail, //passing the reference of the validation mixin, not calling directly
      onSaved: (String value) {
        profession = value;
      },
    );
  }

  Widget employerField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Type of my employer is',
    //    hintText: 'you@example.com',
      ),
   //   validator:
     // validateEmail, //passing the reference of the validation mixin, not calling directly
      onSaved: (String value) {
        employer = value;
      },
    );
  }

  Widget employerDomainField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Field of my organisation is',
      //  hintText: 'you@example.com',
      ),
      onSaved: (String value) {
        employerDomain = value;
      },
    );
  }

  Widget roleField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'My role in the organisation',
     //   hintText: 'you@example.com',
      ),
      onSaved: (String value) {
        role = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit'),
      onPressed: () {
        //*: Need to get a reference of the Form Widget with Global key to perform form validation
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print(gender);
          print(age);
        }
      },
    );
  }
}


class ValidationMixin {
  String validateEmail(String value) {
    // This validator gets called by the formState(formKey) validate() function
    // return null if valid
    // otherwise string (with the error message) if in valid
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }

    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password must be more than 4 characterss';
    }
    return null;
  }
}