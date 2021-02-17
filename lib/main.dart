import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato'
      ),
      home: MyHomePage(),
      routes: {
        '/SleepPage' : (context)=>SleepPage(),
        '/FoodPage' : (context)=>FoodPage(),
        '/WaterPage' : (context)=>WaterPage(),
        '/MusicPage' : (context)=>MusicPage(),
        '/YogaPage' : (context)=>YogaPage(),
        '/SportPage' : (context)=>SportPage(),
      },
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
      backgroundColor: Color(0xfff8f8f8),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*0.43,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffa0d8e1),
                child: Container(
                  margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/splash.png'),
                          fit: BoxFit.contain
                      )
                  ),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 100,),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(20),
                child: Text("Welcome to \nHealthiApp", style: TextStyle(
                  
                  fontSize: 40,
                  fontWeight: FontWeight.w700
                ),),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search,
                    size: 30,),
                    SizedBox(width: 20,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontSize: 20
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: GridView.count(crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  children: <Widget>[
                    categoryWidget('sleep', "Sleep"),
                    categoryWidget('food', "Eating Habbits"),
                    categoryWidget('water', "Water"),
                    categoryWidget('music', "Music"),
                    categoryWidget('yoga', "Yoga"),
                    categoryWidget('sport', "Exercise"),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                       
                        Text('Today')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                       
                        Text('Health and Wellness Tasks', style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w700,
                          fontSize: 20
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text('Settings')
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Container categoryWidget(String img, String title)
  {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      width: MediaQuery.of(context).size.width*0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 20,
          spreadRadius: 1,
          offset: Offset(0,10),
        )]
      ),
      child: InkWell(
       onTap: (){openSleepPage('sleep', 'Sleep');},
      
       child: InkWell(
       onTap: (){openFoodPage('food', 'Eating Habbits');},
       
       child: InkWell(
       onTap: (){openWaterPage('water', 'Water');},
       
       child: InkWell(
       onTap: (){openMusicPage('music', 'Music');},
         
       child: InkWell(
       onTap: (){openYogaPage('yoga', 'Yoga');},
         
       child: InkWell(
       onTap: (){openSportPage('sport', 'Exercise');},
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/$img.png'),
                    fit: BoxFit.contain
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(20),
              child: Text('$title', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
         ),),),),),
    );
        
  }
  void openSleepPage(String img, String title)
  {
    Navigator.pushNamed(context, '/SleepPage', arguments: {'image':'sleep', 'title':'Sleep'});
  }
  
         void openFoodPage(String img, String title)
  {
    Navigator.pushNamed(context, '/FoodPage', arguments: {'image':'food', 'title':'Eating Habbits'});
  }
    
    void openWaterPage(String img, String title)
  {
    Navigator.pushNamed(context, '/WaterPage', arguments: {'image':'water', 'title':'Water'});
  }
    
    void openMusicPage(String img, String title)
  {
    Navigator.pushNamed(context, '/MusicPage', arguments: {'image':'music', 'title':'Music'});
  }
    
    void openYogaPage(String img, String title)
  {
    Navigator.pushNamed(context, '/YogaPage', arguments: {'image':'yoga', 'title':'Yoga'});
  }
    
    void openSportPage(String img, String title)
  {
    Navigator.pushNamed(context, '/SportPage', arguments: {'image':'sport', 'title':'Exercise'});
  }
  }




class SleepPage extends StatefulWidget {
  @override
  _SleepPageState createState() => _SleepPageState();
}

class _SleepPageState extends State<SleepPage> {
  @override
  Widget build(BuildContext context) {
    String selectedImg;
    String selectTitle;
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios,
          color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.43,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffc7b8f5),
            child: Container(
              margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/splash.png'),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 90,),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text('$selectTitle', style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Sleeping well means getting enough sleep.', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Nothing is better than a good night sleep.', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    margin: EdgeInsets.only(right: 20),
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(40)),

                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.search, size: 30,),
                                        SizedBox(width: 20,),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Search',
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                              )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(70),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png'),
                                    fit: BoxFit.contain
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Stage 1 of Sleep', true),
                                  sessionWidget('Stage 2 of Sleep', false),
                                ],
                              ),
                           
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Session 3 of Sleep', false),
                                  sessionWidget('Session 4 of Sleep', false),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text('Surprise Video', style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                            )]
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(50),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png')
                                  )
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('15 mins', style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700
                                    ),),
                                    Text('This video will guide you about the significance of a well sleep.', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                    ),)
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.lock_outline,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        
                        Text('Today')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        
                        Text('Health and Welness Tasks', style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text('Settings')
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Container sessionWidget(String title, bool activeOrNot)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 15,
          spreadRadius: 1
        )]
      ),
      child: Row(
        children: <Widget>[
          Icon(
              (activeOrNot == true) ? Icons.play_circle_filled : Icons.play_circle_outline,
            color: Color(0xff817dc0),
            size: 50,
          ),
          SizedBox(width: 10,),
          Text('$title', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
         
         
         
         
         class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    String selectedImg;
    String selectTitle;
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios,
          color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.43,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffc7b8f5),
            child: Container(
              margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/splash.png'),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 90,),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text('Healthy Diet', style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Healthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Eating healthy food fills your body with energy and nutrients. Imagine your cells smiling back at you and saying: Thank you!', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    margin: EdgeInsets.only(right: 20),
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(40)),

                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.search, size: 30,),
                                        SizedBox(width: 20,),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Search',
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                              )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(70),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png'),
                                    fit: BoxFit.contain
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Light Breakfast at 09.00 AM', true),
                                  sessionWidget('Snack at 11.00 AM', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Lunch at 01.00 PM', false),
                                  sessionWidget('Snack at 03.00 PM', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Dinner at 06.00 PM', false),
                                  sessionWidget('Snack at 08.00 PM', false),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text('Surprise Video', style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                            )]
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(50),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png')
                                  )
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('15 mins', style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700
                                    ),),
                                    Text('This video will guide you about the significance of a healthy diet.', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                    ),)
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.lock_outline,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        
                        Text('Today')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        
                        Text('Health and Wellness Tasks', style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text('Settings')
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Container sessionWidget(String title, bool activeOrNot)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 15,
          spreadRadius: 1
        )]
      ),
      child: Row(
        children: <Widget>[
          Icon(
              (activeOrNot == true) ? Icons.play_circle_filled : Icons.play_circle_outline,
            color: Color(0xff817dc0),
            size: 50,
          ),
          SizedBox(width: 10,),
          Text('$title', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
         
         
         
         class WaterPage extends StatefulWidget {
  @override
  _WaterPageState createState() => _WaterPageState();
}

class _WaterPageState extends State<WaterPage> {
  @override
  Widget build(BuildContext context) {
    String selectedImg;
    String selectTitle;
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios,
          color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.43,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffc7b8f5),
            child: Container(
              margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/splash.png'),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 90,),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text('$selectTitle', style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Basis of the fluids of living organisms.', style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Drink more water. Your skin, your hair, your mind and body will thank you.', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    margin: EdgeInsets.only(right: 20),
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(40)),

                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.search, size: 30,),
                                        SizedBox(width: 20,),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Search',
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                              )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(70),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png'),
                                    fit: BoxFit.contain
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Drink water at 07.00 AM ', true),
                                  sessionWidget('Drink water at 09.00 AM', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Drink water at 11.00 AM', false),
                                  sessionWidget('Drink water at 01.00 PM', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Drink water at 03.00 PM', false),
                                  sessionWidget('Drink water at 05.00 PM', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Drink water at 07.00 PM', false),
                                  sessionWidget('Drink water at 09.00 PM', false),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text('Importance of Water', style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                            )]
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(50),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png')
                                  )
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('15 mins', style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700
                                    ),),
                                    Text('This video will guide you about the significance of water.', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                    ),)
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.lock_outline,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        
                        Text('Today')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        
                        Text('Health and Welness Tasks', style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text('Settings')
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Container sessionWidget(String title, bool activeOrNot)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 15,
          spreadRadius: 1
        )]
      ),
      child: Row(
        children: <Widget>[
          Icon(
              (activeOrNot == true) ? Icons.play_circle_filled : Icons.play_circle_outline,
            color: Color(0xff817dc0),
            size: 50,
          ),
          SizedBox(width: 10,),
          Text('$title', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
         
         
         
         class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    String selectedImg;
    String selectTitle;
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios,
          color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.43,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffc7b8f5),
            child: Container(
              margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/splash.png'),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 90,),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text('$selectTitle', style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Beauty of form, harmony, and expression of emotion.', style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Music can enhance the function of neural networks, slow the heart rate, lower blood pressure, reduce levels of stress hormones.', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    margin: EdgeInsets.only(right: 20),
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(40)),

                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.search, size: 30,),
                                        SizedBox(width: 20,),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Search',
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                              )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(70),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png'),
                                    fit: BoxFit.contain
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Classical Music', true),
                                  sessionWidget('Jazz Music', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Pop Music', false),
                                  sessionWidget('Country Music', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Indie Music', false),
                                  sessionWidget('Alternative Pop', false),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text('Surprise Music', style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                            )]
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(50),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png')
                                  )
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('15 mins', style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700
                                    ),),
                                    Text('Harmony of music genres will enhance your mood and brighten your moment.', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                    ),)
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.lock_outline,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        
                        Text('Today')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        
                        Text('All Exercise', style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text('Settings')
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Container sessionWidget(String title, bool activeOrNot)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 15,
          spreadRadius: 1
        )]
      ),
      child: Row(
        children: <Widget>[
          Icon(
              (activeOrNot == true) ? Icons.play_circle_filled : Icons.play_circle_outline,
            color: Color(0xff817dc0),
            size: 50,
          ),
          SizedBox(width: 10,),
          Text('$title', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
         
         
         
         
         class YogaPage extends StatefulWidget {
  @override
  _YogaPageState createState() => _YogaPageState();
}

class _YogaPageState extends State<YogaPage> {
  @override
  Widget build(BuildContext context) {
    String selectedImg;
    String selectTitle;
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios,
          color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.43,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffc7b8f5),
            child: Container(
              margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/splash.png'),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 90,),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text('$selectTitle', style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Yoga is a group of physical, mental, and spiritual practices or disciplines which originated in ancient India.', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Regular yoga practice creates mental clarity and calmness; increases body awareness; relieves chronic stress patterns; relaxes the mind; centers attention; and sharpens concentration.', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    margin: EdgeInsets.only(right: 20),
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(40)),

                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.search, size: 30,),
                                        SizedBox(width: 20,),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Search',
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                              )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(70),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png'),
                                    fit: BoxFit.contain
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Hatha Yoga', true),
                                  sessionWidget('Iyengar Yoga', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Bikram Yoga', false),
                                  sessionWidget('Vinyasa Yoga', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Kundalini Yoga', false),
                                  sessionWidget('Ashtanga Yoga', false),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text('Surprise Yoga', style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                            )]
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(50),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png')
                                  )
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('15 mins', style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700
                                    ),),
                                    Text('Move, stretch, strengthen, and simply let go.', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                    ),)
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.lock_outline,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        
                        Text('Today')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        
                        Text('All Exercise', style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text('Settings')
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Container sessionWidget(String title, bool activeOrNot)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 15,
          spreadRadius: 1
        )]
      ),
      child: Row(
        children: <Widget>[
          Icon(
              (activeOrNot == true) ? Icons.play_circle_filled : Icons.play_circle_outline,
            color: Color(0xff817dc0),
            size: 50,
          ),
          SizedBox(width: 10,),
          Text('$title', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
         
         
         
         class SportPage extends StatefulWidget {
  @override
  _SportPageState createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  @override
  Widget build(BuildContext context) {
    String selectedImg;
    String selectTitle;
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios,
          color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.43,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffc7b8f5),
            child: Container(
              margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/splash.png'),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 90,),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text('Exercise', style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Your daily exercise routine is here.', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Remember that any exercise is better than no exercise.', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    margin: EdgeInsets.only(right: 20),
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(40)),

                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.search, size: 30,),
                                        SizedBox(width: 20,),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Search',
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                              )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(70),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png'),
                                    fit: BoxFit.contain
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Workout at 09.00 AM', true),
                                  sessionWidget('Workout at 12.00 PM', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Workout at 03.00 PM', false),
                                  sessionWidget('Workout at 05.00 PM', false),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  sessionWidget('Workout at 07.00 PM', false),
                                  sessionWidget('Workout at 09.00 PM', false),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text('Surprise Workout', style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                            )]
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(50),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/$selectedImg.png')
                                  )
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('15 mins', style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700
                                    ),),
                                    Text('This workout will unlock if all the workouts are completed.', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                    ),)
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.lock_outline,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),
              
              
              
              
              
              
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        
                        Text('Today')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        
                        Text('Health and Wellness Tasks', style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text('Settings')
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Container sessionWidget(String title, bool activeOrNot)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 15,
          spreadRadius: 1
        )]
      ),
      child: Row(
        children: <Widget>[
          Icon(
              (activeOrNot == true) ? Icons.play_circle_filled : Icons.play_circle_outline,
            color: Color(0xff817dc0),
            size: 50,
          ),
          SizedBox(width: 10,),
          Text('$title', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}

