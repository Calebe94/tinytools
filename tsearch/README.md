# tsearch

A simple tool to request web queries the way you want

tsearch lets you launch a web search through specified URL and web browser.

## Dependencies

* [tyaml](https://github.com/Calebe94/tinytools/tree/master/tyaml)

## Installation

To install `tsearch` you can edit the `Makefile` to match your local setup (`tsearch` is installed into the `/usr/local/bin` by default).

Afterwards enter the following command to install `tsearch` (if necessary as root).

```bash
sudo make install
```

To uninstall `tsearch`, just run:

```
sudo make uninstall
```

## Usage

`tsearch` can be used to search on web using search engines. We can do that by using the options listed below:

* `-t` `<term>`: term to search
* `-e` `<engine>`: set search engine
* `-p` `<program>`: set program to launch
* `-l` `<engine|program>`: list engines/programs available

## Examples

* tsearch always need at least a term (-t) declared to be searched:

```bash
$ tsearch -t "free software"
```

* tsearch has a default engine (duckduckgo) and browser (systems's xdg-open), but you can specify another engine:

```bash
$ tsearch -t "free software" -e stack_overflow
```

* Or program:

```bash
$ tsearch -t "free software" -p firefox
```

* To list all engines/programs options available:

```bash
$ tsearch -l engine
google
youtube
duckduckgo
netflix
stack_overflow
google_maps
translate
reddit
twitter
hackaday
```

* Or programs

```bash
$ tsearch -l program
firefox
qutebrowser
chrome
curl
system-default
```

* All engines and programs options can be found on `/etc/tinytools/params.yaml` and you can add new ones there:

```bash
engine:
  hackaday:
    query: https://hackaday.com/?s=TERM

program:
  brave:
    command: brave-browser
```

### dmenu launcher

tsearch also has a dmenu launcher, perfect for keymapping and make a search quickly while you navigate on you system.

```bash
dmenu_tsearch
```

# Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> | 
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

# License

All software is covered under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).
