import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/slider_model.dart';

class Sliders{
  List<SliderModel> sliders = [];


  Future<void> getSliders()async{
    String url="https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7180de81b0fe4eebb4e1dbbdb2c03e03";
    var response= await http.get(Uri.parse(url));

    var jsonData= jsonDecode(response.body);

    if(jsonData['status']=='ok'){
      jsonData["articles"].forEach((element){
        if(element["urlToImage"]!=null && element['description']!=null){
          SliderModel slidermodel=SliderModel(
            title: element["title"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
            author: element["author"],
          );
          sliders.add(slidermodel);
        }
      });
    }
  
  }
}