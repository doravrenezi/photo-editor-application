// Dora Vrenezi
void selectImg(){
  background(255);
  strokeWeight(1);
  
  // Show images
  for (int i = 0; i < 8; i++) {
    int x = 50 + (i % 4) * 230;
    int y = (i < 4) ? 150 : 350;
    image(images[i], x, y);
  }

  // Select image
  if (mousePressed) {
    for (int i = 0; i < 8; i++) {
      int x = 50 + (i % 4) * 230;
      int y = (i < 4) ? 150 : 350;
      if (mouseX >= x && mouseX <= x + imgWidth &&
          mouseY >= y && mouseY <= y + images[i].height) {
        selectedImage = i;
      }
    }

  }

  // Draw border around selected image
  if (selectedImage != -1) {
    int x = 50 + (selectedImage % 4) * 230;
    int y = (selectedImage < 4) ? 150 : 350;
    noFill();
    stroke(0);
    strokeWeight(1);
    rect(x, y, imgWidth, images[selectedImage].height);
  }
  
 pushStyle();
   if (mouseX >= 400 && mouseX <= 600 && mouseY >= 580 && mouseY <= 640) {
    fill(0);           
    stroke(255);
    rect(400,580,200,60);
    fill(255);        
    textSize(20);
    text("select image", 440,615);
    if (mousePressed && selectedImage >= 0) {
        if (mouseX >= 400 && mouseX <= 600 && mouseY >= 580 && mouseY <= 640) {
            image = images[selectedImage].copy();  
            originalImage = images[selectedImage].copy();  
            clearAdjustments();
            imageConfirmed = true;
        }
    }
   }
   else {
    noFill();
    stroke(0);
    rect(400,580,200,60);
    fill(0);           
    textSize(20);
    text("select image", 440,615);
  }
 popStyle();
}
