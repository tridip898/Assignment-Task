import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF8F9FA),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
          child: Column(
            children: [
              //appbar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300.withOpacity(0.7),
                          blurRadius: 10
                        )
                      ]
                    ),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.menu,size: 32,)),
                  ),
                  Column(
                    children: [
                      Text("Store Location",style: TextStyle(fontSize: 12.sp,color: Color(0xff707B81)),),
                      Row(
                        children: [
                          Icon(Icons.location_on_rounded,color: Colors.red,size: 28,),
                          Text("Mondolibug, Sylhet",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,fontFamily: 'Airbnb Cereal App', color: Color(0xff1A2530)),)
                        ],
                      )
                    ],
                  ),
                  Badge(
                    position: BadgePosition.custom(end: 5,top: 3),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300.withOpacity(0.7),
                                blurRadius: 10
                            )
                          ]
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined,size: 32,)),
                    ),
                  ),
                ],
              ),
              //search option
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.h),
                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.6.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      blurRadius: 5
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Color(0xff707B81),size: 30,),
                    border: InputBorder.none,
                    hintText: "Looking for shoes",
                    hintStyle: TextStyle(fontSize: 14.sp,color: Color(0xff707B81))
                  ),
                ),
              ),
              //category
              Container(
                height: 6.h,
                width: 12.w,
                child: Image.asset("lib/icons/puma.png",height: 20,),
              ),
              //popular product
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Shoes",style: TextStyle(color: Color(0xff1A2530),fontSize: 16.sp,fontWeight: FontWeight.w500,fontFamily: 'Airbnb Cereal App'),),
                  Text("See all",style: TextStyle(color: Color(0xff5B9EE1),fontSize: 13.sp,fontFamily: 'Airbnb Cereal App'),),
                ],
              ),
              Container(
                height: 26.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (_,index){
                  return Container(
                    width: 43.w,
                    margin: EdgeInsets.only(right: 5.w,top: 2.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade100,
                          blurRadius: 10
                        )
                      ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.5.h,),
                        Container(
                          height: 12.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("lib/images/nike_jordan.png"),fit: BoxFit.cover)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 3.w,bottom: 1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("BEST SELLER",style: TextStyle(fontSize: 12.sp,color: Color(0xff5B9EE1)),),
                              Text("Nike Jordan",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500, color: Color(0xff1A2530)),),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 3.w),
                              child: Text("\$493.00",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Color(0xff1A2530)),),
                            ),
                            Container(
                              height: 4.h,
                              width: 8.5.w,
                              decoration: BoxDecoration(
                                color: Color(0xff5B9EE1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)
                                )
                              ),
                              child: Icon(Icons.add,color: Colors.white,size: 28,),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
              ),
              SizedBox(height: 2.h,),
              //new arrivals
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Arrivals",style: TextStyle(color: Color(0xff1A2530),fontSize: 16.sp,fontWeight: FontWeight.w500,fontFamily: 'Airbnb Cereal App'),),
                  Text("See all",style: TextStyle(color: Color(0xff5B9EE1),fontSize: 13.sp,fontFamily: 'Airbnb Cereal App'),),
                ],
              ),
              Container(
                height: 16.h,
                width: double.infinity,
                margin: EdgeInsets.only(top: 2.h),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      blurRadius: 5
                    )
                  ]
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("BEST CHOICE",style: TextStyle(color: Color(0xff5B9EE1),fontSize: 12.sp,fontWeight: FontWeight.w500),),
                        SizedBox(height: 0.5.h,),
                        Text("Nike Air jordan",style: TextStyle(color: Color(0xff1A2530),fontSize: 20.sp,fontWeight: FontWeight.w500),),
                        SizedBox(height: 1.4.h,),
                        Text("\$849.69",style: TextStyle(color: Color(0xff1A2530),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Container(
                      height: 13.h,
                      width: 37.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("lib/images/nike_air_jordan.png"),fit: BoxFit.cover)
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
