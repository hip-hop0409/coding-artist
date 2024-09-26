void hiphop(float x, float y, float z){
  fill(200,200,0);
  circle(x,y,z*4);//face
  quad(x-z*4,y-z*3, x-z*3,y-z*2, x-z*2,y, x-z*4,y-z*3);//left wing1
  quad(x-z*4,y+z*3, x-z*3,y+z*2, x-z*2,y, x-z*4,y+z*3);//left wing2
  quad(x+z*4,y-z*3, x+z*3,y-z*2, x+z*2,y, x+z*4,y-z*3);//right wing1
  quad(x+z*4,y+z*3, x+z*3,y+z*2, x+z*2,y, x+z*4,y+z*3);//rignt wing2
  fill(200,200,200);
  arc(x,y+z,z,z/2,0,PI);//mouse
  fill(200,0,0);
  quad(x-z*3/2,y-z/2, x-z/2,y, x-z*6/5,y, x-z*3/2,y-z/2);//left eye
  quad(x+z*3/2,y-z/2, x+z/2,y, x+z*6/5,y, x+z*3/2,y-z/2);//right eye
  fill(255);
}
