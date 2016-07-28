//Original Code
float x;
float y;
float easing = 0.05;

//background float
float a=0; 
float b=0;
float c=0;


void setup() {
  size(500, 500); 
  noStroke();  
  textSize(100); //Key Events
 
}

void draw() { 
  
  background(a,b,c); //constrain the background color.
  fill(255); //Key Events 
  text(key,230,270); //Key Events 
  strokeWeight(1);
  stroke(255);
  /*line(width/2,0,width/2,height);
   //divide first then state out the place 
   //0 is let it at middle
  line(0,height/2,width,height/2);
   //0 is top left then /2*/
   
   //Mouse Button
   if(mousePressed == true){
     cursor(ARROW); 
   }else {
   cursor(CROSS);}
   
  //Original Code
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  //Mouse Button
  if (mouseButton == LEFT) {
    fill(0,150,255); // Light Blue
  } else if (mouseButton == RIGHT) {
    fill(0,255,150); // Light Green
  }
  
  //Object
  strokeWeight(4);
  stroke(255);
  ellipse(x, y, 66, 66);
 
 //Mouse Data
 if (mouseX>width/2) {
   a=a+1;}
   else {
   a=a-1;}
     
 if (mouseY>height/2) {
   b=b+1;}
   else {
   b=b-1;}
     
//Mouse Events
 if (mousePressed) {
   c=c+1;}
   else {
   c=c-1;}
  
//Background constrain 
a = constrain (a,0,255);
b = constrain (b,0,255);
c = constrain (b,0,255);
}

//Coded Keys
void keyPressed() {
 if ( key == CODED ) {
   if (keyCode == UP) {
background(255);
   }else if (keyCode == DOWN) {
 strokeWeight(50);
 line(width/2,0,width/2,height);
 line(0,height/2,width,height/2); }}}
 

