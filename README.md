# hbl
Simple command-line lexicon for Biblical Hebrew

## Installation
> Dependencies: `python3`, `python-pip` and `git`, Install them with `apt`, `pacman` or any other package manager.

```sh
git clone https://github.com/joonatanjak/hbl.git
cd hbl
sudo make install
```

Use `sudo make uninstall` to uninstall.
## Usage
```
usage: hbl [options] <word>

Look up the Strong's lexicon of a Hebrew word.
Options:
 -n, --number               Display the Strong's number.
 -u, --unicode              Display the word in unicode.
 -t, --transliteration      Display the transliteration.
 -p, --pronunciation        Display the pronunciation.
 -s, --strongs-definition   Display the Strong's definiton.
 -k, --kjv-definition       Display the KJV definition.
 -o, --origin               Display the origin of the word.
 -S, --strict               Output only, if the word has an exact match, otherwise exit(1).
 -q, --quiet                Only display the attributes. Each attribute will be seperated with a tab.
                            The order of each attribute is number, unicode, transliteration, pronunciation, strongs-definition, kjv-definition, origin.
 -d, --default              Select the first similar word without asking anything.
 -r, --rtl                  Reverse the Hebrew letters, in case your terminal does not support Right-to-Left languages.
 -h, --help                 Show this message

When no options are supplied the program will output the Strong's number, unicode, pronunciation, KJV definition, Strong's definition and origin.
Examples:
    Only output the KJV definition of אַח
        hbl -k אַח
    You can find some words using the rough transliteraion of it
        hbl adonay
```

## Issues
* If the Hebrew words appear reversed, your terminal probably does not support Right-to-Left text. You can try to use the `--rtl` flag, which just reverses the strings, as a workaround. Note that you won't be able to properly copy the Hebrew words in the output of the command then.

## Credits
Strong's Hebrew Dictionary by James Strong, 1890. Corrected and reformatted to XML by [Open Scriptures](https://github.com/openscriptures/HebrewLexicon). (CC BY 4.0)