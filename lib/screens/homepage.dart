import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String isSelected = "Living room";
  String gate = "Gate 2";
  bool gate2 = false;
  bool gate1 = false;
  bool studiolight = false;
  bool doorlight = false;
  bool coffee = false;
  bool ac = false;
  bool LRtv = false;
  bool Chandelier = false;
  bool stduiolight2 = false;
  bool ac2 = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Stack(
          alignment: Alignment.topRight,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: const Text(
                "tempest",
                style: TextStyle(
                  color: Colors.white,
                  fontSize:21,
                  fontStyle: FontStyle.italic
                ),
              ),
            ),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.amber
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              width: 23,
              margin: const EdgeInsets.symmetric(vertical: 17, horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white38),
                  borderRadius: BorderRadius.circular(5.0)),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Hello",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 18.0)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: Text("Moritz",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Image(
                                image: const AssetImage(
                                  "assets/images/sun.png",
                                ),
                                width: size.width * 0.08,
                                color: Colors.amber),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: Text("16°C - NewYork",
                                style: TextStyle(
                                  color: Colors.white54,
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = "Living room";
                          });
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.center,
                            width: size.width * 0.25,
                            height: size.height * 0.035,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: isSelected == "Living room"
                                        ? Colors.amber
                                        : Colors.white54),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Text(
                              "Living room",
                              style: TextStyle(
                                  color: isSelected == "Living room"
                                      ? Colors.white
                                      : Colors.white54),
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = "Kitchen";
                          });
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.center,
                            width: size.width * 0.25,
                            height: size.height * 0.035,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: isSelected == "Kitchen"
                                        ? Colors.amber
                                        : Colors.white54),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Text(
                              "Kitchen",
                              style: TextStyle(
                                  color: isSelected == "Kitchen"
                                      ? Colors.white
                                      : Colors.white54),
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = "Bedroom";
                          });
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.center,
                            width: size.width * 0.25,
                            height: size.height * 0.035,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: isSelected == "Bedroom"
                                        ? Colors.amber
                                        : Colors.white54),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Text(
                              "Bedroom",
                              style: TextStyle(
                                  color: isSelected == "Bedroom"
                                      ? Colors.white
                                      : Colors.white54),
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = "Bathroom";
                          });
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.center,
                            width: size.width * 0.25,
                            height: size.height * 0.035,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: isSelected == "Bathroom"
                                        ? Colors.amber
                                        : Colors.white54),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Text(
                              "Bathroom",
                              style: TextStyle(
                                  color: isSelected == "Bathroom"
                                      ? Colors.white
                                      : Colors.white54),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 1.36,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5,top: 5),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              if(gate2){
                                gate2 = false;
                              }
                              else{
                                gate2 = true;
                              }
                            });
                          },
                          child: gate_card(
                            context,
                            title: "Gate 2",
                            icon: Icons.lock_open_rounded,
                            subtitile: "Unlocked",
                            selected: gate2
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,top: 5),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              if(gate1){
                                gate1 = false;
                              }
                              else{
                                gate1 = true;
                              }
                            });
                          },
                          child: gate_card(
                            context,
                            title: "Gate 1",
                            icon: Icons.lock_open_rounded,
                            subtitile: "Unlocked",
                            selected: gate1
                          ),
                        ),
                      )
                    ],
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 1.36,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            if(studiolight){
                              studiolight = false;
                            }
                            else{
                            studiolight = true;
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5,top: 5),
                          child: custom_Light(
                            icon: Icons.light_outlined,
                            isLight: true,
                            lightColor: Colors.purple,
                            subtitle: "Philips Hue",
                            title: "Studio Light",
                            isTimer: false,
                            time: "",
                            isimage: false,
                            isTemp: false,
                            selected: studiolight
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                             setState(() {
                            if(doorlight){
                              doorlight = false;
                            }
                            else{
                            doorlight = true;
                            }
                          });

                           
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5,top: 5),
                          child: custom_Light(
                            icon: Icons.light_outlined,
                            title: "Door Light",
                            subtitle: "Amazon 1",
                            isLight: false,
                            leadingicon: Icons.watch_later_outlined,
                            isTimer: false,
                            time: "",
                            isimage: false,
                            isTemp: false,
                            selected: doorlight
                            
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                             setState(() {
                            if(coffee){
                              coffee = false;
                            }
                            else{
                            coffee = true;
                            }
                          });
                           
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5,top: 5),
                          child: custom_Light(
                            icon: Icons.coffee_maker_outlined,
                            title: "Coffee Machine",
                            subtitle: "Philips Smart Brew",
                            isLight: false,
                            leadingicon: Icons.watch_later_outlined,
                            isTimer: true,
                            time: "05:25 - Latte",
                            isimage: false,
                            isTemp: false,
                            selected: coffee
                          
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            setState(() {
                            if(ac){
                              ac = false;
                            }
                            else{
                            ac = true;
                            }
                          });
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5,top: 5),
                          child: custom_Light(
                            isimage: true,
                            imgUrl: "assets/images/air-conditioner.png",
                            isLight: false,
                            leadingicon: Icons.arrow_forward_ios_rounded,
                            title: "A.C",
                            subtitle: "LG Smart",
                            isTimer: false,
                            time: "",
                            isTemp: true,
                            selected: ac
                          
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                             setState(() {
                            if(LRtv){
                              LRtv = false;
                            }
                            else{
                            LRtv = true;
                            }
                          });
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5,top: 5),
                          child: custom_Light(
                            isimage: false,
                            icon: Icons.tv_sharp,
                            title: "LR TV",
                            subtitle: "Samsung QLED",
                            isTemp: false,
                            isLight: true,
                            lightColor: Colors.transparent,
                            isTimer: false,
                            time: "",
                            selected: LRtv
                          
                          ),
                        ),
                      ),
                       GestureDetector(
                         onTap: (){
                          setState(() {
                             setState(() {
                            if(Chandelier){
                              Chandelier = false;
                            }
                            else{
                            Chandelier = true;
                            }
                          });
                          
                          });
                        },
                         child: Padding(
                           padding: const EdgeInsets.only(left: 5,top: 5),
                           child: custom_Light(
                            isimage: true,
                            imgUrl: "assets/images/chandelier.png",
                            isLight: false,
                            leadingicon: Icons.watch_later_outlined,
                            title: "Chandelier",
                            subtitle: "",
                            isTimer: false,
                            time: "",
                            isTemp: false,
                            selected: Chandelier
                                                 
                                                 ),
                         ),
                       ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                             setState(() {
                            if(stduiolight2){
                              stduiolight2 = false;
                            }
                            else{
                            stduiolight2 = true;
                            }
                          });
                          
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5,top: 5),
                          child: custom_Light(
                            icon: Icons.light_outlined,
                            isLight: true,
                            lightColor: Colors.purple,
                            subtitle: "Philips Hue",
                            title: "Studio Light",
                            isTimer: false,
                            time: "",
                            isimage: false,
                            isTemp: false,
                            selected: stduiolight2
                          
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                             setState(() {
                            if(ac2){
                              ac2 = false;
                            }
                            else{
                            ac2 = true;
                            }
                          });
                          });
                        },
                        child: Padding(
                         padding: const EdgeInsets.only(left: 5,top: 5),
                          child: custom_Light(
                            isimage: true,
                            imgUrl: "assets/images/air-conditioner.png",
                            isLight: false,
                            leadingicon: Icons.arrow_forward_ios_rounded,
                            title: "A.C - 2",
                            subtitle: "LG Smart",
                            isTimer: false,
                            time: "",
                            isTemp: true,
                            selected: ac2
                           
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20.0,)
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget gate_card(context, {title, subtitile, icon,selected}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.black,
        border: const Border(
            bottom: BorderSide(color: Colors.white10, width: 2.0),
            left: BorderSide(color: Colors.white10, width: 2.0),
            right: BorderSide(color: Colors.white10, width: 2.0),
            top: BorderSide(color: Colors.white10, width: 2.0)),
        borderRadius: BorderRadius.circular(10),
         gradient: LinearGradient(
          colors: selected?[ 
            const Color(0xff414141),
            const Color(0xff000000)
          ]:[Colors.black,Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          ),
        boxShadow: [
          selected?BoxShadow(
            color: Colors.amber.withOpacity(0.9),
            blurRadius: 1,
            spreadRadius: -5,
            offset: const Offset(-5.5, -5.5)
          ):const BoxShadow(
            color: Colors.transparent,
            blurRadius: 1,
            spreadRadius: -5,
            offset: Offset(-5, -6)
          )
        ],
        ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(subtitile,
              style:const TextStyle(color: Colors.white54, fontSize: 12.0)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: !selected?Colors.white54:Colors.transparent,
                      borderRadius: BorderRadius.circular(30)),
                  child:const Icon(
                    Icons.lock,
                    color: Colors.white,
                    size: 30,
                  )),
              Row(
                children: [
                  Text(selected?"<":">",
                      style: const TextStyle(
                        color: Colors.white,
                      )),
                  Text(selected?"<":">",
                      style: const TextStyle(
                        color: Colors.white54,
                      )),
                  Text(selected?"<":">",
                      style:const TextStyle(
                        color: Colors.white30,
                      )),
                ],
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: selected?Colors.white54:Colors.transparent,
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                     Icons.lock_open_rounded,
                    color:selected?Colors.amber: Colors.white,
                    size: 30,
                  )),
            ],
          ),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget custom_Light({selected,title,subtitle,icon,leadingicon,isLight,lightColor,isTimer,time,isimage,imgUrl,isTemp,temp}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.black,
        border: const Border(
            bottom: BorderSide(color: Colors.white10, width: 2.0),
            left: BorderSide(color: Colors.white10, width: 2.0),
            right: BorderSide(color: Colors.white10, width: 2.0),
            top: BorderSide(color: Colors.white10, width: 2.0)),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: selected?[ 
            const Color(0xff414141),
            const Color(0xff000000)
          ]:[Colors.black,Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          ),
        boxShadow: [
          selected?BoxShadow(
            color: Colors.amber.withOpacity(0.9),
            blurRadius: 1,
            spreadRadius: -5,
            offset: Offset(-5.5, -5.5)
          ):const BoxShadow(
            color: Colors.transparent,
            blurRadius: 1,
            spreadRadius: -5,
            offset: Offset(-5, -6)
          )
        ],
        ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 8.0),
              child:isimage?Image.asset(imgUrl,fit: BoxFit.cover,width: 28,color: Colors.white):Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8.0, right: 4.0),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: selected?Colors.amber: Colors.white54,
                      borderRadius: BorderRadius.circular(50)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 8.0),
                  child: Text(
                     selected?"ON":"OFF",
                    style: TextStyle(color:selected?Colors.amber: Colors.white54),
                  ),
                )
              ],
            )
          ],
        ),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
            Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 5.0),
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        isTemp?const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Text("23°",style: TextStyle(color: Colors.white,fontSize: 18),),
        ):const Text("")
         ],
       ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 5.0),
          child: Text(subtitle,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 10,
              )),
        ),
        Spacer(),
        isLight? Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: lightColor, borderRadius: BorderRadius.circular(50)),
          ),
        )
        :Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isTimer?Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(time,style: TextStyle(color: Colors.white),),
            ):Text(time),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                child: Icon(leadingicon,color: Colors.white54,),
              )),
          ],
        ),
      ],
    ),
  );
}
