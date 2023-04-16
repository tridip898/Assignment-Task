import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int _selectedIndex=0;
  List<int> size= [38,39,40,41,42,43];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF8F9FA),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300.withOpacity(0.7),
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back_ios,size: 25,)),
                    ),
                    Text("Men's Shoes",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,fontFamily: 'Airbnb Cereal App', color: Color(0xff1A2530)),),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300.withOpacity(0.7),
                                  blurRadius: 5
                              )
                            ]
                        ),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined,size: 32,)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 16.h,
                width: 55.w,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("lib/images/nike_air_jordan.png"),fit: BoxFit.fill)
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 5
                      )
                    ]
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BEST SELLER",style: TextStyle(fontSize: 14.sp,color: Color(0xff5B9EE1)),),
                      SizedBox(height: 0.3.h,),
                      Text("Nike Jordan",style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w500, color: Color(0xff1A2530)),),
                      SizedBox(height: 1.h,),
                      Text("\$967.900",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500, color: Color(0xff1A2530)),),
                      SizedBox(height: 1.h,),
                      Flexible(
                        child: SizedBox(
                          width: 77.w,
                          child: Text("Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike company",style: TextStyle(fontSize: 14.sp,color: Color(0xff707B81),overflow: TextOverflow.ellipsis),maxLines: 3),
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      Text("Gallery",style: TextStyle(color: Color(0xff1A2530),fontSize: 18.sp,fontWeight: FontWeight.w500,fontFamily: 'Airbnb Cereal App'),),
                      SizedBox(height: 1.h,),
                      Row(
                        children: [
                          Container(
                            height: 8.h,
                            width: 19.w,
                            margin: EdgeInsets.only(right: 2.w),
                            decoration: BoxDecoration(
                              color: Color(0xffF8F9FA),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage("lib/images/nike_air_max.png"),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 8.h,
                            width: 19.w,
                            margin: EdgeInsets.only(right: 2.w),
                            decoration: BoxDecoration(
                                color: Color(0xffF8F9FA),
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: AssetImage("lib/images/nike_air_jordan.png"),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 8.h,
                            width: 19.w,
                            margin: EdgeInsets.only(right: 2.w),
                            decoration: BoxDecoration(
                                color: Color(0xffF8F9FA),
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: AssetImage("lib/images/nike_jordan.png"),fit: BoxFit.fill)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Size",style: TextStyle(color: Color(0xff1A2530),fontSize: 18.sp,fontWeight: FontWeight.w500,fontFamily: 'Airbnb Cereal App'),),
                          Row(
                            children: [
                              Text("EU",style: TextStyle(color: Color(0xff1A2530),fontSize: 13.sp,fontWeight: FontWeight.w500),),
                              SizedBox(width: 2.w,),
                              Text("US",style: TextStyle(color: Color(0xff707B81),fontSize: 13.sp,fontWeight: FontWeight.w500),),
                              SizedBox(width: 2.w,),
                              Text("UK",style: TextStyle(color: Color(0xff707B81),fontSize: 13.sp,fontWeight: FontWeight.w500),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 1.h,),
                      Container(
                        height: 7.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (_,index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                _selectedIndex=index;
                              });
                            },
                            child: Container(
                              height: 7.h,
                              width: 14.w,
                              margin: EdgeInsets.only(right: 1.6.w),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: _selectedIndex == index ? Color(0xff5B9EE1) : Color(0xffF8F9FA),
                                shape: BoxShape.circle,
                              ),
                              child: Text(size[index].toString(),style: TextStyle(fontSize: 16.sp,color: _selectedIndex == index ? Color(0xffFFFFFF) : Color(0xff707B81)),),
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 12.h,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200.withOpacity(0.5),
                blurRadius: 10
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            )
          ),
          padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 2.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Price",style: TextStyle(fontSize: 16.sp,color: Color(0xff707B81)),),
                  SizedBox(height: 0.5.h,),
                  Text("\$849.69",style: TextStyle(fontSize: 20.sp,color: Color(0xff1A2530),fontWeight: FontWeight.w500),)
                ],
              ),
              ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff5B9EE1),
                    padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 1.5.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                  child: Text("Add To Cart",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}
