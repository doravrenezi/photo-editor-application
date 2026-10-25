// Dora Vrenezi

void editImg() {
  background(0);
  image(image,300,150, 400, 300);
  
  // create slider
  stroke(255);
  strokeWeight(1);
  line(323,482,673,482);
  fill(255);
  circle(x, 482, 15); // x is the x position of the slider

  // show exposure icon
  pushMatrix();
  translate(-131, 225);
  shape(exp);
  popMatrix();
  textSize(12);
  fill(255);
  text("exposure", 328, 614);
  
  // create and show saturation icon
  stroke(255);
  strokeWeight(2);
  fill(255,255,255,160);
  circle(500,575,28);
  fill(255);
  text("saturation", 472, 614);
  
  // create and show contrast icon
  stroke(255);
  strokeWeight(2);
  noFill();
  circle(647,575,28); 
  fill(255);
  arc(647,575,28,28,-PI/2, PI/2);
  text("contrast", 623, 614);
  
  // show back icon
  shape(back);
      
  // show reset icon
  shape(reset);
  fill(255);
  //text("reset", 485, 120);
  
  // show save icon
  shape(save);
  
  // show rectangles when hovering
  noFill();
  if (mouseX >= 317 && mouseX <= 393 && mouseY >= 543 && mouseY <= 623){
    rect(317,543,76,80);
  }
  else if (mouseX >= 462 && mouseX <= 538 && mouseY >= 543 && mouseY <= 623){
    rect(462,543,76,80);
  }
  else if (mouseX >= 609 && mouseX <= 685 && mouseY >= 543 && mouseY <= 623){
    rect(609,543,76,80); 
  }
  
  // ensure that the rectangles stay once a button is clicked
  if (exposure) {rect(317,543,76,80);}
  else if (saturat) {rect(462,543,76,80);}
  else if (contrast) {rect(609,543,76,80);}
}

void mouseClicked(){
  if (!imageConfirmed) return;
  // exposure button
  if (mouseX >= 317 && mouseX <= 393 && mouseY >= 543 && mouseY <= 623){
    exposure = true;
    saturat = false;
    contrast = false;
    x = round(map(exposureChange, -100, 100, 323, 673));
  }
  
  // saturation button
  else if (mouseX >= 462 && mouseX <= 538 && mouseY >= 543 && mouseY <= 623){
    exposure = false;
    saturat = true;
    contrast = false;
    x = round(map(satAmount, 0, 2, 323, 673));
  }
  
  // contrast button
  else if (mouseX >= 609 && mouseX <= 685 && mouseY >= 543 && mouseY <= 623){
    exposure = false;
    saturat = false;
    contrast = true;
    x = round(map(contrastAmount, 0, 2, 323, 673));
  }
  
  // slider
  if (mouseX >= 323 && mouseX <= 673 && mouseY >= 472 && mouseY <= 492){
    updateSlider();
  }
  
  // reset edits
  reset();
  
  // save image
  saveImg();
  
  // go back to select image page
  goBack();
}

void mouseDragged(){
  if (!imageConfirmed) return;
  if (mouseX >= 323 && mouseX <= 673 && mouseY >= 472 && mouseY <= 492) {
    updateSlider();
  }
}

void updateSlider() {
  if (!exposure && !saturat && !contrast) return;
  x = constrain(mouseX, 323, 673);
  if (exposure) exposureChange = map(x, 323, 673, -100, 100);
  else if (saturat) satAmount = map(x, 323, 673, 0, 2);
  else if (contrast) contrastAmount = map(x, 323, 673, 0, 2);
  applyEffects();
}
