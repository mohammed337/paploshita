import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:paploshita/Constants/Constants.dart';
import 'package:paploshita/Widgets/CustomButton.dart';
import 'package:paploshita/Widgets/CustomTextField.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("img/logo-White-1.png",color: mainColor,width: 200,),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.menu,color: mainColor,), onPressed: (){})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  CustomTextField(hint: "Search Service",prefixIcon: IconButton(icon: Icon(Icons.search,color: textColor,), onPressed: (){}),),
                  const SizedBox(height: 7,),
                  Row(
                    children: [
                      Expanded(flex: 2,child: CustomTextField(hint: "Zip Code",prefixIcon: Icon(Icons.location_on,color: textColor,),)),
                      const SizedBox(width: 5,),
                      Expanded(flex: 1,child: CustomButton(borderColor: mainColor, buttonColor: mainColor, textColor: Colors.white, text: "Get Started", height: 47.0, width: 0.0),),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Text("Browse By Service Category",style: TextStyle(color: textColor,fontWeight: FontWeight.bold,fontSize: 17),),
                  const SizedBox(height: 20,),
                ],
              ),
            ),

            SizedBox(
                height:250.0,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Column(
                      children: [
                        Image.asset("img/Group -2.png",height: 200,width: double.infinity,fit: BoxFit.fill,),
                        SizedBox(height: 50,)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("img/Group -3.png",height: 200,width: double.infinity,fit: BoxFit.fill,),
                        SizedBox(height: 50,)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("img/Group 16.png",height: 200,width: double.infinity,fit: BoxFit.fill,),
                        SizedBox(height: 50,)
                      ],
                    ),
                  ],
                  dotSize: 9.0,
                  dotSpacing: 25.0,
                  dotColor: Colors.grey[300],
                  dotIncreasedColor: mainColor,
                  indicatorBgPadding: 0.0,
                  dotBgColor: Colors.white.withOpacity(0.0),
                )
            ),
            const SizedBox(height: 40,),
            Image.asset("img/happy-millennial-girl-checking-social-media-holding-smartphone-home.png",width: double.infinity,fit: BoxFit.fill,),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("Need a plumber, electrician or accountant? We can find any of those for you. And the best part is that it's free so come join us!",style: TextStyle(color: textColor,fontWeight: FontWeight.bold,fontSize: 17),textAlign: TextAlign.center,),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text("Need a plumber, electrician or accountant? We can find any of those for you. And the best part is that it's free so come join us!",style: TextStyle(color: textColor,fontWeight: FontWeight.w400,fontSize: 14),textAlign: TextAlign.center,),
            ),
            const SizedBox(height: 40,),
            Image.asset("img/production-manager-designer-asian-factory.png",width: double.infinity,fit: BoxFit.fill,),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("We’ll make your services worth your time, and effort.",style: TextStyle(color: textColor,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.center,),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text("Joining us as a professional service provider is simple and easy. Create your work profile, upload your resume and credentials to get started! You simply just need an account with us today so that you can start receivingassignments in no time at all",style: TextStyle(color: textColor,fontWeight: FontWeight.w400,fontSize: 12),textAlign: TextAlign.center,),
            ),
            const SizedBox(height: 40,),
            CustomButton(borderColor: mainColor, buttonColor: mainColor, textColor: Colors.white, text: "Join Us", height: 47.0, width: 180),
            const SizedBox(height: 40,),
            Container(
              height: 300,
              width: double.infinity,
              color: mainColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Explore the best provider near you",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),textAlign: TextAlign.center,),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text("Your job will be sent to our qualified service professionals. You'll get matched through SMART AI bidding process and they'll send you a quote that matches what you need!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),textAlign: TextAlign.center,),
                  ),
                  const SizedBox(height: 30,),
                  CustomButton(borderColor: Colors.white, buttonColor: mainColor, textColor: Colors.white, text: "Explore Now", height: 47.0, width: 180)
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        child: Row(
          children: [
            Expanded(child: Icon(Icons.home,color: textColor,)),
            Expanded(child: Icon(Icons.search,color: textColor,)),
            Expanded(child: Container(
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [mainColor,mainColor,Colors.blue],
                ),
                borderRadius: BorderRadius.circular(35),
              ),
              alignment: Alignment.center,
              child: Icon(Icons.add,color: Colors.white,),
            )),
            Expanded(child: Icon(Icons.chat,color: textColor,)),
            Expanded(child: Icon(Icons.person,color: textColor,)),
          ],
        ),
      ),
    );
  }
}
