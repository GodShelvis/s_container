# s_container

一个简单的布局容器

#### 示例

```
import 'package:s_container/s_container.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SContainer(
      child: Text("center"),
      child_alignment: Alignment.center,
      width: 700,
      height: 1100,
      x_space: 100,
      y_space: 100,
      right_space: 300,
      top: Container(
        color: Colors.red,
        child: Text("top"),
      ),
      bottom: Container(
        color: Colors.red,
        child: Text("bottom"),
      ),
      left: Container(
        color: Colors.blue,
        child: Text("left"),
      ),
      right: Container(
        color: Colors.blue,
        child: Text("right"),
      ),
    );
}
```



| 参数名           | 默认值 | 解释                          |
| ---------------- | ------ | ----------------------------- |
| child            |        | 子组件(中间)                  |
| top              |        | 子组件(上)                    |
| bottom           |        | 子组件(下)                    |
| left             |        | 子组件(左)                    |
| right            |        | 子组件(右)                    |
| child_alignment  |        | 中间组件对齐方式              |
| top_alignment    |        | 上组件对齐方式                |
| bottom_alignment |        | 下组件对齐方式                |
| left_alignment   |        | 左组件对齐方式                |
| right_alignment  |        | 右组件对齐方式                |
| width            | 100    | 容器宽                        |
| height           | 100    | 容器高                        |
| space            | 0      | 统一配置左右容器宽,上下组件高 |
| x_space          |        | 单独配置左右组件宽            |
| y_space          |        | 单独配置上下组件高            |
| top_space        |        | 单独配置上组件高              |
| bottom_space     |        | 单独配置下组件高              |
| left_space       |        | 单独配置左组件宽              |
| right_space      |        | 单独配置右组件宽              |



#### 优先级

top_space> bottom_space

left_space> right_space

如: 

height = 100; 

top_space = 70;

bottom_space = 70;

则 bottom_space 将自动处理为 height(100) - top_space(70) =30

实际结果为

height = 100; 

top_space = 70;

bottom_space = 30;



##### 注意

当配置了在四周的子组件时,

则必须配置 该方向组件的 宽/高