# Processing Photo Editor

An interactive desktop photo editor built with **Processing (Java mode)** by **Dora Vrenezi**. Select one of eight sample photographs, adjust its exposure, saturation, and contrast, then reset or export the result.

The interface uses a minimal black-and-white design, a shared adjustment slider, and camera and toolbar icons drawn directly in code with `PShape`.

## Features

- Gallery with eight bundled sample photographs and selection highlighting.
- Exposure, saturation, and contrast adjustments with independent settings.
- Immediate preview when the slider changes.
- Reset to the unedited image or return to the gallery.
- PNG export at 400 × 300 pixels.

## Run locally

1. Install [Processing](https://processing.org/download). Use **Processing 4, Java mode**.
2. Download or clone this repository. Keep the project folder named `photo_editor_application` so it matches the main sketch filename. If downloading a ZIP, rename the extracted folder if it has a branch suffix such as `-main`.
3. Open `photo_editor_application.pde` in Processing. The other `.pde` files appear as tabs in the same sketch.
4. Click **Run** (the triangle button).

No additional Processing libraries, API keys, package manager, or separate font installation are required. Keep the `data/` folder beside the sketch files. Processing loads the bundled font directly from that folder.

## Controls

| Action | How to use it |
| --- | --- |
| Choose a photo | Click a gallery thumbnail, then **select image**. |
| Choose an adjustment | Click **exposure**, **saturation**, or **contrast** below the preview. |
| Adjust the image | Click or drag along the slider. Left decreases the selected setting; right increases it. The center is neutral. |
| Switch adjustments | Click another effect. Each effect retains its setting. |
| Reset | Click the circular arrow above the preview. |
| Save | Click the downward arrow above the preview. |
| Go back | Click the left arrow above the preview. Returning to the gallery discards the current edits. |

Saving writes `edited_image.png` to the sketch folder and prints its path in Processing's console. Each save **overwrites the previous export**. Move or rename an export to keep multiple results. Original JPG files are never overwritten.

## Project structure

```text
photo_editor_application/
├── photo_editor_application.pde  # Entry point, state, asset loading, draw loop
├── edit_image.pde                # Editor interface and mouse controls
├── effects.pde                   # Pixel processing for all three adjustments
├── select_image.pde              # Gallery and photo confirmation
├── shapes.pde                    # Camera logo and toolbar icons
├── top_buttons.pde               # Reset, save, and back actions
├── sketch.properties            # Main sketch filename
├── data/
│   ├── Questrial-Regular.ttf     # Interface font
│   ├── OFL-Questrial.txt         # Font copyright and license
│   └── upscaled-100_*.JPG        # Eight required sample photographs
├── docs/
│   ├── PUBLISHING.md             # GitHub publishing steps
│   └── TESTING.md                # Validation notes and manual checks
├── .gitignore
└── README.md
```

All six `.pde` files are part of one sketch; keep them together. `shapes.pde` creates the icons in code, so no SVGs or icon images are needed. `README.md` and `docs/` help visitors understand the project but are not required at runtime.

### Required sample images

These filenames are referenced in the main sketch. Preserve their spelling and uppercase `.JPG` extensions, especially on case-sensitive systems:

```text
upscaled-100_0217.JPG
upscaled-100_0297.JPG
upscaled-100_0351.JPG
upscaled-100_0385.JPG
upscaled-100_0393.JPG
upscaled-100_0436.JPG
upscaled-100_0434.JPG
upscaled-100_0445.JPG
```

To replace a sample photograph, place your JPG in `data/` and update the corresponding `loadImage(...)` filename in the main sketch, or use the existing filename. The gallery currently expects exactly eight images.

## How the adjustments work

Each slider change rebuilds the edited image from an untouched in-memory copy of the selected photo. Exposure adds an RGB brightness offset, saturation scales the HSB saturation component, and contrast scales RGB values around a midpoint of 128. Effects are applied in that order and channel values are constrained to their valid ranges.

The slider controls exposure from −100 to +100, saturation from 0 to 2, and contrast from 0 to 2. Switching tools moves the slider to that tool's saved value. Images are not repeatedly processed by the animation loop, so the preview stays stable when idle.

## Current limitations

- This is a sample-gallery editor; importing arbitrary photos through a file picker is not implemented.
- Photos are resized to 220 pixels wide at startup. Editing uses that resized copy, and the preview and PNG export stretch it to 400 × 300. Exports do not retain the source resolution or necessarily its aspect ratio.
- The window is fixed at 1000 × 700 pixels.
- There is no undo history or saved editing session.
- The bundled source photographs total approximately 87 MiB, so downloading the repository can take a little time.

Potential improvements include full-resolution editing, aspect-ratio-preserving previews, a file picker, and choosing an export filename.

## Credits and licensing

- **Code attribution:** Dora Vrenezi, as credited in the sketch source.
- **Font:** [Questrial](https://github.com/google/fonts/tree/main/ofl/questrial), copyright 2011 The Questrial Project Authors. The bundled font uses the SIL Open Font License 1.1; the full notice is in [data/OFL-Questrial.txt](data/OFL-Questrial.txt).
- **Framework:** [Processing](https://processing.org/).

A project-wide code license has not been selected. The font's license applies to the font; it does not license the sketch or sample photographs.

See [publishing instructions](docs/PUBLISHING.md) for uploading this project to GitHub and [testing notes](docs/TESTING.md) for the validation performed.
