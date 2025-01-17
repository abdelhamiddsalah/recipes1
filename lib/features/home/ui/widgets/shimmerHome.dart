import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmerhome extends StatelessWidget {
  const Shimmerhome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
       shrinkWrap: true,
     physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 10),
       itemCount: 4,
       itemBuilder: (BuildContext context, int index) {
         return   Padding(
           padding: const EdgeInsets.symmetric(vertical: 20.0),
           child: Material(
             color: Colors.white,
             borderRadius: BorderRadius.circular(20),
             elevation: 10.0,
             child: Shimmer.fromColors(
               baseColor:  Colors.grey,
               highlightColor:  Colors.white,
               child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
              ClipRRect(
           borderRadius: BorderRadius.circular(16),
           child: Container(
          
             height: MediaQuery.of(context).size.height * .2,
             width:double.infinity,
            color: Colors.grey,
           ),),
       const   SizedBox( height: 10,) ,
           Container(
             color: Colors.grey,
             height:10 ,
           width:  MediaQuery.of(context).size.width * .7,
           ),
        const    SizedBox( height: 10,) ,
             Container(
             color: Colors.grey,
             height:10 ,
           width:  MediaQuery.of(context).size.width * .4,
           ),
         const  SizedBox( height: 30,) ,
           ],
         ),
             ),
           ),
         );
             
     
    },
     );
  }
}
