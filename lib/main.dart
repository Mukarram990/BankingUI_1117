import 'package:flutter/material.dart';

void main() {
  WidgetsApp.debugAllowBannerOverride = false;
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: const Text("Banking Application",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold))),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddCard()),
                      );
                    },
                    child: const Text(
                      "Add Card",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(fixedSize: Size(190, 40))),
                padding: EdgeInsets.all(20),
              ),
              Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewCard()),
                      );
                      },
                      child: const Text(
                        "View All Cards",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style:
                          ElevatedButton.styleFrom(fixedSize: Size(190, 40))))
            ],
          ),
        ));
  }
}

class ViewCard extends StatelessWidget {
  const ViewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("All Cards",style: TextStyle(fontSize: 17),),
        centerTitle: true,
        foregroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.navigate_before_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
              decoration: BoxDecoration(
                color:Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4,
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 3,
                      offset: Offset(1, 3))
                ],
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 194, 192, 192),
                  )))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 200,
                  width: 370,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
          stops: [
		-0.026, 
		0.51, 
		1.0, 
		],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
		Color(0xFF2a2a2a), 
		Color(0xFF383838), 
		Color(0xFF444444), 
		],
        ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 3, 20),
                            child: Image.asset(
                              "assets/banking/nexuslogo.png",
                            ),
                          ),
                          Text(
                            "Dutch Bangla Bank",
                            style: TextStyle(color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.all(1),
                            child: Image.asset(
                              "assets/banking/Visa_Inc._logo.png",
                              width: 150,
                              height: 30,
                              color: Colors.white.withOpacity(0.1),
                              fit: BoxFit.fitHeight,
                            ),
                          )
                        ],
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                          child: Text(
                            "**** **** **** 1690",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 5, 1, 20),
                            child: Text(
                              "Plantinum Plus",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(1, 5, 20, 20),
                            child: Text(
                              "Exp 01/22",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 1, 20),
                              child: Text(
                                "Sunny Aveiro",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child:
                                  Image.asset("banking/Visa_Inc._logo.png"),
                            )
                          ]),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 200,
                  width: 370,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
          stops: [
		0.022, 
		0.52, 
		1.1, 
		],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
		Color(0xFF5a51bb), 
		Color(0xFF6d63d5), 
		Color(0xFF8075ed), 
		],
        ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 3, 20),
                            child: Image.asset(
                              "assets/banking/nexuslogo.png",
                            ),
                          ),
                          Text(
                            "Dutch Bangla Bank",
                            style: TextStyle(color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.all(1),
                            child: Image.asset(
                              "assets/banking/Visa_Inc._logo.png",
                              width: 150,
                              height: 30,
                              color: Colors.white.withOpacity(0.1),
                              fit: BoxFit.fitHeight,
                            ),
                          )
                        ],
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                          child: Text(
                            "**** **** **** 1690",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 5, 1, 20),
                            child: Text(
                              "Plantinum Plus",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(1, 5, 20, 20),
                            child: Text(
                              "Exp 01/22",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 1, 20),
                              child: Text(
                                "Sunny Aveiro",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(1, 5, 20, 20),
                              child: Image.asset("assets/banking/mastercard.png"),
                            )
                          ]),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 200,
                  width: 370,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
          stops: [
		-0.0067, 
		0.54, 
		1.1, 
		],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
		Color(0xFF399696), 
		Color(0xFF52b3b3), 
		Color(0xFF67cccc), 
		],
        ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 3, 20),
                            child: Image.asset(
                              "assets/banking/nexuslogo.png",
                            ),
                          ),
                          Text(
                            "Dutch Bangla Bank",
                            style: TextStyle(color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.all(1),
                            child: Image.asset(
                              "assets/banking/Visa_Inc._logo.png",
                              width: 150,
                              height: 30,
                              color: Colors.white.withOpacity(0.1),
                              fit: BoxFit.fitHeight,
                            ),
                          )
                        ],
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                          child: Text(
                            "**** **** **** 1690",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 5, 1, 20),
                            child: Text(
                              "Plantinum Plus",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(1, 5, 20, 20),
                            child: Text(
                              "Exp 01/22",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 1, 20),
                              child: Text(
                                "Sunny Aveiro",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child:
                                  Image.asset("assets/banking/Visa_Inc._logo.png"),
                            )
                          ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Add Cards",
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.navigate_before_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                            children: [
                              Image.asset("assets/banking/1.png", width: 250, height: 250),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                width: 370,
                                decoration: const BoxDecoration(
                  gradient: LinearGradient(
          stops: [
		-0.026, 
		0.51, 
		1.0, 
		],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
		Color(0xFF2a2a2a), 
		Color(0xFF383838), 
		Color(0xFF444444), 
		],
        ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 3, 20),
                          child: Image.asset(
                            "assets/banking/nexuslogo.png",
                          ),
                        ),
                        Text(
                          "Dutch Bangla Bank",
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1),
                          child: Image.asset(
                            "assets/banking/Visa_Inc._logo.png",
                            width: 150,
                            height: 30,
                            color: Colors.white.withOpacity(0.1),
                            fit: BoxFit.fitHeight,
                          ),
                        )
                      ],
                    ),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                        child: Text(
                          "**** **** **** 1690",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 5, 1, 20),
                          child: Text(
                            "Plantinum Plus",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(1, 5, 20, 20),
                          child: Text(
                            "Exp 01/22",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 1, 20),
                            child: Text(
                              "Sunny Aveiro",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Image.asset("assets/banking/Visa_Inc._logo.png"),
                          )
                        ]),
                  ],
                                ),
                              ),
                              SizedBox(height: 60),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text("Add Card"),
                                style: ElevatedButton.styleFrom(fixedSize: Size(370, 40),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.blue ))),
                              )
                            ],
                  ),
                ),
              )),
    );
  }
}
