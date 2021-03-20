# tprogbar

**tprogbar** is a simple commandline tool to help you make your our ASCII progress bar.

## Installation

To install `tprogbar` you can edit the `Makefile` to match your local setup (`tprogbar` is installed into the `/usr/local/bin` by default).

Afterwards enter the following command to install `tprogbar` (if necessary as root).

```bash
sudo make install
```

To uninstall `tprogbar`, just run:

```
sudo make uninstall
```

## Usage

tprogbar can create help you to create simple ASCII progress bar with the options listed bellow:

* `-v` `<value>`: informs the value to be displayed on progress bar;
* `-l` `<value>`: sets the lowest value (default: 0);
* `-g` `<value>`: sets the greates value (default: 100);
* `-s` `<step>`: sets the step value of the progress bar (default: 5);
* `-b` `<string>`: string format of the bar - should contain %s and no spaces between characters (default [%s]);
* `-p` `<char>`: sets the progress character (avoid "\*");
* `-m` `char`: sets the mask character of the progress bar (avoid "\*").

## Examples

It can be used with **xsetroot** to display your volume and screen brightness as a status bar notification.

```bash
# Audio volume at 50%
$ xsetroot -name "audio: $(tprogbar -v 50)"
```

An example using every option listed above:

* Sets the lowest value to `50`;
* Sets the highest value to `900`;
* Sets the value to `90`;
* Change string format to `"{%s}"`;
* Change mask character to `"="`
* Change progress character to `"+"`

```bash
$ tprogbar -v 90 -l 50 -g 900 -s 50 -b "{%s}" -p "+" -m "="
{+================}
```

# Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> | 
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

# License

All software is covered under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).
