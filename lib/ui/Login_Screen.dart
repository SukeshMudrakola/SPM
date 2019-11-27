
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}




class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();


  String email = '';
 // String cc='';
  String password = '';
  String name = '';
  int age;
  String homeCountry;
  String citizenCountry;
  String nativeLang = '';
  String ethnicity = '';
  String religion = '';
  String socioEconomics = '';
  String education = '';
  String profession = '';
  String employer = '';
  String employerDomain = '';
  String role = '';

  String _buildDialogItem='';

  String gender;
  String phase2='';
  String phase3='';

  Widget build(BuildContext context) {




    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            NameField(),
            Container(margin: EdgeInsets.only(top: 15.0)),


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
            phase2Field(),
            phase3Field(),


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


Widget phase2Field(){
  return TextFormField(
    keyboardType: TextInputType.multiline,
    maxLines: 7,
    decoration: InputDecoration(
      labelText: 'Describe an intercultural interaction',
         hintText: 'Limit yourself to items that could give a clean picture and understanding of the situation to a person who is not familiar with the context of the '
             'situation. Make sure to include who, when, where, why, and how to make it easy to understand.\n'
             'example: As a..',
    ),


    validator: (val) =>
    val.isNotEmpty ? null : "Please describe the intercultural interaction that you experianced",
    onSaved: (String value) {

      phase2 = value;
    },
  );

}

  Widget phase3Field(){
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: 6,
      decoration: InputDecoration(
        labelText: 'Identify a concern',
        hintText: 'What concerns you about this interaction?'
            'What questions does it raise? or what would you like to understand in this situation?',
      ),

      validator: (val) =>
      val.isNotEmpty ? null : "Please tell us your concerns about this interaction",
      onSaved: (String value) {
        phase3 = value;
      },
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
          hint: new Text("I am                       ",),
          value: gender,
      //    icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: c2),
          underline: Container(
            height: 2,
            color: c2,
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
    Color c = Color.fromRGBO(251, 234, 235, 1);
    Color c2 = Color.fromRGBO(47, 60, 126, 1);

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
              hint: new Text("My age is                   ",),
              value: age,
               //   icon: Icon(Icons.arrow_downward),
             iconSize: 24,
              elevation: 16,
             style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: c2,
              ),
              onChanged: (int newValue) {
                setState(() {
                  age = newValue;

                });
              },

              //validator: (val) => val==0 ? 'Name is required' : null,

              items: <int>[15, 16, 17, 18, 19,
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






  Widget homeCountryField() {


      Color c = Color.fromRGBO(251, 234, 235, 1);
      Color c2 = Color.fromRGBO(47, 60, 126, 1);
      return Row (

        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        //crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[

          new Container(child:

          new Text("Home country")

          ),
          new Container( child:
          Center(
              child: DropdownButton<String>(
                hint: new Text("I am from"),
                value: homeCountry,
                //    icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: c2),
                underline: Container(
                  height: 2,
                  color: c2,

                ),


                onChanged: (String newValue) {

                  setState(() {
                    homeCountry = newValue;
                    print("here");
                    if(homeCountry==null){
                     // print("inside");
                      homeCountry="Not stated";
                    }
                   // validator: (val) => val.isEmpty ? 'Name is required' : null,
                  }

                  );
                },



                items: <String>['Afghanistan','Albania','Algeria','Andorra','Angola','Antigua&Deps','Argentina','Armenia','Australia','Austria','Azerbaijan','Bahamas','Bahrain','Bangladesh','Barbados','Belarus','Belgium','Belize','Benin','Bhutan','Bolivia','Bosnia','Herzegovina','Botswana','Brazil','Brunei','Bulgaria','Burkina','Burundi','Cambodia','Cameroon','Canada','CapeVerde','Central Africa','Chad','Chile','China','Colombia','Comoros','Congo','Congo','CostaRica','Croatia','Cuba','Cyprus','Czech Republic','Denmark','Djibouti','Dominica','Ecuador','Egypt','El Salvador','Guinea','Eritrea','Estonia','Ethiopia','Fiji','Finland','France','Gabon','Gambia','Georgia','Germany','Ghana','Greece','Grenada','Guatemala','Guinea','Guyana','Haiti','Honduras','Hungary','Iceland','India','Indonesia','Iran','Iraq','Ireland','Israel','Italy','Ivory Coast','Jamaica','Japan','Jordan','Kazakhstan','Kenya','Kiribati','KoreaNorth','KoreaSouth','Kosovo','Kuwait','Kyrgyzstan','Laos','Latvia','Lebanon','Lesotho','Liberia','Libya','Lithuania','Luxembourg','Macedonia','Madagascar','Malawi','Malaysia','Maldives','Mali','Malta','Marshall Islands','Mauritania','Mauritius','Mexico','Micronesia','Moldova','Monaco','Mongolia','Montenegro','Morocco','Mozambique','Myanmar','Burma','Namibia','Nauru','Nepal','Netherlands','New Zealand','Nicaragua','Niger','Nigeria','Norway','Oman','Pakistan','Palau','Panama','Papua New Guinea','Paraguay','Peru','Philippines','Poland','Portugal','Qatar','Romania','Russian','Rwanda','St Lucia','Samoa','SanMarino','Saudi Arabia','Senegal','Serbia','Seychelles','Sierra Leone','Singapore','Slovakia','Slovenia','Solomon Islands','Somalia','South Africa','South Sudan','Spain','Sri Lanka','Sudan','Suriname','Swaziland','Sweden','Switzerland','Syria','Taiwan','Tajikistan','Tanzania','Thailand','Togo','Tonga','Trinidad&Tobago','Tunisia','Turkey','Turkmenistan','Tuvalu','Uganda','Ukraine','UAE','UK','US','Uruguay','Uzbekistan','Vanuatu','VaticanCity','Venezuela','Vietnam','Yemen','Zambia','Zimbabwe']
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



  Widget citizenCountryField() {


    Color c = Color.fromRGBO(251, 234, 235, 1);
    Color c2 = Color.fromRGBO(47, 60, 126, 1);
    return Row (

      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      //crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[

        new Container(child:

        new Text("Citizen of country")

        ),
        new Container( child:
        Center(
            child: DropdownButton<String>(

              hint: new Text("I am a citizen of",),
              value: citizenCountry,
              //    icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: c2),
              underline: Container(
                height: 2,
                color: c2,
              ),
              onChanged: (String newValue) {
                setState(() {
                  citizenCountry = newValue;

                  }


                );
              },
              items: <String>['Afghanistan','Albania','Algeria','Andorra','Angola','Antigua&Deps','Argentina','Armenia','Australia','Austria','Azerbaijan','Bahamas','Bahrain','Bangladesh','Barbados','Belarus','Belgium','Belize','Benin','Bhutan','Bolivia','Bosnia','Herzegovina','Botswana','Brazil','Brunei','Bulgaria','Burkina','Burundi','Cambodia','Cameroon','Canada','CapeVerde','Central Africa','Chad','Chile','China','Colombia','Comoros','Congo','Congo','CostaRica','Croatia','Cuba','Cyprus','Czech Republic','Denmark','Djibouti','Dominica','Ecuador','Egypt','El Salvador','Guinea','Eritrea','Estonia','Ethiopia','Fiji','Finland','France','Gabon','Gambia','Georgia','Germany','Ghana','Greece','Grenada','Guatemala','Guinea','Guyana','Haiti','Honduras','Hungary','Iceland','India','Indonesia','Iran','Iraq','Ireland','Israel','Italy','Ivory Coast','Jamaica','Japan','Jordan','Kazakhstan','Kenya','Kiribati','KoreaNorth','KoreaSouth','Kosovo','Kuwait','Kyrgyzstan','Laos','Latvia','Lebanon','Lesotho','Liberia','Libya','Lithuania','Luxembourg','Macedonia','Madagascar','Malawi','Malaysia','Maldives','Mali','Malta','Marshall Islands','Mauritania','Mauritius','Mexico','Micronesia','Moldova','Monaco','Mongolia','Montenegro','Morocco','Mozambique','Myanmar','Burma','Namibia','Nauru','Nepal','Netherlands','New Zealand','Nicaragua','Niger','Nigeria','Norway','Oman','Pakistan','Palau','Panama','Papua New Guinea','Paraguay','Peru','Philippines','Poland','Portugal','Qatar','Romania','Russian','Rwanda','St Lucia','Samoa','SanMarino','Saudi Arabia','Senegal','Serbia','Seychelles','Sierra Leone','Singapore','Slovakia','Slovenia','Solomon Islands','Somalia','South Africa','South Sudan','Spain','Sri Lanka','Sudan','Suriname','Swaziland','Sweden','Switzerland','Syria','Taiwan','Tajikistan','Tanzania','Thailand','Togo','Tonga','Trinidad&Tobago','Tunisia','Turkey','Turkmenistan','Tuvalu','Uganda','Ukraine','UAE','UK','US','Uruguay','Uzbekistan','Vanuatu','VaticanCity','Venezuela','Vietnam','Yemen','Zambia','Zimbabwe']
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


    if(homeCountry==null){
  //    validator: (val) => val.isEmpty ? 'Name is required' : null,
      homeCountry="Not stated";
    }

    if(citizenCountry==null){
      citizenCountry="Not stated";
    }

    if(nativeLang==null || nativeLang.isEmpty || nativeLang==''){
      nativeLang="Not stated";
    }

    if(ethnicity==null || ethnicity.isEmpty || ethnicity==''){
      ethnicity="Not stated";
    }

    if(religion==null || religion.isEmpty || religion==''){
      religion="Not stated";
    }

    if(socioEconomics==null || socioEconomics.isEmpty || socioEconomics==''){
      socioEconomics="Not stated";
    }

    if(profession==null || profession.isEmpty || profession==''){
      profession="Not stated";
    }

    if(employerDomain==null || employerDomain.isEmpty || employerDomain==''){
      employerDomain="Not stated";
    }

    if(employer==null || employer.isEmpty || employer==''){
      employer="Not stated";
    }

    if(role==null || role.isEmpty || role==''){
      role="Not stated";
    }
    if(education==null || education.isEmpty || education==''){
      education="Not stated";
    }
    if(age==null){
      age=0;
    }

    if(gender==null || gender.isEmpty || gender==''){
      gender="Not Stated";
    }


    Color c = Color.fromRGBO(251, 234, 235, 1);
    Color c2 = Color.fromRGBO(47, 60, 126, 1);
    return RaisedButton(

      // color: Colors.blue,
      child: Text('Submit'),
      onPressed: () {
        //*: Need to get a reference of the Form Widget with Global key to perform form validation
        if (formKey.currentState.validate()) {

          showDialog(

            context: context,
            builder: (BuildContext context) {
              // return object of type Dialog
              return SimpleDialog(
                contentPadding: EdgeInsets.all(40),
                backgroundColor: c2,

                title: new Text("Confirmation",  textAlign: TextAlign.center,
                  style: TextStyle(

                    fontSize: 25.0,
                    color: c,
                    decoration: TextDecoration.none,
                    fontFamily: "Oxygen",
                    fontWeight: FontWeight.w600,
                  ),
                ),
               children:<Widget>[

                  new Text(
                    "First name:"+name+"\n"
                "Gender:"+gender+"\n"
                   "Age:"+age.toString()+"\n"
                    "Home Country:"+homeCountry+"\n"
                    "Citizenship Country:"+citizenCountry+"\n"
                    "Native Language:"+nativeLang+"\n"
                   "Ethnicity:"+ethnicity+"\n"
                    "Religion:"+religion+"\n"
                    "Socio-Economic situation:"+socioEconomics+"\n"
                    "Education:"+education+"\n"
                    "Professional field:"+profession+"\n"
                    "Employer type:"+employer+"\n"
                   "Field of organisation:"+employerDomain+"\n"
                    "Role:"+role+"\n"
                    "Intercultural interaction:"+phase2+"\n"
                    "Concerns Identified:"+phase3+"\n",

                    textAlign: TextAlign.center,
                    style: TextStyle(

                      fontSize: 15.0,
                      color: c,
                      decoration: TextDecoration.none,
                      fontFamily: "Oxygen",
                      fontWeight: FontWeight.w400,
                    ),


                ),


                new ButtonTheme(
                  minWidth: 100.0,
                  height: 30,// usually buttons at the bottom of the dialog
                  child: RaisedButton(
                    color: c,

                    child: new Text("Confirm"),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/ThankyouPage");
                    },
                  ),
              ),
              //   new Container(padding: EdgeInsets.only(top: 30),),

              new ButtonTheme(
                minWidth: 100.0,
                height: 30,
              child: RaisedButton(
                color: c,

                   child: new Text("Cancel"),
                   onPressed: () {
                     Navigator.of(context).pop();
                   },
                 ),
              ),

                ],
              );
            },
          );





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




}


