
// ================  Nebula Codex ====================  

// © 2021 nebulacodex.io All Rights Reserved to 
// Nebula Codex 
// nebulacodex@protonmail.com
// Code made with Processing Version 3.5.4
// ===================================================


// Change the vairables below according to your NFT Metadata.

// Curve Type >>> 1=Sofia | 2=Eleanor | 3=Alice | 4=Cecilia | 5=Aurora 
int curvetype = 1;     

// Background Color >>> 1 = White | 2 = Blue | 3 = Orange | 4 = Green | 5 = Red | 6 = Black
int background_type = 6;

// Dot Color HSB
float dot_H = 197;
float dot_S = 2; 
float dot_B = 95;

// Dot Number >> int num_dots = dotNumber
int num_dots = 1239420;

// Chaotic Curve Parameters >>> float a = paramA | float b = paramB | float c = paramC | float d = paramD
float a = -3.481666;
float b = -1.3923844;
float c = 0.810675;
float d = -3.52181;

// ==================================================

void setup(){
size(2000, 2000);
colorMode(HSB,360,100,100);
}

void printfigure(int curvetype_, int background_type_, float dot_H_, float dot_S_, float dot_B_, int num_dots_, float a_, float b_, float c_, float d_){   
  switch(curvetype_) {
    case 1: 
        println("1");
        Sofia(background_type_, dot_H_, dot_S_, dot_B_, num_dots_, a_, b_, c_, d_);break; 
    case 2: 
        println("2");
        Eleanor(background_type_, dot_H_, dot_S_, dot_B_, num_dots_, a_, b_, c_, d_);break; 
    case 3:
        println("3");
        Alice(background_type_, dot_H_, dot_S_, dot_B_, num_dots_, a_, b_, c_, d_);break; 
    case 4: 
        println("4");
        Cecilia(background_type_, dot_H_, dot_S_, dot_B_, num_dots_, a_, b_, c_, d_);break; 
    case 5:
        println("5");
        Aurora(background_type_, dot_H_, dot_S_, dot_B_, num_dots_, a_, b_, c_, d_);break; 
    default:
        println("5");
        Aurora(background_type_, dot_H_, dot_S_, dot_B_, num_dots_, a_, b_, c_, d_);break;
 }
}


String colorSetup(int background_type, float dot_H, float dot_S, float dot_B){  
    
    colorMode(HSB,360,100,100);
    
    // Local Variables Inicialization
    String back_color_name = "";
    color back_color = 0;
    
    // Background type =========================================  
    switch(background_type){     
      case 1: // White background
        back_color_name = "Normal White";
        back_color = color(30,4,99); // white color
        break;
        
      case 2: // blue background
        back_color_name= "Blue Cardano";
        back_color = color(188,96,74); 
        break;
        
      case 3: // orange background
        back_color_name= "Orange Sun";
        back_color = color(29,77,95);
        break;
        
      case 4: // green background
        back_color_name= "Green Life";
        back_color = color(76,100,81);
        break;
        
      case 5: // red background
        back_color_name= "Red Exciting";
        back_color = color(353,87,91);
        break;
        
      case 6:// black background 
        back_color_name= "Black Universe";
        back_color = color(345,31,5);
        break;
    }
    
    background(back_color);
    color dot_color = color(dot_H, dot_S, dot_B);
    stroke(dot_color);
    
    return back_color_name;
}


void Sofia(int background_type, float dot_H, float dot_S, float dot_B, float num_dots, float a, float b, float c, float d){   
   
    // Background and Dot color Setup
    String back_color_name = colorSetup(background_type, dot_H, dot_S, dot_B);
    
    // Picture Generation (dot by dot) ========================
    
    // Start point 
    float x = 0.5;
    float y = 0.5;
  
    // Dot by dot painting 
    for(int i=0; i < num_dots; i++){
      float oldx = x;
      float oldy = y;
      
      // Chaotic System Equation (Peter de Joung Curve)
      x = sin(a*oldy) - cos(b*oldx);
      y = sin(c*oldx) - cos(d*oldy);
       
      float scaledx = map(x,-2,2,0,width);
      float scaledy = map(y,-2,2,0,height);
      
      // Point printing  
      point(scaledx,scaledy);      
    }
    
     save("1_Sofia_" + "Background="+back_color_name+ "_DotNumber="+num_dots+ "_DotColorHSB= H("+dot_H+ ") S("+ dot_S + ") B(" + dot_B + ")_Parameters_a=" + nf(a) + "_b="+nf(b) + "_c="+nf(c) + "_d="+nf(d) +"_.png");
 }


void Eleanor(int background_type, float dot_H, float dot_S, float dot_B, float num_dots, float a, float b, float c, float d){   
   
    // Background and Dot color Setup
    String back_color_name = colorSetup(background_type, dot_H, dot_S, dot_B);
        
    // Picture Generation (dot by dot) ========================
    
    // Start point 
    float x = 0.5;
    float y = 0.5;
  
    // Dot by dot painting 
    for(int i=0; i < num_dots; i++){
      float oldx = x;
      float oldy = y;
      
      // Eleanor - Chaotic System Equation
      x = cos(a*oldy) - cos(b*oldx);
      y = sin(c*oldx) - tan(d*oldy);
       
      float scaledx = map(x,-2,2,0,width);
      float scaledy = map(y,-2,2,0,height);
      
      // Point printing  
      point(scaledx,scaledy);      
    }
    
     save("2_Eleanor_" + "Background="+back_color_name+ "_DotNumber="+num_dots+ "_DotColorHSB= H("+dot_H+ ") S("+ dot_S + ") B(" + dot_B + ")_Parameters_a=" + nf(a) + "_b="+nf(b) + "_c="+nf(c) + "_d="+nf(d) +"_.png");
 }


void Alice(int background_type, float dot_H, float dot_S, float dot_B, float num_dots, float a, float b, float c, float d){   
   
    // Background and Dot color Setup
    String back_color_name = colorSetup(background_type, dot_H, dot_S, dot_B);
    
    // Picture Generation (dot by dot) ========================
    
    // Start point 
    float x = 0.5;
    float y = 0.5;
  
    // Dot by dot painting 
    for(int i=0; i < num_dots; i++){
      float oldx = x;
      float oldy = y;
      
      // Alice - Chaotic System Equation 
      x = sin(a*oldy) - cos(b*oldx);
      y = sin(c*oldx) - tan(d*oldy);
       
      float scaledx = map(x,-2,2,0,width);
      float scaledy = map(y,-2,2,0,height);
      
      // Point printing  
      point(scaledx,scaledy);      
    }
    
     save("3_Alice_" + "Background="+back_color_name+ "_DotNumber="+num_dots+ "_DotColorHSB= H("+dot_H+ ") S("+ dot_S + ") B(" + dot_B + ")_Parameters_a=" + nf(a) + "_b="+nf(b) + "_c="+nf(c) + "_d="+nf(d) +"_.png");
 }


void Cecilia(int background_type, float dot_H, float dot_S, float dot_B, float num_dots, float a, float b, float c, float d){   
   
    // Background and Dot color Setup
    String back_color_name = colorSetup(background_type, dot_H, dot_S, dot_B);
    
    // Picture Generation (dot by dot) ========================
    
    // Start point 
    float x = 0.5;
    float y = 0.5;
  
    // Dot by dot painting 
    for(int i=0; i < num_dots; i++){
      float oldx = x;
      float oldy = y;
      
      // Cecilia - Chaotic System Equation
      x = cos(a*oldy) - cos(b*oldx);
      y = sin(c*oldx) - cos(d*oldy);
       
      float scaledx = map(x,-2,2,0,width);
      float scaledy = map(y,-2,2,0,height);
      
      // Point printing  
      point(scaledx,scaledy);      
    }
    
     save("4_Cecilia_" + "Background="+back_color_name+ "_DotNumber="+num_dots+ "_DotColorHSB= H("+dot_H+ ") S("+ dot_S + ") B(" + dot_B + ")_Parameters_a=" + nf(a) + "_b="+nf(b) + "_c="+nf(c) + "_d="+nf(d) +"_.png");
 }


void Aurora(int background_type, float dot_H, float dot_S, float dot_B, float num_dots, float a, float b, float c, float d){   
   
    // Background and Dot color Setup
    String back_color_name = colorSetup(background_type, dot_H, dot_S, dot_B);
    
    // Picture Generation (dot by dot) ========================
    
    // Start point 
    float x = 0.5;
    float y = 0.5;
  
    // Dot by dot painting 
    for(int i=0; i < num_dots; i++){
      float oldx = x;
      float oldy = y;
      
      // Aurora - Chaotic System Equation
      x = cos(a*oldy) - tan(b*oldx);
      y = cos(c*oldx) - tan(d*oldy);
       
      float scaledx = map(x,-2,2,0,width);
      float scaledy = map(y,-2,2,0,height);
      
      // Point printing  
      point(scaledx,scaledy);      
    }
    
     save("5_Aurora_" + "Background="+back_color_name+ "_DotNumber="+num_dots+ "_DotColorHSB= H("+dot_H+ ") S("+ dot_S + ") B(" + dot_B + ")_Parameters_a=" + nf(a) + "_b="+nf(b) + "_c="+nf(c) + "_d="+nf(d) +"_.png");
 }


void draw(){
  printfigure(curvetype, background_type, dot_H, dot_S, dot_B, num_dots, a, b, c, d);
  noLoop();
}