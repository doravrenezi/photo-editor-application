// Dora Vrenezi
// Rebuild from the original only when an adjustment changes. This prevents
// effects accumulating every frame and keeps all three settings independent.
void applyEffects() {
  image = originalImage.copy();
  image.loadPixels();
  colorMode(RGB, 255);
  for (int i = 0; i < image.pixels.length; i++) {
    color c = image.pixels[i];
    float r = constrain(red(c) + exposureChange, 0, 255);
    float g = constrain(green(c) + exposureChange, 0, 255);
    float b = constrain(blue(c) + exposureChange, 0, 255);

    // HSB uses a 0–255 range for all three components here.
    color adjusted = color(r, g, b);
    if (satAmount != 1) {
      colorMode(HSB, 255);
      adjusted = color(hue(adjusted),
        constrain(saturation(adjusted) * satAmount, 0, 255), brightness(adjusted));
      colorMode(RGB, 255);
    }

    r = 128 + (red(adjusted) - 128) * contrastAmount;
    g = 128 + (green(adjusted) - 128) * contrastAmount;
    b = 128 + (blue(adjusted) - 128) * contrastAmount;
    image.pixels[i] = color(constrain(r, 0, 255),
      constrain(g, 0, 255), constrain(b, 0, 255));
  }
  image.updatePixels();
}
