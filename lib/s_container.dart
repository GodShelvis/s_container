import 'package:flutter/material.dart';

class SContainer extends StatelessWidget {
  double width;
  double height;
  double space;
  double x_space;
  double y_space;
  Widget top = Container();
  double top_space;
  Alignment top_alignment;
  Widget bottom = Container();
  double bottom_space;
  Alignment bottom_alignment;
  Widget left = Container();
  double left_space;
  Alignment left_alignment;
  Widget right = Container();
  double right_space;
  Alignment right_alignment;
  Widget child;
  Alignment child_alignment;
  double child_x;
  double child_y;


  SContainer({
    this.child, this.child_alignment,
    this.width: 100, this.height: 100,
    this.space: 0, this.x_space, this.y_space,
    this.top, this.top_space, this.top_alignment,
    this.bottom, this.bottom_space, this.bottom_alignment,
    this.left, this.left_space, this.left_alignment,
    this.right, this.right_space, this.right_alignment,
  }){
    if(space<0) {
      space=0;
    }
    if (space*2>width){
      space = width/2;
    }
    if (space*2>height){
      space = height/2;
    }
    double t = space;
    double b = space;
    double l = space;
    double r = space;
    if(x_space!=null) {
      l = x_space;
      r = x_space;
    }
    if(y_space!=null) {
      t = y_space;
      b = y_space;
    }
    if(top_space!=null) {
      t = top_space;
    }
    if(bottom_space!=null) {
      b = bottom_space;
    }
    if(left_space!=null) {
      l = left_space;
    }
    if(right_space!=null) {
      r = right_space;
    }


    if(t > height){
      t = height;
    }
    if(t < 0) {
      t = 0;
    }

    if(b > height-t){
      b = height-t;
    }
    if(b < 0) {
      b = 0;
    }

    if(l > width){
      l = width;
    }
    if(l < 0) {
      l = 0;
    }

    if(r > width-l){
      r = width-l;
    }
    if(r < 0) {
      r = 0;
    }

    top_space = t;
    bottom_space = b;
    left_space = l;
    right_space = r;
    child_y = height-t-b;
    child_x = width-l-r;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: width,
      height: height,
      child: Column(
        children: <Widget>[
          //上
          Container(
            width: width,
            height: top_space,
            alignment: top_alignment,
            child: top,
          ),
          //中部
          Container(
            child: Row(
              children: <Widget>[
                //左
                Container(
                  width: left_space,
                  height: child_y,
                  alignment: left_alignment,
                  child: left,
                ),
                //中
                Container(
                  alignment: child_alignment,
                  width: child_x,
                  height: child_y,
                  child: child,
                ),
                //右
                Container(
                  width: right_space,
                  height: child_y,
                  alignment: right_alignment,
                  child: right,
                )
              ],
            ),
          ),
          //下
          Container(
            width: width,
            height: bottom_space,
            alignment: bottom_alignment,
            child: bottom,
          ),
        ],
      ),
    );
  }
}

