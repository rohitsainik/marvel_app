import 'package:pageapp/models/trailers.dart';

class Repodata {
  static final Trailers data = new Trailers(
    about: "welcome to the world of marvel \n Explore the awesomeness of marvel cinemetic universe and watch out all the trailers here:",
    name: "Marvel Trailers",
    logo: "images/logo.png",
    backdropimage: "images/backdrop.jpg",
    trailer: <trail>[
      new trail(title: "infinity war",
          thumbnail: "images/avengersinfin.jpg",
          url: "https://www.youtube.com/watch?v=6ZfuNTqbHE8"),

      new trail(
        title: "avenger assemble" ,
        thumbnail:"images/avengerass.jpg",
        url:"https://www.youtube.com/watch?v=NPoHPNeU9fc"
      ),

      new trail(
          title: "civil war",
          thumbnail:"images/civilwar.jpg",
          url:"https://www.youtube.com/watch?v=FkTybqcX-Yo"
      ),

      new trail(
          title: "civil marvel",
          thumbnail:"images/captmarvel.jpg",
          url:"https://www.youtube.com/watch?v=0LHxvxdRnYc"
      ),


      new trail(
        title:"spiderman far from home" ,
        thumbnail:"images/spideran.jpg",
        url: "https://www.youtube.com/watch?v=VJfBMtAmvbw",
      )
    ],
  );
}
