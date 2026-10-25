// Dora Vrenezi
void clearAdjustments() {
  x = 498;
  exposureChange = 0;
  satAmount = 1;
  contrastAmount = 1;
  exposure = false;
  saturat = false;
  contrast = false;
}

void reset(){
  if (mouseX >= 468 && mouseY >= 63 && mouseX <= 528 && mouseY <= 123) {
    clearAdjustments();
    image = originalImage.copy();
  }
}

void saveImg(){
  if (mouseX >= 585 && mouseY >= 65 && mouseX <= 615 && mouseY <= 105) {
    // Save the image itself at the preview dimensions, without UI overlays.
    PImage editedImg = image.copy();
    editedImg.resize(400, 300);
    editedImg.save(sketchPath("edited_image.png"));
    println("Saved: " + sketchPath("edited_image.png"));
  }
}

void goBack() {
  if (mouseX >= 385 && mouseY >= 70 && mouseX <= 410 && mouseY <= 100) {
    selectedImage = -1;
    imageConfirmed = false;
    clearAdjustments();
  }
}
