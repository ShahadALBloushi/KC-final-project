import 'package:finalproject4/model/place_model.dart';

import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget {
  final PlaceInfo placeInfo;
   DetailScreen  ({Key? key, required this.placeInfo}) : super(key: key);

  @override
  State<DetailScreen > createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen > {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  body: Stack(
    children: [ Image.network(
      widget.placeInfo.image,
      width: double.infinity,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height*0.5,
         ),
      SafeArea(
        child: Column(
          children: [
            //appbar buttons
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(100),
                      child: Padding(
                        padding:  EdgeInsets.all(6.0),
                        child: Container(
                          height: 25,
                          width: 25,
                                      
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 16,
                              ),
                          ),
                        ),
                      ),
                    ),
                  ),
                   Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(100),
                    child: Padding(
                      padding:  EdgeInsets.all(6.0),
                      child: Container(
                        height: 25,
                        width: 25,
                                    
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            Icons.bookmark_rounded,
                            color: Colors.white,
                            size: 24,
                            ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Expanded(
              child: Container(
                       width: double.infinity,
                       decoration: BoxDecoration(
              color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                      child: Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 10,vertical:20 ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(
                widget.placeInfo.name,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  ),
                   ),
                    SizedBox(
                      height: 12,
                     ),
                     Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.orangeAccent,
                          ),
                          SizedBox(
                          width: 5,
                           ),
                          Text(
                            widget.placeInfo.location,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                          ),
                           
                      ],
                     ),
                      SizedBox(height: 15),
                    Text(
                "Location details",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  ),
                   ),
                   SizedBox(height: 10),
                    Text(
                   widget.placeInfo.desc,
                     style: TextStyle(
                      color: Colors.grey,
                       fontSize:18,
                      ),
                     ),
                    SizedBox(height: 10,),
                          Divider(
                            height: 5,
                            color: Colors.black,
                          ),
                          SizedBox(height: 4,),
                       Row(
                      children: [
                       Text(
                           "Duration",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                          ),
                          SizedBox(
                          width: 5,
                           ),
                          Expanded(
                            child: Text(
                            "${widget.placeInfo.days} days",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                           
                      ],
                     ),
                      SizedBox(height: 20,),
                       Row(
                      children: [
                       Text(
                           "Duration",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                          ),
                          SizedBox(
                          width: 5,
                           ),
                          Expanded(
                            child: Text(
                            "${widget.placeInfo.distance} kilometersا",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                        ],
                      ),
                     SizedBox(height: 20,), 
                    MaterialButton(
                      color: Colors.orangeAccent,
                      minWidth: double.infinity,
                      height: 55,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)
                      ),
                      onPressed: (){},
                    child: Text("Book Ticket",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                      ),
                      ),
                      SizedBox(height: 20,),
                  ],
                ),
              ),
                      ),
              ),
            )
          ],
        ),
      )
       ],
      ),
    );
  }
}