import processing.sound.*;

SoundFile piano;
SoundFile guitar;
SoundFile bender;
SoundFile piano2;
SoundFile ukelele;
SoundFile ting;
float brightness;
float pbrightness;
float map;
int[] xArray; 
int[] yArray; 

int x;
int y;

void setup() {
    size(1000,337);
    background(255);
    
    PImage myImage = loadImage("solLewitt2-02.png");
    myImage.resize(1000, 0);
    image(myImage, 0, 0);
    
    colorMode(HSB, 500);
    frameRate(30);
    
    //square guitar
    piano = new SoundFile(this, "piano2.wav"); 
    guitar = new SoundFile(this, "guitar.wav"); 
    //circle piano
    //bender = new SoundFile(this, "bender.wav"); 
    //piano2 = new SoundFile(this, "piano2.wav");
    ukelele = new SoundFile(this, "ukelele.wav");
    ting = new SoundFile(this, "ting.wav");
    //triangle twang
   
}


void draw() {
    //color pc = get(pmouseX, pmouseY);
    color c = get(mouseX, mouseY);
    
    //pbrightness = brightness(pc);
    brightness = brightness(c);
    
    map = map(brightness, 0, width, 0.0, 500.0);
    
    //if mouse is moving:
    if ((pmouseX - mouseX != 0) && (pmouseY - mouseY != 0)) {
      //line(mouseX, mouseY, pmouseX, pmouseY);
      //  x = mouseX;
      //  y = mouseY;
       //int[] mouseX = append(xArray, x);
       //int[] mouseY = append(yArray, y);
       //println("x1: " + x + " y1: " + y);
       //printArray(xArray);
       //stroke(#ffee00);
       
        if (mouseX < .37*width) {
        guitar.play();
        stroke(255, 0, 0);
        println("1st GUITAR");
       } else if (mouseX > .37*width && mouseX < .68*width) {
        piano.play();
        stroke(0, 255, 0);
        println("2nd circle PIANO");
       } else if (mouseX > (.68*width) && mouseY > height/5 && mouseY < height-height/5 ) {
        ukelele.play();
        stroke(0, 0, 255);
        println("triangle UKE");
       } else if (mouseX > (.68*width)) {
        ting.play();
        println("3rd TING");
       }
       
    } 
    
    
    
    //depending on shade of tone under mouse, sound will change pitch
    guitar.rate(map(brightness, 0, 500, 0.1, 2));
    piano.amp(map(brightness, 0, 500, 0.1, .7));
    //piano.rate(map(brightness, 0, 500, 0.1, .7));
    ukelele.rate(map(brightness, 0, 500, 0.1, 2));
    ting.rate(map(brightness, 0, 500, 0.1, 2));
    
    
    //if ((pmouseX - mouseX != 0) && (pmouseY - mouseY != 0)) {
    //  if (brightness > 250) {
    //    file.play();
    //  } else {
    //    file2.play();
    //  }
  
}