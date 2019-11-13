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
  String name = '';
 // String gender = '';
  int age;
  String homeCountry = '';
  String citizenCountry = '';
  String nativeLang = '';
  String ethnicity = '';
  String religion = '';
  String socioEconomics = '';
  String education = '';
  String profession = '';
  String employer = '';
  String employerDomain = '';
  String role = '';

  String gender;

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            NameField(),
            Container(margin: EdgeInsets.only(top: 15.0)),

            //     emailField(),
            //      passwordField(),

          // check(),
            testGender(),

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

            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
          //    crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                submitButton(),
                Container(margin: EdgeInsets.only(right:40)),
                resetButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget testGender(){
    Color c = Color.fromRGBO(251, 234, 235, 1);
    Color c2 = Color.fromRGBO(47, 60, 126, 1);
return Row (

  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
  //crossAxisAlignment: CrossAxisAlignment.center,

  children: <Widget>[

  new Container(child:

    new Text("Select your gender")

  ),
new Container( child:
    Center(
        child: DropdownButton<String>(
          hint: new Text("I am",),
          value: gender,
      //    icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: c2),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              gender = newValue;
            });
          },
          items: <String>['Male', 'Female', 'Prefer not to say']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        )
    ),


),


],);


  }

  Widget ageField() {
    return Row (

      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      //crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[

        new Container(child:

        new Text("Select your age")

        ),
        new Container( child:
        Center(
            child: DropdownButton<int>(
              hint: new Text("My age is             ",),
              value: age,
              //    icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (int newValue) {
                setState(() {
                  age = newValue;
                });
              },
              items: <int>[1,2,3,4,5,6,7,8,9,9,10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
                20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
                40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
                50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
                60, 61, 62, 63, 64, 65, 66, 67, 68, 69,
                70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
                80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
                90, 91, 92, 93, 94, 95, 96, 97, 98, 99,
                100]
                  .map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                );
              }).toList(),
            )
        ),


        ),


      ],);


  }

  /* radiobuttons
  Widget testGender(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children :<Widget>[

      Container(
       // alignment: Alignment.centerLeft,
        child: Text(
          "Gender"
        ),
      ),
      Container(
         margin: EdgeInsets.only(right:50)
      ),
      Container(
      //  alignment: Alignment.centerRight,
    child: DropdownButton<String>(
      value: dropdownValue,
     // icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Male','Female','Prefer not to say']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),),

 ], );}



*/





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
      validator: validateEmail,
      //passing the reference of the validation mixin, not calling directly
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

    Color c = Color.fromRGBO(251, 234, 235, 1);
    Color c2 = Color.fromRGBO(47, 60, 126, 1);
    return RaisedButton(

      // color: Colors.blue,
      child: Text('Submit'),
      onPressed: () {
        //*: Need to get a reference of the Form Widget with Global key to perform form validation
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print(gender);
          print(age);


        }
      },
      color: c2,
      textColor: c,
    //  padding: EdgeInsets.only(right: 50),
    );
  }

  Widget resetButton() {

    Color c = Color.fromRGBO(251, 234, 235, 1);
    Color c2 = Color.fromRGBO(47, 60, 126, 1);
    return RaisedButton(

      // color: Colors.blue,
      child: Text('Reset'),
      onPressed: () {

        formKey.currentState.reset();
        //*: Need to get a reference of the Form Widget with Global key to perform form validation

      },
      color: c2,
      textColor: c,
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

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(),

    );
  }
}
