var map = new BMap.Map("container");
var point = new BMap.Point(map_x,map_y);
map.centerAndZoom(point, 15);                 // 初始化地图，设置中心点坐标和地图级别  

//添加缩放控件
map.addControl(new BMap.NavigationControl());  
map.addControl(new BMap.ScaleControl());  
map.addControl(new BMap.OverviewMapControl()); 

var opts = {
  width : 258,     // 信息窗口宽度
  height: 74,     // 信息窗口高度
  title:bubbleTitle
}
var infoWindow = new BMap.InfoWindow(bubbleImg, opts);  // 创建信息窗口对象
map.openInfoWindow(infoWindow, map.getCenter());      // 打开信息窗口
