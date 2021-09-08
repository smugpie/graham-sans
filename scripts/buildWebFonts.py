import os
from fontTools.ttLib import TTFont

print('Building webfonts...')
fontFormats = ['woff', 'woff2']

inDirectory = '../build/otf'
outDirectory = '../build/webfonts'

if not os.path.isdir(outDirectory):
    os.mkdir(outDirectory)

for filename in os.listdir(inDirectory):
    if filename.endswith(".otf"): 
        font = TTFont(os.path.join(inDirectory, filename))
        for format in fontFormats:
            font.save(os.path.join(outDirectory, filename.replace('.otf', '.' + format)))
