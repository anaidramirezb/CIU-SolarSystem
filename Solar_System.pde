//Primer planeta !! 
float ang;
PImage img;
PImage ship;
float ang2 = random(2,10);

void setup(){
 size(1093,653, P3D);

 strokeWeight(.25);
 stroke(255);
 
 //inicializar angulo en 0
 ang=0; 
 img = loadImage("./space.jpg");
 ship = loadImage("./falcon.png"); 
}

void draw(){
 background(img);
 fill(232,132,12); //color
 translate(width/2, height/2,0);
 sphere(80);
 
 //rotar en X y Y para darle el efecto de movimiento

  pushMatrix();
  
 rotateY(radians(-ang));
 rotateX(radians(ang*2));

pushMatrix(); //Primer planeta, amarillo
  translate(-150, -200,50);
  fill(255,242,65);
  sphere(50);
    
    //satelite de luna amarilla
  translate(-180, -205);
  fill(156,226,255);
  sphere(5);
popMatrix();
  
  
  
pushMatrix(); // segundo planeta, rosa
 translate(180,0,20); 
 rotateX(radians(7*ang)); 
 rotateY(radians(-ang));
  fill(241,91,255);
  sphere(25);
 popMatrix();
 
  
  // Tercer planeta, planeta rojo 
  pushMatrix();
  translate(100, 100, 15);
  rotateX(radians(ang2));
  fill(251,29,25);
  sphere(30);
  popMatrix();

 // Cuarto planeta, planeta verde
  pushMatrix();
  translate(-230, -100,3);
  rotateX(radians(-45));
  rotateY(radians(ang));
  fill(148,125,100);
    sphere(30);
  popMatrix();
  
  
  //Quinto planeta
 
  pushMatrix();
  translate(378, 92,50);
  rotateX(radians(18));
  fill(55,95,154);
  sphere(44);
  popMatrix();
  
popMatrix();


translate(mouseX-width/2,mouseY-height/2,50);
rotateX(radians(45));
rotateY(radians(22)) ;
scale(0.3);
image(ship,0,0) ;

if(mousePressed==true){
  translate(ship.width,0); 
  scale(-1.0,1.0); 
  image(ship,0,0); 
}

ang= ang+.25;
if(ang>=360){
ang = 0;
}
}
