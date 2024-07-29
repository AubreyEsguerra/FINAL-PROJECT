///////////////Eto ang Landing_Page1 
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lost and Found App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Lost and Found Management System',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '"Your lost items can be restored through this system"',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LearnMorePage()),
                ); // Navigate to the "Learn More" page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text(
                'Learn More >>>',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the "Sign In" page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text(
                'Sign In ▼ ▼ ▼',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

/////Learn_more

class LearnMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn More'),
        backgroundColor: Color.fromARGB(255, 201, 31, 19), // Set the app bar color to red
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'), // replace with your image asset
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            // Introduction to the System
            _buildSection(
              title: 'Introduction to the System:',
              content:
                  'The Lost and Found Management System is designed to help users report and track lost items. With this system, users can easily report lost items and receive real-time updates on found items that match their descriptions.',
            ),

            // How It Works
            _buildSection(
              title: 'How It Works:',
              content:
                  'To report a lost item, simply fill out the report form with a detailed description of the item. Our system will then match your report with found items that have been reported by other users. If a match is found, you will receive a notification with instructions on how to claim your item.',
            ),

            // Key Features
            _buildSection(
              title: 'Key Features:',
              content:
                  'Our system offers a user-friendly interface, real-time updates on reported items, integration with location services to pinpoint where items were lost or found, and a notification system for alerts on matched items.',
            ),

            // User Instructions
            _buildSection(
              title: 'User Instructions:',
              content:
                  'To get started, simply register and log in to the app. From there, you can navigate to the report form to report a lost item. Be sure to provide a detailed description of the item, including its location and any distinctive features.',
            ),

            // Security and Privacy
            _buildSection(
              title: 'Security and Privacy:',
              content:
                  'We take the security and privacy of our users seriously. Our system is designed to protect user data and ensure that all information is kept confidential.',
            ),

            // FAQs
            _buildSection(
              title: 'FAQs:',
              content:
                  'Q: How do I report a lost item?\nA: Simply fill out the report form with a detailed description of the item.\n\nQ: How do I claim a found item?\nA: Follow the instructions provided in the notification you receive when a match is found.',
            ),

            // Contact Information
            _buildSection(
              title: 'Contact Information:',
              content:
                  'If you have any questions or need further assistance, please contact our support team at [support@lostfound.com](mailto:support@lostfound.com).',
            ),

            // Success Stories
            _buildSection(
              title: 'Success Stories:',
              content:
                  'Don\'t just take our word for it! Our system has helped many users successfully find their lost items. Check out our testimonials page to read their stories.',
            ),

            // Developer Information
            _buildSection(
              title: 'Developer Information:',
              content:
                  'The Lost and Found Management System was developed by a team of dedicated developers who are passionate about creating solutions that make a difference in people\'s lives.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required String content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.8), // slightly transparent white background
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                content,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

/////////////////////////// Eto yung Landing_page 2, Gets ba ?

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Box 1 - Student
                Container(
                  width: 200,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Logo
                      Image.asset('assets/university_logo.png', height: 80),
                      SizedBox(height: 10),
                      Text(
                        'Student',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Welcome!!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Are you a Student, Do you lose something? Sign in here',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 15),
                      // Fix for button overflow error
                      SizedBox(
                        width: double.infinity, // Take up the available width
                        child: ElevatedButton(
                          onPressed: () {
                          Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => StudentPage1()),
                            );
                            // Handle sign in logic here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Reduce padding
                            
                          ),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 14, // Reduce font size
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),

                // Box 2 - Security
                Container(
                  width: 200,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Logo
                      Image.asset('assets/university_logo.png', height: 80),
                      SizedBox(height: 10),
                      Text(
                        'Security',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Good Day!!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Anyone missing stuff? Let\'s sign it!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 15),
                      // Fix for button overflow error
                      SizedBox(
                        width: double.infinity, // Take up the available width
                        child: ElevatedButton(
                          onPressed: () {
                           Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => SecurityPage1()),
                            ); // Handle sign in logic here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Reduce padding
                          ),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 14, // Reduce font size
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/////////////////////// Landing_Page 3

class LandingPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('LandingPage3 build method called');
    return Scaffold(
      body: Container(
        color: Colors.redAccent, // background color
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // BATANGAS S The National CCC- STATE UNIVERSIT ccc- University 1903 PHILIPPINES Engineering
              Text('BATANGAS S The National CCC- STATE UNIVERSIT ccc- University 1903 PHILIPPINES Engineering', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

              // Our Team
              SizedBox(height: 20),
              Text('Our Team', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Grenias, Ganella Mae'),
                  Text('Esguerra, Aubrey'),
                  Text('Maranan, Mikaela'),
                  Text('Canuel, Jed'),
                ],
              ),

              // Contact Us
              SizedBox(height: 20),
              Text('Contact Us', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 10),
                      Text('lostandfound@gmail.com'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 10),
                      Text('lostandfound@gmail.com'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Text('555-555-555'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// /////////// Student_Page1

class StudentPage1 extends StatefulWidget {
  @override
  _StudentPage1State createState() => _StudentPage1State();
}

class _StudentPage1State extends State<StudentPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo
           

            // Container
            Container(
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Lost and Found',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Image.asset('assets/university_logo.png', height: 50), // Replace with university banner image
                    SizedBox(height: 20),
                    Text(
                      'Reminder! If it\'s your first time, just enter your Sr-code as a Username and password.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Ex. Sr-code: 21-00000',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                         MaterialPageRoute(builder: (context) => StudentPage2()),
);  
                        // Handle sign in logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                      
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/////////////Student_Page2


class StudentPage2 extends StatefulWidget {
  @override
  _StudentPage2State createState() => _StudentPage2State();
}

class _StudentPage2State extends State<StudentPage2> {
  final _formKey = GlobalKey<FormState>();
  String? _srCode;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'), // Replace with your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Signin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.red[900])),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Sr. code:',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red[900]!, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          ),
                        ),
                        validator: (value) {
                          if (value?.isEmpty?? true) {
                            return 'Please enter your Sr Code';
                          }
                          return null;
                        },
                        onSaved: (value) => _srCode = value,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password:',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFAA2222), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          ),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value?.isEmpty?? true) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        onSaved: (value) => _password = value,
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate()?? false) {
                            _formKey.currentState?.save();
                            // Handle sign in logic here
                            print('Sr Code: $_srCode, Password: $_password');
                            Navigator.push(
                          context,
                         MaterialPageRoute(builder: (context) => LostItemsPage()),
                         );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFFAA2222)),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
                        ),
                        child: Text(
                          'Signin',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Changed to white
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFAA2222),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/logo2.png', height: 100), // Replace with your university logo
                    SizedBox(height: 20),
                    Text(
                      'Lost and Found',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//////Security_page1

class SecurityPage1 extends StatefulWidget {
  @override
  _SecurityPage1State createState() => _SecurityPage1State();
}

class _SecurityPage1State extends State<SecurityPage1> {
  final _formKey = GlobalKey<FormState>();
  String? _username;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'), // Replace with your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Signin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.red[900])),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username:',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red[900]!, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          ),
                        ),
                        validator: (value) {
                          if (value?.isEmpty?? true) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                        onSaved: (value) => _username = value,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password:',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFAA2222), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          ),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value?.isEmpty?? true) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        onSaved: (value) => _password = value,
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate()?? false) {
                            _formKey.currentState?.save();
                            // Handle sign in logic here
                            print('Username: $_username, Password: $_password');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => UserProfilePage()),
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFFAA2222)),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
                        ),
                        child: Text(
                          'Signin',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Changed to white
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          
                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFAA2222),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/logo2.png', height: 100), // Replace with your university logo
                    SizedBox(height: 20),
                    Text(
                      'Lost and Found',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///Register_Page



///User_Profile_Security

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.person),
            Text('User Profile'),
          ],
        ),
        backgroundColor: Colors.red[900],
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
              (Route<dynamic> route) => false,
            );
          },
        ),
        actions: <Widget>[
          // Remove the logout icon button from here
        ],
      ),
      body: Row(
        children: <Widget>[
          // Sidebar
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfilePage()),
                    );  // Handle user profile button press
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.find_in_page),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewLostItemsPage()),
                    );
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.report),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReportMissingPage()),
                    ); // Handle report missing button press
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.check_circle),
                  onPressed: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClaimConfirmationPage()),
                    ); // Handle claimed item button press
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
              ],
            ),
          ),
          // Main Content
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bg.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 300, // Set the width of the container
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white, // Add this line to set the background color of the container
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min, // Set the mainAxisSize to min
                        children: <Widget>[
                          Text(
                            'Welcome!',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[900], // Add this line to set the text color
                            ),
                          ),
                          SizedBox(height: 10),
                                                    Text(
                            'User: Security',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey, // Add this line to set the text color
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Username: 2122',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey, // Add this line to set the text color
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///////ViewLost_Item

class ViewLostItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.find_in_page),
            Text('View Lost Items'),
          ],
        ),
        backgroundColor: Colors.red[900],
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
              (Route<dynamic> route) => false,
            );
          },
        ),
        actions: <Widget>[
          // Remove the logout icon button from here
        ],
      ),
      body: Row(
        children: <Widget>[
          // Sidebar
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    // Navigate to user profile security page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfilePage()),
                    );
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.find_in_page),
                  onPressed: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewLostItemsPage()),
                    ); // Handle view lost items button press
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.report),
                  onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReportMissingPage()),
                    );  // Handle report missing button press
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.check_circle),
                  onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClaimConfirmationPage()),
                    );  // Handle claimed item button press
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
              ],
            ),
          ),
          // Main Content
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bg.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 400, // Increased the width of the container
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white, // Add this line to set the background color of the container
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal, // Allow horizontal scrolling
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('Item Number')),
                            DataColumn(label: Text('Item Name')),
                            DataColumn(label: Text('Date Found')),
                          ],
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(Text('000013')),
                                DataCell(Text('ID')),
                                DataCell(Text('2023-11-21')), // Date Found
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(Text('000014')),
                                DataCell(Text('Money')),
                                DataCell(Text('2023-11-21')), // Date Found
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(Text('000014')),
                                DataCell(Text('Headphone')),
                                DataCell(Text('2023-11-22')), // Date Found
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(Text('000016')),
                                DataCell(Text('Cellphone')),
                                DataCell(Text('2023-11-22')), // Date Found
                              ],
                            ),// Add more rows as needed
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///ReportMissingItemPage

class ReportMissingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.report),
            Text('Report Missing'),
          ],
        ),
        backgroundColor: Colors.red[900],
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
              (Route<dynamic> route) => false,
            );
          },
        ),
        actions: <Widget>[
          // Remove the logout icon button from here
        ],
      ),
      body: Row(
        children: <Widget>[
          // Sidebar
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    // Navigate to user profile security page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfilePage()),
                    );
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.find_in_page),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewLostItemsPage()),
                    ); // Handle view lost items button press
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.report),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReportMissingPage()),
                    ); // Handle report missing button press
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.check_circle),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClaimConfirmationPage()),
                    ); // Handle claimed item button press
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
              ],
            ),
          ),
          // Main Content
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bg.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 400, // Adjust the height as needed
                      child: Container(
                        width: 400, 
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white, 
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Item Number',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 16),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Item Name',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 16),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Date Found',
                                hintText: 'mm/dd/yyyy',
                                border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.calendar_today),
                              ),
                            ),
                            SizedBox(height: 32),
                            ElevatedButton(
                              onPressed: () {
                                // Handle Report Lost Item button press
                              },
                              child: Text('Report Lost Item'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
///Claim_Conformation

class ClaimConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.check_circle),
            Text('Claim Confirmation'),
          ],
        ),
        backgroundColor: Colors.red[900],
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
              (Route<dynamic> route) => false,
            );
          },
        ),
        actions: <Widget>[
          // You can add additional actions here if needed
        ],
      ),
      body: Row(
        children: <Widget>[
          // Sidebar
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfilePage()),
                    );
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.find_in_page),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewLostItemsPage()),
                    );
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.report),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReportMissingPage()),
                    );
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.check_circle),
                  onPressed: () {
                    // Already on ClaimConfirmationPage
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClaimedItemsPage()),
                    );
                  },
                  child: Text(
                    'Claimed Items',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          // Main Content
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bg.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.55, // Adjusted width to 75% of screen width
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columnSpacing: 40, // Adjust spacing between columns
                          columns: [
                            DataColumn(label: Text('Item Number')),
                            DataColumn(label: Text('Item Name')),
                            DataColumn(label: Text('Date Found')),
                            DataColumn(label: Text('Claim')),
                          ],
                          rows: [
                            buildDataRow('000013', 'ID', '2023-11-21', context),
                            buildDataRow('000014', 'Money', '2023-11-21', context),
                            buildDataRow('000015', 'Headphone', '2023-11-22', context),
                            buildDataRow('000016', 'Cellphone', '2023-11-22', context),
                            // Add more claimed items as needed
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow buildDataRow(String itemNumber, String itemName, String dateFound, BuildContext context) {
    return DataRow(
      cells: [
        DataCell(Text(itemNumber)),
        DataCell(Text(itemName)),
        DataCell(Text(dateFound)),
        DataCell(ElevatedButton(
          onPressed: () {
            // Handle claim button press
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Item Claimed'),
                  content: Text('You have successfully claimed item $itemNumber: $itemName'),
                  actions: <Widget>[
                    TextButton(
                      child: Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Claim'),
        )),
      ],
    );
  }
}

///Claimed_Items


class ClaimedItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.check_circle),
            Text('Claimed Items'),
          ],
        ),
        backgroundColor: Colors.red[900],
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
              (Route<dynamic> route) => false,
            );
          },
        ),
        actions: <Widget>[
          // You can add additional actions here if needed
        ],
      ),
      body: Row(
        children: <Widget>[
          // Sidebar (Similar to ClaimConfirmationPage)
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfilePage()),
                    );
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.find_in_page),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewLostItemsPage()),
                    );
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.report),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReportMissingPage()),
                    );
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.check_circle),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClaimConfirmationPage()),
                    );
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
              ],
            ),
          ),
          // Main Content (Similar DataTable as ClaimConfirmationPage)
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bg.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.55, // Adjusted width to 75% of screen width
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columnSpacing: 40, // Adjust spacing between columns
                          columns: [
                            DataColumn(label: Text('Item Number')),
                            DataColumn(label: Text('Item Name')),
                            DataColumn(label: Text('Date Found')),
                            DataColumn(label: Text('Date Claimed')),
                          ],
                          rows: [
                            buildDataRow('000001', 'Cellphone', '2023-11-13', '2023-11-24', context),
                            buildDataRow('000002', 'Ballpen', '2023-11-14', '2023-11-24', context),
                            buildDataRow('000003', 'Book', '2023-11-14', '2023-11-24', context),
                            buildDataRow('000004', 'Pencil', '2023-11-15', '2023-11-24', context),
                            buildDataRow('000005', 'Bag', '2023-11-17', '2023-11-24', context),
                            buildDataRow('000006', 'Money', '2023-11-17', '2023-11-24', context),
                            buildDataRow('000007', 'Shoes', '2023-11-18', '2023-11-24', context),
                            // Add more claimed items as needed
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow buildDataRow(String itemNumber, String itemName, String dateFound, String dateClaimed, BuildContext context) {
    return DataRow(
      cells: [
        DataCell(Text(itemNumber)),
        DataCell(Text(itemName)),
        DataCell(Text(dateFound)),
        DataCell(Text(dateClaimed)),
      ],
    );
  }
}

////Student_Page3

class LostItemsPage extends StatefulWidget {
  @override
  _LostItemsPageState createState() => _LostItemsPageState();
}

class _LostItemsPageState extends State<LostItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Lost Item', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFFE04375),
        leading: IconButton(
          icon: Icon(Icons.logout, color: Colors.white),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
              (Route<dynamic> route) => false,
            );
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), // replace with your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), // add a white background with 80% opacity
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Table(
                  border: TableBorder.all(
                    color: Color(0xFFE04375),
                    width: 1.0,
                  ),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      decoration: BoxDecoration(color: Color(0xFFE04375)), // Table header background color
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Container(
                            padding: EdgeInsets.all(12.0),
                            child: Text('Item Number', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0)),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Container(
                            padding: EdgeInsets.all(12.0),
                            child: Text('Item Name', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0)),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Container(
                            padding: EdgeInsets.all(12.0),
                            child: Text('Date Found', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0)),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('000013', style: TextStyle(fontSize: 16.0)),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('ID', style: TextStyle(fontSize: 16.0)),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('2023-11-21', style: TextStyle(fontSize: 16.0)),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('000014', style: TextStyle(fontSize: 16.0)),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('Money', style: TextStyle(fontSize: 16.0)),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('2023-11-21', style: TextStyle(fontSize: 16.0)),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('000015', style: TextStyle(fontSize: 16.0)),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('Headphone', style: TextStyle(fontSize: 16.0)),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('2023-11-22', style: TextStyle(fontSize: 16.0)),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('000016', style: TextStyle(fontSize: 16.0)),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('Cellphone', style: TextStyle(fontSize: 16.0)),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('2023-11-22', style: TextStyle(fontSize: 16.0)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


