// Dora Vrenezi
void createShapes(){
  
  //create logo
  logo = createShape(GROUP);
  strokeWeight(2);
  PShape body = createShape(RECT,450,320,100,60);
  PShape lens1 = createShape(ELLIPSE, 485,350,40,40);
  PShape lens2 = createShape(ELLIPSE, 485,350,25,25);
  PShape flash = createShape(RECT,514,331,25,5);
  PShape button1 = createShape(LINE, 457,318,468,318); 
  PShape button2 = createShape(LINE, 475,318,480,318); 
  PShape line1 = createShape(LINE, 485,331,485,337); 
  PShape line2 = createShape(LINE, 485,363,485,370); 
  PShape line3 = createShape(LINE, 465,351,472,351);
  PShape line4 = createShape(LINE, 498,351,505,351);
  PShape line5 = createShape(LINE, 471,337,476,341);
  PShape line6 = createShape(LINE, 494,341,499,337);
  PShape line7 = createShape(LINE, 475,359,470,364);
  PShape line8 = createShape(LINE, 494,359,499,364);
  
  body.setStroke(0);
  
  logo.addChild(body);
  logo.addChild(lens1);
  logo.addChild(lens2);
  logo.addChild(flash);
  logo.addChild(button1);
  logo.addChild(button2);
  logo.addChild(line1);
  logo.addChild(line2);
  logo.addChild(line3);
  logo.addChild(line4);
  logo.addChild(line5);
  logo.addChild(line6);
  logo.addChild(line7);
  logo.addChild(line8);
  
  // create exposure icon
  exp = createShape(GROUP);
  noFill();
  stroke(255);
  PShape middle = createShape(ELLIPSE, 485,350,20,20);
  PShape line9 = createShape(LINE, 485,331,485,337); 
  PShape line10 = createShape(LINE, 485,363,485,370); 
  PShape line11 = createShape(LINE, 465,351,472,351);
  PShape line12 = createShape(LINE, 498,351,505,351);
  PShape line13 = createShape(LINE, 471,337,476,341);
  PShape line14 = createShape(LINE, 494,341,499,337);
  PShape line15 = createShape(LINE, 475,359,470,364);
  PShape line16 = createShape(LINE, 494,359,499,364);
  
  exp.addChild(middle);
  exp.addChild(line9);
  exp.addChild(line10);
  exp.addChild(line11);
  exp.addChild(line12);
  exp.addChild(line13);
  exp.addChild(line14);
  exp.addChild(line15);
  exp.addChild(line16);
  
  // create reset shape
  reset = createShape(GROUP);
  noFill();
  PShape circ = createShape(ARC,500,85,28,28,-3*PI/4, PI);
  PShape arrow = createShape();
  arrow.beginShape();
  arrow.vertex(483, 90);
  arrow.vertex(486, 84);
  arrow.vertex(492, 90);
  arrow.endShape();
  
  reset.addChild(circ);
  reset.addChild(arrow);
  
  // create save shape
  save = createShape();
  save.beginShape();
  save.vertex(600,70);
  save.vertex(600,100);
  save.vertex(610,90);
  save.vertex(600,100);
  save.vertex(590,90);
  save.vertex(600,101);
  save.vertex(610,101);
  save.vertex(600,101);
  save.vertex(590,101);
  save.endShape();
  
  // create back shape
  back = createShape();
  back.beginShape();
  back.vertex(408,72);
  back.vertex(388,85);
  back.vertex(408,97);
  back.endShape();
}
