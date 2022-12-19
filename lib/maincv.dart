import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/fourth': (context) => const FourthRoute(),
      '/fifth': (context) => const FifthRoute(),
      '/sixth': (context) => const SixthRoute(),
      '/seventh': (context) => const SeventhRoute(),
    },
  )); //MaterialApp
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/cv.png"), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                Text(
                  'Denmark F. Prado',
                  style: TextStyle(
                    fontFamily: 'Orpheus',
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 7, 7, 7),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  'About Me?',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Color.fromARGB(255, 30, 60, 82),
                    fontSize: 17.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new FifthRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.account_box,
                  ),
                  label: Text('PERSONAL INFORMATION     '), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                  ),
                ), // ElevatedButton
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SixthRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.school,
                  ),
                  label: Text('EDUCATIONAL BACKGROUND'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  ),
                ), // ElevatedButton
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SeventhRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.laptop,
                  ),
                  label: Text('PERSONAL SKILLS'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                  ),
                ), // ElevatedButton
                Padding(padding: EdgeInsets.only(top: 40)),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.logout,
                  ),
                  label: Text('Log Out'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
                  ),
                ), // ElevatedButton
              ],
            ),
          ),
        ),
      ),
    ); // Scaffold
  }
}

class FifthRoute extends StatelessWidget {
  const FifthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Information"),
        backgroundColor: Color.fromARGB(255, 40, 43, 201),
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  '+639063718212',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Mobile Number"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'agonprado12@gmail.com',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Email"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.male,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Male',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Gender"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.cake,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'January 27, 2001',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Birthday"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.house,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  "#109 Nagsaing, Calasiao, Pangasinan",
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Complete Address"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.flag,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Filipino',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Citizenship"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.single_bed_rounded,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Single',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Status"),
              ),
            ),
          ],
        ),
      ),

      /// AppBar
    ); // Scaffold
  }
}

class SixthRoute extends StatelessWidget {
  const SixthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Color.fromARGB(255, 40, 43, 201),
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    'Bachelor of Science in Information Technology 2019-2023'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 6, 44, 56),
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Senior High School 2017-2020'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Doyong-Malabago National High School',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Junior High School 2013-2017'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 6, 44, 56),
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Nagsaing Elementary School',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 44, 56),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('2007-2012'),
              ),
            ),
          ],
        ),
      ), // Center
    ); // Scaffold
  }
}

class SeventhRoute extends StatelessWidget {
  const SeventhRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills"),
        backgroundColor: Color.fromARGB(255, 40, 43, 201),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    '~ Excellent written and verbal communication skills ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 6, 44, 56),
                        fontFamily: 'Times New Roman'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    '~ Highly organized and Efficient ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 6, 44, 56),
                        fontFamily: 'Times New Roman'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    '~ Ability to Work Independently ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 6, 44, 56),
                        fontFamily: 'Times New Roman'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    '~ Service-focused ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 6, 44, 56),
                        fontFamily: 'Times New Roman'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    '~ Proven Leadership Skills ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 6, 44, 56),
                        fontFamily: 'Times New Roman'),
                  ),
                ),
              ),
            ]),
      ),

      /// AppBar
    ); // Scaffold
  }
}
