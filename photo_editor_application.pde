// Dora Vrenezi
//
// Interactive Processing-based photo editor that lets users select a sample
// image, adjust exposure, saturation, and contrast, then reset or export the
// edited result.


// Set all global variables
PShape logo;
PShape exp;
PShape back,reset,save;
int selectedImage = -1;
int x = 498; // initialize the slider to be in the middle
int imgWidth = 220;
boolean imageConfirmed = false;
boolean exposure = false;
boolean saturat = false;
boolean contrast = false;
PImage image;
float exposureChange = 0;
float satAmount = 1;
float contrastAmount = 1;
PImage[] images = new PImage[8]; 
PImage originalImage;

void setup() {
  size(1000,700);
  background(255);
  
  createShapes(); // call the create shapes function that has multiple PShapes
  shape(logo); // display logo
  
  
  // Load images
  images[0] = loadImage("upscaled-100_0217.JPG");
  images[1] = loadImage("upscaled-100_0297.JPG");
  images[2] = loadImage("upscaled-100_0351.JPG");
  images[3] = loadImage("upscaled-100_0385.JPG");
  images[4] = loadImage("upscaled-100_0393.JPG");
  images[5] = loadImage("upscaled-100_0436.JPG");
  images[6] = loadImage("upscaled-100_0434.JPG");
  images[7] = loadImage("upscaled-100_0445.JPG");

  // resize images
  for (int i = 0; i < images.length; i++) {
    if (images[i] == null) {
      throw new RuntimeException("Missing or unreadable sample image " + (i + 1)
        + ". Keep all eight JPG files in the data folder.");
    }
    images[i].resize(imgWidth, 0);
  }
  
  // set font
  PFont myfont = createFont("Questrial-Regular.ttf", 100);
  textFont(myfont);
  
}

void draw() {
  // Brief camera splash before the image selection screen.
  if (millis() < 700) {
    background(255);
    shape(logo);
  } else if (!imageConfirmed) {
    selectImg();
  } else {
    editImg();
  }
}
