import processing.serial.*; //Importamos la librería Serial
 
Serial port; //Nombre del puerto serie
 
PrintWriter output;  //Para crear el archivo de texto donde guardar los datos
 
int rquad=40; //Radio del quadrado
int xquad=500;  //Posición X de rect
int yquad=200;  //Posición Y de rect
boolean overRect = false; //Estado del mouse si está encima de rect o no
 
//Colores del botón
int red=100;
int green=100;
int blue=100;
 
boolean status=false; //Estado del color de rect
String texto="LED OFF";//Texto del status inicial del LED
 
int xlogo=200;//Posición X de la imagen
int ylogo=250;//Posición Y de la imagen
 
int valor1;//Valor de la temperatura
int valor2;//Valor de la temperatura
int valor3;//Valor de la temperatura
int valor4;//Valor de la temperatura
int valor5;//Valor de la temperatura
int valor6;//Valor de la temperatura
int valor7;//Valor de la temperatura
int valor8;//Valor de la temperatura
int valor9;//Valor de la temperatura
int valor10;//Valor de la temperatura
/*
int valor11;//Valor de la temperatura
int valor12;//Valor de la temperatura
int valor13;//Valor de la temperatura
int valor14;//Valor de la temperatura
int valor15;//Valor de la temperatura
int valor16;//Valor de la temperatura
int valor17;//Valor de la temperatura
int valor18;//Valor de la temperatura
int valor19;//Valor de la temperatura
int valor20;//Valor de la temperatura
 */
//Colores esfera temperatura
float rojo;
float verde;
float azul;

int tempe1;
int tempe2;
int tempe3;
int tempe4;
int tempe5;
int tempe6;
int tempe7;
int tempe8;
int tempe9;
int tempe10;
/*
int tempe11;
int tempe12;
int tempe13;
int tempe14;
int tempe15;
int tempe16;
int tempe17;
int tempe18;
int tempe19;
int tempe20;
*/
 
void setup()
{
  println(Serial.list()); //Visualiza los puertos serie disponibles en la consola de abajo
  port = new Serial(this, Serial.list()[0], 115200 ); //Abre el puerto serie COM3 115200
   
  output = createWriter("temperatura_datos.txt"); //Creamos el archivo de texto, que es guardado en la carpeta del programa
   
  size(800, 600); //Creamos una ventana de 800 píxeles de anchura por 600 píxeles de altura 
}
 
void draw()
{
  background(100,100,100);//Fondo de color blanco
    
  if(mouseX > xquad-rquad && mouseX < xquad+rquad &&  //Si el mouse se encuentra dentro de rect
     mouseY > yquad-rquad && mouseY < yquad+rquad)
     {
       overRect=true;  //Variable que demuestra que el mouse esta dentro de rect
       stroke(255,0,0);  //Contorno de rect rojo
     }
   else
   {
     overRect=false;  //Si el mouse no está dentro de rect, la variable pasa a ser falsa
     stroke(0,0,0);  //Contorno de rect negro
   }
   
  //Dibujamos un rectangulo de color gris
  //fill(red,green,blue);
  //rectMode(RADIUS); //Esta función hace que Width y Height de rect sea el radio (distancia desde el centro hasta un costado).
  //rect(xquad,yquad,rquad,rquad);
   
  //Creamos un texto de color negro con la palabra LED
  //fill(0,0,0);
  //PFont f = loadFont("Calibri-48.vlw");//Tipo de fuente
  //textFont(f, 20);
  //text(texto, 170, 270);
   
  //Ponemos la imagen de nuestro logo
  imageMode(CENTER);//Esta función hace que las coordenadas de la imagne sean el centro de esta y no la esquina izquierda arriba
  PImage imagen=loadImage("logo.jpg");
  image(imagen,xlogo,ylogo,200,200);
 
  //Recibir datos temperatura del Arduino 
 
    if(port.available() > 0) // si hay algún dato disponible en el puerto 
   {
 
    tempe1=port.read();//Lee el dato y lo almacena en la variable "valor" 
    
     
    
     tempe2=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
    
     tempe3=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
    
     tempe4=port.read();//Lee el dato y lo almacena en la variable "valor"
     
    
     tempe5=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
    
     tempe6=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
      
     tempe7=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
     
     tempe8=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
    
     tempe9=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
    
     tempe10=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     /*
     
    tempe11=port.read();//Lee el dato y lo almacena en la variable "valor" 
    
     
    
     tempe12=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
    
     tempe13=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
    
     tempe14=port.read();//Lee el dato y lo almacena en la variable "valor"
     
    
     tempe15=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
    
     tempe16=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
      
     tempe17=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
     
     tempe18=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
    
     tempe19=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
    
     tempe20=port.read();//Lee el dato y lo almacena en la variable "valor"
     
     
     */
     
   }
   
     valor1=tempe1;
     valor2=tempe2;
     valor3=tempe3;
     valor4=tempe4;
     valor5=tempe5;
     valor6=tempe6;
     valor7=tempe7;
     valor8=tempe8;
     valor9=tempe9;
     valor10=tempe10;
  /*
     valor11=tempe11;
     valor12=tempe12;
     valor13=tempe13;
     valor14=tempe14;
     valor15=tempe15;
     valor16=tempe16;
     valor17=tempe17;
     valor18=tempe18;
     valor19=tempe19;
     valor20=tempe20;*/
   
   text ("PROYECTO TERMOMETRIA", 105, 60);
   
   text ("CZ tecnologia", 105, 80);
   text ("Montajes VIDAL", 105, 100);
   
   
     text ("Cable 1", 355,50);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 1 =",355,70);
   text(valor1, 445, 70);
   text("ºC",472,70);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 2 =",355,90);
   text(valor2, 445, 90);
   text("ºC",472,90);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 3 =",355,110);
   text(valor3, 445, 110);
   text("ºC",472, 110);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 4 =",355,130);
   text(valor4, 445, 130);
   text("ºC",472, 130);
    
    //Visualizamos la temperatura con un texto
   text("Termocupla 5 =",355,150);
   text(valor5, 445, 150);
   text("ºC",472, 150);
   
   
   text ("Cable 2", 590,50);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 6 =",590,70);
   text(valor6, 680, 70);
   text("ºC",707,70);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 7 =",590,90);
   text(valor7, 680, 90);
   text("ºC",707,90);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 8 =",590,110);
   text(valor8, 680, 110);
   text("ºC",707, 110);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 9 =",590,130);
   text(valor9, 680, 130);
   text("ºC",707, 130);
    
    //Visualizamos la temperatura con un texto
   text("Termocupla 10 =",590,150);
   text(valor10, 680, 150);
   text("ºC",707, 150);
   
   
   /*
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 11 =",355,200);
   text(valor11, 445, 200);
   text("ºC",472,200);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 12 =",355,220);
   text(valor12, 445, 220);
   text("ºC",472,220);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 13 =",355,240);
   text(valor13, 445, 240);
   text("ºC",472, 240);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 14 =",355,260);
   text(valor14, 445, 260);
   text("ºC",472, 260);
    
    //Visualizamos la temperatura con un texto
   text("Termocupla 15 =",355,280);
   text(valor15, 445, 280);
   text("ºC",472, 280);
   
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 16 =",590,200);
   text(valor16, 680, 200);
   text("ºC",707,200);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 17 =",590,220);
   text(valor17, 680, 220);
   text("ºC",707,220);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 18 =",590,240);
   text(valor18, 680, 240);
   text("ºC",707, 240);
   
   //Visualizamos la temperatura con un texto
   text("Termocupla 19 =",590,260);
   text(valor19, 680, 260);
   text("ºC",707, 260);
    
    //Visualizamos la temperatura con un texto
   text("Termocupla 20 =",590,280);
   text(valor20, 680, 280);
   text("ºC",707, 280);
   
   */
   
   
   
    {
   //Escribimos los datos de la temperatura con el tiempo (h/m/s) en el archivo de texto
   output.print(valor1 + " ºC     ");
   output.print(valor2 + " ºC     ");
   output.print(valor3 + " ºC     ");
   output.print(valor4 + " ºC     ");
   output.print(valor5 + " ºC     ");
   output.print(valor6 + " ºC     ");
   output.print(valor7 + " ºC     ");
   output.print(valor8 + " ºC     ");
   output.print(valor9 + " ºC     ");
   output.print(valor10 + " ºC     ");
  /* output.print(valor11 + " ºC     ");
   output.print(valor12 + " ºC     ");
   output.print(valor13 + " ºC     ");
   output.print(valor14 + " ºC     ");
   output.print(valor15 + " ºC     ");
   output.print(valor16 + " ºC     ");
   output.print(valor17 + " ºC     ");
   output.print(valor18 + " ºC     ");
   output.print(valor19 + " ºC     ");
   output.print(valor20 + " ºC     ");
   */
   
   output.print(day()+"/");
   output.print(month()+"/");
   output.print(year()+"-");
   output.print(hour( )+":");
   output.print(minute( )+":");
   output.println(second( ));
   output.println("");
   
   delay (1000);
  
    }
  //Esfera color visualización temperatura
  
  float temp1 = map (valor1, 15,50, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp1;
  verde=temp1*-1 + 255;
  azul=temp1*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(520,63,20,20);
  
   float temp2 = map (valor2, 15,50, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp2;
  verde=temp2*-1 + 255;
  azul=temp2*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(520,83,20,20);
  
  float temp3 = map (valor3, 15,50, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp3;
  verde=temp3*-1 + 255;
  azul=temp3*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(520,103,20,20);
  
  float temp4 = map (valor4, 15, 50, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp4;
  verde=temp4*-1 + 255;
  azul=temp4*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(520,123,20,20);
  
  float temp5 = map (valor5, 15, 50, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp5;
  verde=temp5*-1 + 255;
  azul=temp5*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(520,143,20,20);
  
  
  
  
  
 float temp6 = map (valor6, 15,40, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp6;
  verde=temp6*-1 + 255;
  azul=temp6*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(750,63,20,20);
  
   float temp7 = map (valor7, 15,40, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp7;
  verde=temp7*-1 + 255;
  azul=temp7*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(750,83,20,20);
  
  float temp8 = map (valor8, 15,40, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp8;
  verde=temp8*-1 + 255;
  azul=temp8*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(750,103,20,20);
  
  float temp9 = map (valor9, 15,40, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp9;
  verde=temp9*-1 + 255;
  azul=temp9*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(750,123,20,20);
  
  float temp10 = map (valor10, 15,40, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp10;
  verde=temp10*-1 + 255;
  azul=temp10*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(750,143,20,20); 
  
  
  
  /*
  
  
  float temp11 = map (valor11, 15,32, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp1;
  verde=temp1*-1 + 255;
  azul=temp1*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(520,193,20,20);
  
   float temp12 = map (valor12, 15,32, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp2;
  verde=temp2*-1 + 255;
  azul=temp2*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(520,213,20,20);
  
  float temp13 = map (valor13, 15,32, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp3;
  verde=temp3*-1 + 255;
  azul=temp3*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(520,233,20,20);
  
  float temp14 = map (valor14, 15,32, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp4;
  verde=temp4*-1 + 255;
  azul=temp4*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(520,253,20,20);
  
  float temp15 = map (valor15, 15,32, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp4;
  verde=temp4*-1 + 255;
  azul=temp4*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(520,273,20,20);
  
  
  
  
  
 float temp16 = map (valor16, 15,32, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp1;
  verde=temp1*-1 + 255;
  azul=temp1*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(750,193,20,20);
  
   float temp17 = map (valor17, 15,32, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp2;
  verde=temp2*-1 + 255;
  azul=temp2*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(750,213,20,20);
  
  float temp18 = map (valor18, 15,32, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp3;
  verde=temp3*-1 + 255;
  azul=temp3*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(750,233,20,20);
  
  float temp19 = map (valor19, 15,32, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp4;
  verde=temp4*-1 + 255;
  azul=temp4*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(750,253,20,20);
  
  float temp20 = map (valor20, 15,32, 0, 255);//Escalamos la temperatura donde maximo sea 32ºC y mínimo 15ºC
  rojo=temp4;
  verde=temp4*-1 + 255;
  azul=temp4*-1 + 255;
  //Dibujamos una esfera para colorear la temperatura
  noStroke();
  fill(rojo,verde,azul);
  ellipseMode(CENTER);
  ellipse(750,273,20,20); 
  */
  
}

void keyPressed() //Cuando se pulsa una tecla
{
  if(key=='w'||key=='W')
  {
        ylogo--; //El logo se deplaza hacia arriba
  }
  else if(key=='s'||key=='S')
  {
        ylogo++; //El logo se deplaza hacia abajo
  }
  else if(key=='a'||key=='A')
  {
        xlogo--; //El logo se desplaza hacia la izquierda
  }
  else if(key=='d'||key=='D')
  {
        xlogo++; //El logo se desplaca hacia la derecha
  }
  //Pulsar la tecla E para salir del programa
  if(key=='e' || key=='E')
  {
    output.flush(); // Escribe los datos restantes en el archivo
    output.close(); // Final del archivo
    exit();//Salimos del programa
  }
}
