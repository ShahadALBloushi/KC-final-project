import 'package:finalproject4/model/place_model.dart';
import 'package:finalproject4/screens/detailscreen/detail_screen.dart';
import 'package:finalproject4/widgets/recommended_card.dart';
import 'package:flutter/material.dart';

import 'widgets/category_card.dart';

class page2 extends StatefulWidget {
  page2({Key? key}) : super(key: key);


@override 
State<page2> createState() => _page2();
}

class _page2 extends State<page2> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
 backgroundColor: Colors.white,
 bottomNavigationBar: Padding(
   padding: const EdgeInsets.symmetric(horizontal: 19),
   child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwwMUBGt7SUyFB55G-WUDx4Cd7XQ7WjBdjEIRVYZlYwq9GZSn61y72DhqzWztevkxYrc0&usqp=CAU", 
    height: 50,
    width: 50,
    ),
  Image.network("https://thumbs.dreamstime.com/b/calendar-icon-vector-calender-symbol-185129695.jpg",
height: 50,
    width: 50,
  ),
  Image.network("https://static.vecteezy.com/system/resources/previews/026/306/230/original/bookmark-icon-book-mark-banner-note-tag-ribbon-shape-cutout-guidebook-app-read-sign-symbol-black-artwork-graphic-illustration-clipart-eps-vector.jpg",
height: 50,
    width: 50,
  ),
  Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAT4AAACfCAMAAABX0UX9AAAAh1BMVEUAAADt7e3+/v7////s7Oz9/f319fX39/f6+vry8vLv7+/k5OTDw8Pf39+pqamfn58hISGTk5O0tLSCgoK9vb3Q0NBtbW0zMzN3d3ewsLDT09MPDw+NjY1TU1NbW1tJSUmWlpYtLS1lZWUjIyM8PDxCQkKEhIQYGBhXV1d6enpNTU1xcXFoaGj8nLDvAAAJF0lEQVR4nO1daVvqOhBumm6TLiCLAoICoh71/P/fd9sm5bK0WEKWaQ/vt3lExnltM0smE4e6BWhIOPxSppEQIy76QgzFp4UYCJFxEYQIXGRCDMSne6iJOS5H6JWy53MxEmLERV+IIRepEFuqEp+m/dNEBH20pSp6s1G90nSn707fnb6OaiIO5Qg9Dp+LkRAjLvpCDMWnhRgIkXERhAhcZEIMxKd7qIk4oUDAoVBU+V1YNTkE9b8XuyaHoF5ckGty7/Td6bvT101NeOkjHaEPpz+MoAwMqp+6AIwx4rnYPK/PETIOIUZCjIQsxJBLrhAD8VPgItSLgfi0+5sm/vfF00m2Hj++vO52T09Pu93ufbX9+chG0ziIaAglj+DepkmZTU7tM0v3zyxt9XaUsrd/O7z2b4fQxIpnIU4GP99DpxlPL1+DJM0ZDOQ1KbUJQ86b/08hnaxfLvB2hOHjYFq+PPb9jXX68lXNS5avbanbU7jN0mIZ+6fpKwgY/X2+ljuBzXLK8jXoX6Uvd3rJVpI6gedZ4gGzWrA6NaoUj5dZKrPMeheNYkDT8edt5IlnMPclv/2jdNlEnIijiAgKnIihkFuJgRCD4+8Kar46ZNnV610j/kx82qhJr012wmY2eFNGXoHNIAbybxSsQho8KOWuxOeDB6T/OS8DTwN5JR5iv+/0ARmo8Bf1GM5d2mf6WJA8aSOvwPsiz0V6Sh+B9MYwrwVmpHAdBukz5qVgLptfXIPniVHPqz9G4t8VevofPY5tTA3ZlMd9hiJ0mOhzGWdIihXQTNbhynmB6xYXBktz5OVYlh6kJyUDwoy9uBVei7+lJ/TBQm+4Uofhgvbk6YumJjzuGRIrBSth8tEy205V/b4ApYkN8nJkontZvU0H9LXaaavE8HiTqs2uFJ1YYi93IIEmmw522jSHzTCyxp7jrLtesLLKXhHAaLDp4I3XnPOCrXWvwpp2mD5YWGbPcUa0s/SxVG1JXgp5AtdR+uDbNncF4o4WrOjYNnMlNr5Oz6uhC53Lkb2A7xiPkTKbzjvrpUj3fn9kWWolVavDSJVNNec6XIlXvk1+GLTumNKPmKqxyVzJAOa2OTvAqiyfdog+Fl9qczSOUcfoC75sM3aE5+JP6w59zH66cYyxLvpOPK+a1nX4a5uvU8SaPK+WsDm1zdYZtqAkbHZPONeStNEf22ydY8G6kvP6sW2uavADXaGPmt3UbYk06AZ9JESTrh3iIewGfcxugb4Jb3roU+15CZhuKWiJRIHnPStYSdVpLomhZ5unBox99bU5DQUrLHW+U7x5RNomcwUrOrPNUxOmTNYmczkv9Te2aWrCGjpAH76ErcKqC/RhXfocZxgz/PShTDk4purpU+55/9gmqRlzptzzSvVlnXS1HbZ8hQZbwK/FmsrZ1Dg/wq9P2uSnOjCsQXOBLyplU/nG09o3XnXOi65Mf4hvKmVT84KpvGTAbLekXcIbevos90P+gjt9N0E/feXPr5rqcHTqCVV3wRnKw0ZX20T2ruPsJJcjdRKuWQxxP31SNl04OKg8bMbsOpxiXgTqghV2+pDnvHRqm6JLCNDTh3GPt8IGP33UNkcXsEJPn0vNHz5tjS/19CkvWKHd6iiq9coLVieB3q1xH4QD2yQ1I3GVx33k5Jm9MesgDLHrjamcTReyjlP62rzyl/JD5iE4iVWPTYS+ZJD/KsLmPo4tlbXJIH0M7VZb1gn6PJT9aTlSU/Rd6zq4KFQBjqOAZ3gS4+lkbGrc65Daabs41RzBIehafFB5mxp32pSHzfkvv9tmqhZTdoNNBo8E4iyZPolbKHHnvOXigjHvzehNNhmkDzLbXNWA+V2hjzB8j9+Y3miTQfoQblfGeujT4HnzwArHEI0DzDQdCazvHL+17TzCFvuloZa7F7UNIsHVJTkLSKdGgFEfU93qOWUdmyKEascyAyU2mRzChGSIUIFXUGSTSfr8nW3aKixY9+hzKRbvOwBlNmk5UdkwPwJwbLr9BXU2nc0ykPotryXnH7apyzGsiFFk0yHneuc2U39lm7yizNfZsdcUrJ/ymEOHp4ZbPyA4CDo9dN1y9DwONNhkkD67JyxnwDTTd+J5NVz0bK/0PGNMk017z6uhinNS9IpshX9f1XAK9TbtZ5eauOrJDn/LSKdNHEYuGrPC3wC02sRlM/RR82eNRgHpC33m/e8mhV7dEmg2/nsshj70ib48/zCXv2XAjNhk9JJFU+WXVXnVsRmb2t1VdNKX5cp0tYWGqi9rBjK9ZlI2MTU3ZZXy5fkRhmZEvCwCJtfpKGGTqUsWix+aiP02ozLJlVnGkJYMhCpmomlt4IG0F8BNX7DWTt4yiERndu/oA91h3/MS6E0xiKJLFnmQpvguW90XKHxmwGOQevq02MTpkzoJd9X8iACCWOuO+csoon77w35qbOIwEjYTjextHuJ9qfOWyifWghVx06Y3d7O+9Uae8TQ3U8kyhjTnZUFjsf7HgwAWo/GrHHW7j6TY1FfkBXDSB3HT1R3DMsQlxRsGi+xrd9VJuM1jlhJgCp0oRvpYOGl6cT/ifeMOX3Pi6Xy5bdNTuVomKYM8CVUag+Cjj0D62EDBS1p99V5Tno/nYHGSjbfvdaQPdy9fWVKu+NW9zwjo0+alKGQNJb7Vok4TOdAUxNNJNnhYfiwf1oNBNpokizT2oPo7NOw5SnpebTFStGioUG2TMPhdU1FDKqzh24JFken3aOymqQ5XxX3Vd+nKOsCrr46+LdPcY3hacwGTWYcr8cr/figLJrWj17eTkEZEpSZlyxiikkF9tLKdM7643Om7qCocncVwm595zEPcO32/XDhxeiLh7SebenlIYswomwUrLl65L8BFPgLM+z8H+/yeDaYQlSGu5KyFC5r2C7qaCdYymki7nbZKrCYgNO9KufC+2b2+PH4M5lPGo6OrZi2013Rh/8ucJuVhM4Hqd4vZAXaCWYNhM0G9uCDXZK5J405fV4y609cRTXf60Bas7PlDg55XQ2e9hi59rJoMnOvoyIMko8lchxX2ZQxLycC+UXf6OqLpTp8S+lwFqrxWRvVK0//1Pi6SaltFiNW2ihArVUJs+Z8Sn+6hJvYfTdD4nvTLXDEAAAAASUVORK5CYII=",
height: 50,
    width: 50,
  ),
    ],
   ),
 ),
 body: SafeArea(
  child: Padding(
    padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 15),
    child: Column(children: [
      //app bar
    Row(
      children: [
      CircleAvatar(
        radius: 27,
        backgroundImage: NetworkImage("data:image/png;base64,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"),
      ),
      SizedBox(
        width: 15,
      ),
      RichText(
        text:  TextSpan(
          text: "Hello",
        style: TextStyle(
          color: Colors.black,
           fontSize: 18,
          ),
        children: [
          TextSpan(
            text: " Shahad ALBloushi",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
  
            ))
        ]))
  
      ],
     ),

    //search section
   SizedBox(
        height:2,
   ),
    Text(
      "Explore new destinations",
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        ),
         ),
         SizedBox(
        height:20,
   ),
   Material(
    borderRadius: BorderRadius.circular(100),
    elevation: 5,
     child: Container(
      decoration: BoxDecoration(
        color: Colors.white,borderRadius: BorderRadius.circular(100)),
       child: Padding(
         padding: 
          EdgeInsets.symmetric(vertical: 5,horizontal: 10),
         child: Row(
           children: [
             Expanded(
               child: TextFormField(
                decoration: InputDecoration(
                   hintText: "Search your destination",
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                         ),
                        ),
             ),
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white ,
            child: Icon(Icons.sort_by_alpha_sharp,
            color: Colors.white,),
          )
           ],
         ),
       ),
     ),
   ),
   //Category
SizedBox(
        height: 27,
   ),
    Row(
      children: [
        Text(
          "Category",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            ),
             ),
      ],
    ),
         SizedBox(
        height:15,
   ),
   Container(
    height: 65,
     child: ListView(
      scrollDirection: Axis.horizontal,
       children: [
         Row(
           children: [
             CategoryCard(
              press: (){},
              image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8h87Vzr-6aLBQ3a3uoEpPkIeb6ZWlgWOdJw&usqp=CAU",
              title: "Kuwait Tower's",
             ),
               CategoryCard(
              press: (){},
              image: "https://image-tc.galaxy.tf/wijpeg-afr14u0rx364cbg1tk3jenfep/scientific-center-1725x300_standard.jpg?crop=431%2C0%2C1059%2C794",
              title: "Scientific Center",
             ),
              CategoryCard(
              press: (){},
              image: "https://blog.sakan.co/kw/wp-content/uploads/2022/10/IMG_%D9%A2%D9%A0%D9%A2%D9%A2%D9%A1%D9%A0%D9%A2%D9%A9_%D9%A0%D9%A5%D9%A1%D9%A8%D9%A0%D9%A6.jpg",
              title: "Green Island",
             ),
             CategoryCard(
              press: (){},
              image: "https://www.almullaengineering.com/wp-content/uploads/2017/01/SAASCC-6-670x477.jpg",
              title: " Abdullah Al Salem Cultural Centre",
             ),
               CategoryCard(
              press: (){},
              image: "https://lh5.googleusercontent.com/p/AF1QipM8uh_SGUhKaLsS8v_CXF19zxhz2DXhw_XDWMAI=w296-h202-n-k-no-v1",
              title: " Kuwait's Opera House",
             ),
               CategoryCard(
              press: (){},
              image: "https://media-cdn.tripadvisor.com/media/photo-s/29/08/44/d9/exterior.jpg",
              title: "Jumeirah Hotel",
             ),
              CategoryCard(
              press: (){},
              image: "https://assets.hiltonstatic.com/hilton-asset-cache/image/upload/c_fill,w_300,h_300,q_90,f_auto/Imagery/Property%20Photography/Hilton%20International/K/KWIHIHI/KWIHIHI_Outdoor_Pool.jpg",
              title: "Hilton Hotel",
             ),
              CategoryCard(
              press: (){},
              image: "https://image-tc.galaxy.tf/wijpeg-6hoistz2l0zzvfy6xgg01taj4/trk-046-230822.jpg?width=1920",
              title: "Regency Hotel",
             ),
             CategoryCard(
              press: (){},
              image: "https://media-cdn.tripadvisor.com/media/photo-s/19/69/70/6a/building.jpg",
              title: "Symphony Hotel",
             ),
               CategoryCard(
              press: (){},
              image: "https://cf.bstatic.com/xdata/images/hotel/max1024x768/301936686.jpg?k=c4cc996e9dc570ee60e1bb8d5064c65ed1629ff35a589f726f688de6dc721331&o=&hp=1",
              title: "Four Seasons Hotel",
             ),
           ],
         ),
       ],
     ),
   ),
    //Recommended
SizedBox(
        height: 15,
   ),
    Row(
      children: [
        Text(
          "Recommended",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            ),
             ),
              ],
               ),
         SizedBox(
        height:10,
         ), 

         Container(
          height:309 ,
          child: ListView.builder(
            itemCount: places.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.only(left: 5,right: 15),
            child: Row(
              children: [
                RecommendedCard(placeInfo: places[index], 
                press: () { 
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailScreen(
                    placeInfo: places[index],
                  )));
                 }
                ,)
              ],
            ),
          );
          })
          )
       ]),
     )),
    );
  }
}




    
  
