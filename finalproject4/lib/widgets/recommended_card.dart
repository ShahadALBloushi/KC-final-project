import 'package:finalproject4/model/place_model.dart';
import 'package:flutter/material.dart';
class RecommendedCard extends StatelessWidget {
  final PlaceInfo placeInfo;
  final VoidCallback press;
   RecommendedCard({
    super.key, required this.placeInfo, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 250,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(placeInfo.image))),
                  ),
                  
                 SizedBox(
                  height: 8.0,
                 ),
                 Text(
                  placeInfo.name,
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                  height: 8.0,
                 ),
                 Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.orangeAccent,
                      ),
                      Text(placeInfo.location,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      ),
                  ],
                 )
                ],
              ),
            ),
        ),
      ),
    );
  }
}
