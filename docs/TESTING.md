# Validation

## Checks performed

The sketch was preprocessed using the installed Processing **4.4.1** Java-mode preprocessor and compiled using its bundled **Java 17** compiler and Processing core libraries.

A temporary Java harness also verified:

- All eight JPG assets decode and the bundled TrueType font loads.
- Neutral adjustments preserve the original pixel values.
- Exposure changes RGB values as expected.
- Zero saturation produces grayscale and zero contrast produces midpoint gray.
- Reapplying the same settings produces identical output without accumulating changes.
- Processing does not modify the original image copy.
- Reset restores the original pixels and neutral settings.
- Editor mouse actions are ignored while the gallery is active.
- Export produces a readable 400 × 300 PNG.

These checks ran outside the repository; generated classes and test exports are not project dependencies. Interactive rendering and mouse behavior in the Processing window still require the manual checks below.

## Manual smoke test

1. Open `photo_editor_application.pde` in Processing 4 in Java mode and run it.
2. Confirm that eight thumbnails appear and the font and icons render.
3. Click **select image** before choosing a photo. The sketch should stay in the gallery without an error.
4. Choose each photo in turn and confirm it opens in the editor.
5. Select each adjustment and move the slider in both directions. Leave it idle and confirm the image stops changing.
6. Switch between adjustments and confirm each retains its slider position and effect.
7. Click reset. Confirm the original image returns and settings become neutral.
8. Click save. Open `edited_image.png` from the sketch folder and confirm it matches the preview at 400 × 300, with no interface controls included.
9. Save again and confirm the same export file is replaced.
10. Go back, select another photo, and confirm edits from the previous photo do not carry over.

The eight source photos should remain unchanged throughout.
