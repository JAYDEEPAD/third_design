import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:third_design/detail_screen.dart';



/*void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
          home: FinananceScreen()),
    ),
  );
}*/



class FinananceScreen extends StatefulWidget {
  const FinananceScreen({super.key});

  @override
  State<FinananceScreen> createState() => _FinananceScreenState();
}

class _FinananceScreenState extends State<FinananceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.save_as,size: 30,)),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kamus Investasi",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17),),
                    Text("Yuk, cari tau beribagai istilah investatasi!", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),)
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,),))
            ],
          ),
        )
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.65),
        child: Stack(
          children: [
            AppBar(
              //backgroundColor: Colors.indigo,
              leading: IconButton(onPressed: (){
                Navigator.push(context, (MaterialPageRoute(builder: (context)=>Detail_screen())));
              }, icon: Icon(Icons.arrow_back_ios)),
              flexibleSpace: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 120,left: 100),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Text("OVO", style: TextStyle(color: Colors.black,fontSize: 25),),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          Text("Invest",style:TextStyle(color :Colors.black,fontSize:25,fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 15,bottom: 10),
                    child: Row(
                      children: [
                        Text("Portfolio Kamu", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.circle,size: 30,)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("Reksa Dana", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                    Text("Rp11.867.000",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.30,),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),)),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text("Total Keuntungan",style: TextStyle(color: Colors.grey,fontSize: 12,),),
                                  Text("+Rp736.837", style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.w600),)
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Imbal Hasil",style: TextStyle(color: Colors.grey,fontSize: 12,),),
                                  Text("+4,34%", style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(
                                  color: Colors.cyan,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(child: Text("Jual", style: TextStyle(color: Colors.deepPurple,fontSize: 20),)),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(child: Text("Beli", style: TextStyle(color: Colors.white,fontSize: 20),)),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Powered by ",style: TextStyle(color: Colors.grey,fontSize: 15),),
                              Icon(Icons.ac_unit,),
                              Text("bareska",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w600),)

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                           Column(
                             children: [
                               Icon(Icons.circle,size: 30,),
                             ],
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Riwayat Transaki",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700),),
                               Expanded(child: Text("Lihat semua transki jual dan beli",style: TextStyle(color: Colors.grey,fontSize: 12),))
                             ],
                           ),
                           SizedBox(
                             width: 80,
                           ),
                           Align(
                               alignment: Alignment.topRight,
                               child: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 5,top:5 ),
                  child: Row(
                    children: [
                      Text("Produk",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.circle,size: 60,)),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Manulife OVO Bareksa Likuid",style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w600),),
                                  Text("Reksa Dana - Pasar Uang", style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight:FontWeight.w600),)
                                ],
                              ),
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)))
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text("Keuntugan 1 Tahun",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                Text("+6,02%",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w600),),
                              ],
                            ),
                            Column(
                              children: [
                                Text("NAB/Unit", style: TextStyle(color: Colors.grey,fontSize: 15),),
                                SizedBox(width: 5,),
                                Text("\tRp1.370,07",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

