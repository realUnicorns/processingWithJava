size(640,360,P3D);           //P3D can be used to make a 2D space into a 3D space (width,height,3d_option)
background(150,200,177);

//Creating Different Types Of Line
stroke(0,0,255);
line(100,50,600,250);       //This is a 2D line(x1,y1,x2,y2)
line(85,20,20,85,75,0);     //This is a 3D line(x1,y1,z1,x2,y2,z2)

//Creating Different Types Of Rectangle
rectMode(CENTER); 
stroke(0,255,0);
fill(0,0,220,127);
rect(100,50,300,200);               // This rectangle has sharp corners (x1,y1,w,h)
rectMode(CORNER);
rect(30,20,55,55,5);                //This is a rectange with a curved edge (x1,y1,w,h,amount_of_curving) 
rectMode(RADIUS);
rect(500,20,55,55,5,10,15,20);       //This rectangle have curved edge with freedom over each (x1,y1,w,h,amount_of_curving1,amount_of_curving2,amount_of_curving3,amount_of_curving4) 

//Creating Different Types Of Point
stroke(255,0,0);
point(400,20);            //2D point (x,y)
point(300,30,10);        //3D point (x,y,z)

//Creating Different Types Of Point
stroke(0,0,255);
fill(255,0,0);
triangle(200,100,100,200,300,200);        //A simple triangle (x1,y1,x2,y2,x3,y3)

//Creating Different Types Of Point
stroke(0,0,255);
fill(255,0,0);
quad(500,100,500,200,600,200,600,100);    //A simple quadrilaterl (x1,y1,x2,y2,x3,y3,x4,y4)

//Creating Different Types Of ellipse
ellipseMode(CENTER); 
ellipse(400,200,100,100);                //A normal ellipse (x1,y1,w,h)
ellipseMode(CORNER);                     //A mode
ellipse(400,200,100,100);                //A normal ellipse (x1,y1,w,h)
ellipseMode(RADIUS); 
ellipse(400,200,100,100);  

//Creating Different Types Of arc
arc(50,55,50,50,0,HALF_PI);
noFill();                               //Removes fill color
arc(50,55,60,60,HALF_PI,PI);
arc(50,55,70,70,PI,PI+QUARTER_PI);
arc(50,55,80,80,PI+QUARTER_PI,TWO_PI);

stroke(0,0,255);
fill(255,0,0);
arc(300,55,50,50,0,PI+QUARTER_PI, OPEN);
arc(390,55,50,50,0,PI+QUARTER_PI, CHORD);
arc(450,55,50,50,0,PI+QUARTER_PI, PIE);