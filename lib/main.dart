import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    home: stack(),
  ));
}
class stack extends StatelessWidget {
  const stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey,
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60))
              ),
            ),
          ),
          Container(
            height: 270,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.menu_outlined,size: 40,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.more_horiz,size: 40,color: Colors.white,),
                      ),

                      ],
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Welcome back",style: TextStyle(color: Colors.white,fontSize: 40,)
                        ,
                      ),)
                )
              ],
            ),
          ),
          Positioned(
            top: 200,left: 16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset('assests/images/photo.jpg',scale: 3.8,),
            ),
          )
        ],
      ),
    );
  }
}

