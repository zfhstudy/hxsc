var map = new BMap.Map("container");
var point = new BMap.Point(map_x,map_y);
map.centerAndZoom(point, 15);                 // ��ʼ����ͼ���������ĵ�����͵�ͼ����  

//������ſؼ�
map.addControl(new BMap.NavigationControl());  
map.addControl(new BMap.ScaleControl());  
map.addControl(new BMap.OverviewMapControl()); 

var opts = {
  width : 258,     // ��Ϣ���ڿ��
  height: 74,     // ��Ϣ���ڸ߶�
  title:bubbleTitle
}
var infoWindow = new BMap.InfoWindow(bubbleImg, opts);  // ������Ϣ���ڶ���
map.openInfoWindow(infoWindow, map.getCenter());      // ����Ϣ����
