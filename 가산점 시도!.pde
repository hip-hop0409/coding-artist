float x1,y1,d1,vx1,vy1; //정웅재 변수지정
float x2,y2,d2,vx2,vy2; // 임태영 변수지정
void setup(){
  size(1000,500); //height,width
  x1=200; //초기 x 좌표
  y1=250; //초기 y 좌표
  d1=10; // 지름 기본값
  vx1=vy1=5; //속도연산자
  
  x2=20;
  y2=200;
  d2=10;
  vx2=vy2=3;
}
void draw(){
  frameRate(60);  
  background(0,255,255);
  mycharacter(x1,y1,d1); 
  x1=x1+vx1;
  y1=y1+vy1;
  if(x1>width || x1<0){
    vx1=-vx1; //부딫히면 반사
    if(d1<20) d1+=2; //사이즈가 20보다 작으면 커짐
  }
  if(y1>height || y1<0){ 
    vy1=-vy1; //부딫히면 반사
    if(d1>4) d1-=2;//사이즈가 4 이상이면 작아짐
  }

  
  
  hiphop(x2,y2,d2);
  x2+=vx2;
  y2+=vy2;
  if(x2>width || x2<0){
    vx2=vx2*1.5;//부딫히면 가속
    vx2=-vx2; //부딫히면 반사
  }
  if(y2>height || y2<0){ 
    vy2=vy2*1.5;//부딫히면 가속
    vy2=-vy2; //부딫히면 반사
  }
  if(vy2>15 || vx2>15||vx2<-15||vy2<-15){ //일정속도 이상일 시 리셋
  if(vx2>0)vx2=5;
  if(vx2<0)vx2=-5;
  if(vy2>0)vy2=5;
  if(vy2<0)vy2=-5; //각각의 경우의 대해서 박스 밖으로 나가지 않게
  }
}
