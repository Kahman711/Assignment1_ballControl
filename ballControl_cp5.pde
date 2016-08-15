import controlP5.*;
ControlP5 cp5;
ControlWindow controlWindow;
Canvas cc;
//Original Code
float x;
float y;
float easing = 0.05;
//background float
float a=0; 
float b=0;
float c=0;
int myColor = color(255);
int c1,c2;
float n,n1;
// cp5 canvas
class MyCanvas extends Canvas {
int y;
int mx = 0;
int my = 0;
public void setup(PGraphics pg) {
y = 200;
}
public void update(PApplet p) {
mx = p.mouseX;
my = p.mouseY;
}
public void draw(PGraphics pg) {
// renders a square with randomly changing colors
// make changes here.
pg.fill(255);
pg.rect(mx-30, y-30, 350, 50);
pg.fill(0,255,0);
pg.text("Type any words NOW!", mx,y);
}
}
void setup() {
size(500, 500); 
noStroke(); 
textSize(30); //Key Events
cp5 = new ControlP5(this);
cp5.addSlider("mySlider").setPosition(20,20).setSize(200,20);
        
// create a control window canvas and add it to
// the previously created control window. 
cc = new MyCanvas();
cc.pre(); // use cc.post(); to draw on top of existing controllers.
cp5.addCanvas(cc); // add the canvas to cp5
// button name 'buttonA'
cp5.addButton("colorA")
.setValue(0)
.setPosition(380,420)
.setSize(100,19)
;
// another button, buttonB
cp5.addButton("colorB")
.setValue(80)
.setPosition(380,440)
.setSize(100,19)
;
cp5.addButton("colorC")
.setValue(0)
.setPosition(380,460)
.setSize(100,19)
;
}
void draw() {
//background (a,b,c); //constrain the background color. 
background (myColor);
fill(0); //Key Events 
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
myColor = lerpColor(c1,c2,n);
n += (1-n)* 0.1;

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

public void controlEvent(ControlEvent theEvent) {
println(theEvent.getController().getName());
n = 0;
}
// function colorA will receive changes from 
// controller with name colorA
public void colorA(int theValue) {
c1 = c2;
c2 = color(0,160,100);
}
// function colorB will receive changes from 
// controller with name colorB
public void colorB(int theValue) {
c1 = c2;
c2 = color(50,0,0);
}
// function colorC will receive changes from 
// controller with name colorC
public void colorC(int theValue) {
c1 = c2;
c2 = color(255,255,0);
}

//Coded Keys
void keyPressed() {
if ( key == CODED ) {
if (keyCode == UP) {
background(0);
}else if (keyCode == DOWN) {
strokeWeight(50);
line(width/2,0,width/2,height);
line(0,height/2,width,height/2); }}}
