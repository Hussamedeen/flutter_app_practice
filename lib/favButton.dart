import 'package:flutter/material.dart';

class FavButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavButton();
  }
}

class _FavButton extends State <FavButton> with AutomaticKeepAliveClientMixin{
  IconData favIco;
  bool pressed= false;

  void initState(){
    super.initState();
    this.favIco= Icons.favorite_border;
  }
  void OnPresedFav() {
    setState(() {
      if (this.favIco==Icons.favorite_border){
        this.favIco= Icons.favorite;
      } else {
        this.favIco= Icons.favorite_border;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton (
      backgroundColor: Color(0xFF16DB58),
      mini: true,
      tooltip: "Fav",
      child: Icon(

        favIco,
        color: Colors.white,
      ),
      onPressed: OnPresedFav ,

    )
    ;
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;


}