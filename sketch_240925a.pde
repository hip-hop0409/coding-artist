float x1,y1,d1,vx1,vy1; //정웅재 변수지정
float x2,y2,d2,vx2,vy2; // 임태영 변수지정
void setup(){
  size(1000,500); //height,width
  x1=400; //초기 x 좌표
  y1=250; //초기 y 좌표
  d1=10; // 지름 기본값
  vx1=vy1=5; //속도연산자
  
  x2=400;
  y2=200;
  d2=10;
  vx2=vy2=3;
}
void draw(){
  frameRate(60);  
  background(0,255,255);
  mycharacter(x1,y1,d1); 
  x1=x1-vx1;
  y1=y1-vy1;
  if(x1>width || x1<0) vx1=-vx1;
  if(y1>height || y1<0) vy1=-vy1;
  
  hiphop(x2,y2,d2);
  x2+=vx2;
  y2+=vy2;
  if(x2>width || x2<0) vx2=-vx2;
  if(y2>height || y2<0) vy2=-vy2;
}
