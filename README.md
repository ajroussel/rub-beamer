# RUB Beamer Theme

## Installation

### Install the custom RUB fonts

This theme (based on the [Focus theme][1]) takes advantage of XeLaTeX's ability (via `fontspec`) to use plain old TTF fonts to enable you to easily use the custom RUB fonts in your Beamer presentations.

First, install the `.ttf` RUB fonts as usual. (Put in either `~/.fonts` or `/usr/share/fonts`.)

To see what fonts `fontspec` can see and what names it uses:
```shell
  fc-list | grep Scala  # or whatever
  # just family names
  fc-list : family
```

### Installing the style files
Then you can either use the included makefile by running `make install` or complete these steps manually:

1. Find out where the `.sty` files should be installed:
```shell
  kpsewhich -var-value=TEXMFHOME
```
2. Make a directory there for these `.sty` files and copy them over. Probably you can use `~/texmf/tex/latex/` if the previous command does not produce a satisfying result.
3. Run `sudo texhash` so LaTeX will know that they're there.


## Building your presentation

In order to use this theme for your presentation you need to include this line in your header:
```latex
\usetheme{rubfocus}
```

This repository also contains a `latexmkrc` file. I highly recommend using this file to build your Beamer presentation. Once you place it in the folder with your `main.tex` file (what this file is called is configurable in the `latexmkrc` file), all you need to do is run `latexmk` and it will do the rest!

(Pro tip: Run `latexmk -pvc` and Latexmk will recompile your project whenever it detects changes. Neat!)

[1]: https://github.com/elauksap/focus-beamertheme


### Customize the footer
----------------------
The footer can be customized through the theme option _numbering_. By default, the footer will look like a progress bar. This option can be selected explicitly like this:
```latex
\usetheme[numbering=progressbar]{rubfocus}
```

Alternatively, a full bar with frame numbering can be selected:
```latex
\usetheme[numbering=fullbar]{rubfocus}
```

Or it can also be disabled entirely:
```latex
\usetheme[numbering=none]{rubfocus}
```


## License
This software is released under the [GNU GPL v3.0 License](https://www.gnu.org/licenses/gpl-3.0.en.html).


## Credits
Focus was initially created and designed by [Pasquale Africa](https://github.com/elauksap).

The following people deserve appreciation and acknowledgment for improving the template with
additions and modifications (in alphabetical order):

- Sebastian Friedl
- Benjamin Goldman

A more detailed contribution list is found [here](https://github.com/elauksap/focus-beamertheme/graphs/contributors).
