double rectangleArea({required double width,required double height}){
    return width * height;
}
double triangleArea({required double base,required double height}){
    return 0.5 * base * height;
}
double cylinderVolume({required double radius,required double height}){
    return 3.14 * radius * radius * height;
}

void main(){
   print('RectangleArea : ${rectangleArea(width: 6, height: 8)}');
   print('TriangleArea : ${triangleArea(base: 4, height: 6)}');
   print('CylinderVolume : ${cylinderVolume(radius: 3, height: 7)}');
}