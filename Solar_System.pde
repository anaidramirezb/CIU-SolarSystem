//Primer planeta !! 
float ang;
PImage img;
float ang2 = random(2,10);

void setup(){
 size(1093,653, P3D);

 strokeWeight(.25);
 stroke(255);
 
 //inicializar angulo en 0
 ang=0; 
 img = loadImage("C:/Users/xoana/Desktop/Canarias-Books/Tareas CIU/space.jpg");
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
  
  //segundo planeta
  
pushMatrix();
 translate(180,0); 
 rotateX(radians(7*ang)); 
 rotateY(radians(-ang));
  fill(241,91,255);
  sphere(25);
 popMatrix();
 
 pushMatrix();
  rotate(ang*2);
  translate(24, 0);
  fill(50, 255, 200);
  ellipse(0, 0, 6, 6);
  popMatrix();
  
 //pushMatrix();
 //translate(-230,89);
 //rotateX(PI);
 //rotateY(PI);
 //fill(243,110,32);
 //sphere(40);
 //popMatrix();
  
  
  // Tercer planeta
  pushMatrix();
  translate(100, 100, 15);
  rotateX(radians(ang2));
  fill(251,29,25);
  sphere(30);
  popMatrix();

 // Cuarto planeta
  pushMatrix();
  translate(30, 10, 52);
  rotateX(radians(-45));
  fill(0,29,25);
    sphere(30);
  popMatrix();
  
  
  //Quinto planeta
  
   pushMatrix();
  translate(78, 92);
  rotateX(radians(18));
  fill(25,0,25);
    sphere(30);
  popMatrix();
  
popMatrix();
ang= ang+.25;
if(ang>=360){
ang = 0;
}
}