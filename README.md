# Graham Sans - an example font repository

This repository is designed to show how I typically organise a font project. There's not much here at the moment, but the plan is to adopt the Unified Font Repository standard - see https://github.com/raphaelbastide/Unified-Font-Repository/
## The font

Graham Sans is a font I released as freeware way back in 2005. I look back on it now and cringe, but hey - it may be of use to someone as a starting point for a typeface that's actually good.

It comes in two weights, Regular and Bold, and the only changes I've made are to combine the single weights into one Fontlab 7 file and make the contours interpolatable.

## Building the fonts

The fonts are stored as a FontLab 7 file and also as a UFO DesignSpace file. To create a set of fonts usable in applications (.ttf, .otf etc),
you'll need to run the build process. It's a little convoluted but it works for now, at least on a Mac. I'd like to tidy it up or move
everything to Python before blogging about it.

Anyway. You'll need Python installed. I've tested this with v3.9.

The best way of running Python is to create a virtual environment. Open a terminal in this folder and then execute the following commands in sequence:

```
python3 -m venv .
source ./bin/activate
pip3 install fontparts fontmake gftools
```

Then run the bash script in the `scripts` folder:

```
source scripts/buildFontsFromSource.sh
```

Fonts in ttf, otf, variable, woff and woff2 will be available in the `build` folder.

## More information

Feel free to visit https://andrewgraham.dev, where I (very) occasionally blog about font-related topics.
