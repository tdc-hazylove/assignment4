color white = color(255, 255, 255);
color black = color(0, 0, 0);
color green = color(15, 180, 30);
color blue = color(55, 25, 230);
color purple = color(190, 10, 230);
color red = color(255, 0, 0);
color orange = color(250, 120, 40);
color yellow = color(255, 240, 0);

color currentFillColor = white;

PFont fnt;

String t1 = "Instructions";
String t2 = "Drag the mouse to create pattern.";
String t3 = "Click on the coloured squares, on the left, to change the colour of the squares.";
String t4 = "Press 1 to reset the screen.";
String t5 = "You can choose to draw down rect or ellipse by clicking.";

  void setup() {
    // fullScreen();
    size(1280, 900);
  background(255);
  fnt = createFont("Cambria", 25);
  }
   
  void draw(){

  fill(white);
  rect(10, 10, 70, 70, 15);
  
  fill(white);
  ellipse(125, 45, 70, 70);
  
  fill(black);
  rect(10, 90, 70, 70, 15);
  
  fill(black);
  ellipse(125, 125, 70, 70);
  
  
  fill(green);
  rect(10, 170, 70, 70, 15);
  
  fill(green);
  ellipse(125, 205, 70, 70);

  fill(blue);
  rect(10, 250, 70, 70, 15);
  
  fill(blue);
  ellipse(125, 285, 70, 70);

  fill(purple);
  rect(10, 330, 70, 70, 15);
  
  fill(purple);
  ellipse(125, 365, 70, 70);

  fill(red);
  rect(10, 410, 70, 70, 15);
  
  fill(red);
  ellipse(125, 445, 70, 70);

  fill(orange);
  rect(10, 490, 70, 70, 15);
  
  fill(orange);
  ellipse(125, 525, 70, 70);
  
  fill(yellow);
  rect(10, 570, 70, 70, 15);
  
  fill(yellow);
  ellipse(125, 605, 70, 70);
  
  fill(white);
  rect(1050, 10, 150, 80, 15);
  
  textFont(fnt, 25);
  fill(0);
  text(t1, 1060, 60);
  
  saveFrame();
  
  }
  
  void mouseDragged(){
    float xrect = floor (mouseX/15)*15;
    float yrect = floor(mouseY/15)*15;
    
    //float xellipse = floor (mouseX/15)*15;
    //float yellipse = floor(mouseY/15)*15;
    
    //if(rectOver(10, 10, 70, 70)||
    //    rectOver(10, 90, 70, 70)||
    //    rectOver(10, 170, 70, 70)||
    //    rectOver(10, 250, 70, 70)||
    //    rectOver(10, 330, 70, 70)||
    //    rectOver(10, 410, 70, 70)||
    //    rectOver(10, 490, 70, 70)||
    //    rectOver(10, 570, 70, 70)){
      fill(currentFillColor);
      rect(xrect, yrect, 15, 15);
      fill(currentFillColor);
      
      //  }else if(ellipseOver(125,45,70)||
      //            ellipseOver(125,125,70)||
      //            ellipseOver(125,205,70)||
      //            ellipseOver(125,285,70)||
      //            ellipseOver(125,365,70)||
      //            ellipseOver(125,445,70)||
      //            ellipseOver(125,525,70)||
      //            ellipseOver(125,605,70)){
      //fill(currentFillColor);
      //ellipse(xellipse, yellipse, 15, 15);
      //fill(currentFillColor);
       // }
                  
  }
  
  void mousePressed() {
 if (rectOver(10, 10, 70, 70)||ellipseOver(125,45,70)) {
    currentFillColor = white;
  } else if (rectOver(10, 90, 70, 70)||ellipseOver(125,125,70)) {
    currentFillColor = black;
  } else if (rectOver(10, 170, 70, 70)||ellipseOver(125,205,70)) {
    currentFillColor = green;
  } else if (rectOver(10, 250, 70, 70)||ellipseOver(125,285,70)) {
    currentFillColor = blue;
  } else if (rectOver(10, 330, 70, 70)||ellipseOver(125,365,70)) {
    currentFillColor = purple;
  } else if (rectOver(10, 410, 70, 70)||ellipseOver(125,445,70)) {
    currentFillColor = red;
  } else if (rectOver(10, 490, 70, 70)||ellipseOver(125,525,70)) {
    currentFillColor = orange;
  } else if (rectOver(10, 570, 70, 70)||ellipseOver(125,605,70)) {
    currentFillColor = yellow;
  } else if (rectOver(1050, 10, 150, 80)) {
    fill(white);
    rect(250, 165, 900, 170, 20);
    textFont(fnt, 25);
    fill(black);
    text(t2, 300, 200);   
    textFont(fnt, 25);
    fill(black);
    text(t3, 300, 235);  
    textFont(fnt, 25);
    fill(black);
    text(t4, 300, 270); 
    textFont(fnt, 25);
    fill(black);
    text(t5, 300, 305); 
  }
}

boolean rectOver(int x, int y, int w, int h) {

  if (mouseX >= x && mouseX <= x+w && 
    mouseY >= y && mouseY <= y+h) {
    return true;
  } else {
    return false;
  }
}

boolean ellipseOver(int a, int b, int r){

   if(dist(mouseX,mouseY,a,b) <= r){
      return true;
      }else{
        return false;
    }
}

void keyPressed(){
  if(key == '1')
    setup();
}
