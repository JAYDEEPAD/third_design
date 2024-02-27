import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:third_design/home_screen.dart';


/*void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(home:  Detail_screen()),
    ),
  );
}*/


class Detail_screen extends StatefulWidget {
  const Detail_screen({super.key});

  @override
  State<Detail_screen> createState() => _Detail_screenState();
}

class _Detail_screenState extends State<Detail_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.10,
          width: MediaQuery.of(context).size.width * 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )
          ),
          child: Center(
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.80,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text("Mulai Sekarang",style: TextStyle(color: Colors.white),)),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detail Produck",style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w700),),
        leading: IconButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
        }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(child: Image.asset("assets/images/menu.png")),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Manulife OVO Bareksa Likuid",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15),),
                          Text("Reksa Dana - Parsar Uang", style:TextStyle(fontSize: 15),)
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
        
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                width: 300,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Keuntungan 1 Talhun",style: TextStyle(fontSize: 10 ),),
                        Row(
                          children: [
                            Text("+0.62%",style: TextStyle(color: Colors.green, fontSize: 12,fontWeight: FontWeight.w500),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.info))
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("NAB/Unit (29 Mei 2020)",style: TextStyle(fontSize: 10 ),),
                        Row(
                          children: [
                            Text("Rp1.359,58",style: TextStyle(color: Colors.green, fontSize: 12,fontWeight: FontWeight.w500),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.info))
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height:10),
              Image.asset("assets/images/sharemarket.png",
                width: MediaQuery.of(context).size.width * 0.75,
                fit: BoxFit.fitWidth,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height:50,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                            Text("bullan",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                          ],
                        ),
                      ),
                      SizedBox(width: 4,),
                      Container(
                        height:50,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("3",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                            Text("bullan",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                          ],
                        ),
                      ),
                      SizedBox(width: 4,),
                      Container(
                        height:50,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("6",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                            Text("bullan",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                          ],
                        ),
                      ),
                      SizedBox(width: 4,),
                      Container(
                        height:50,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                            Text("tahun",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                          ],
                        ),
                      ),
                      SizedBox(width: 4,),
                      Container(
                        height:50,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("6",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                            Text("bullan",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                          ],
                        ),
                      ),
                      SizedBox(width: 4,),
                      Container(
                        height:50,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("6",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                            Text("bullan",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                          ],
                        ),
                      ),
                      SizedBox(width: 4,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Detail Produck",style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_upward))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Manager investasi",style: TextStyle(color: Colors.black, fontSize: 12,),),
                  Text("Bank Kustodian",style: TextStyle(color: Colors.black,fontSize: 12,),)
                ],
              ),*/
            ],
          )
        ],
      ),
      
    );
  }
}
