void mycharacter(float x, float y, float d){
  stroke(255,192,203); //핑크색귀 만들기
  strokeWeight(10);
  circle(x-2.5*d,y-4*d,4*d);
  circle(x+2.5*d,y-4*d,4*d);
  
  fill(251,206,177);//살구색얼굴
  stroke(0);//얼굴테두리 및 두께 정상화
  strokeWeight(1);
  ellipse(x,y,40*d,10*d); //얼굴
  
  fill(255); //흰색 눈
  circle(x-7.5*d,y-2.5*d,4*d);//눈1
  circle(x+7.5*d,y-2.5*d,4*d);//눈2
  
  fill(255,0,0);//빨간 입
  ellipse(x,y+2.5*d,10*d,2.5*d);//입
}
