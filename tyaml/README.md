# `tyaml`

A simple script to get values on a yaml file.

## Usage:
To simply list all the possible values and keys found in a yaml file, like this one:
```yaml
distros:
    debian:
        based_on: independent
        version: 10
        version_name: buster
        wiki: http://www.debian.org/doc/
    arch:
        based_on: independent
        version: rolling release
        wiki: https://wiki.archlinux.org/
    manjaro:
        based_on: Arch
        version: 20.2
        wiki: https://wiki.manjaro.org/
```
Just call tyaml followed by the yaml file
```bash
$ tyaml distros.yaml
```
All key paths are expressed by dot notation, followed by it's value
```bash
distros.debian.based_on:independent
distros.debian.version:9
distros.debian.version_name:buster
distros.debian.wiki: http://www.debian.org/doc/
distros.arch.based_on:independent
distros.arch.version:rolling release
distros.arch.wiki: https://wiki.archlinux.org/
distros.manjaro.based_on:Arch
distros.manjaro.version:20.2
distros.manjaro.wiki: https://wiki.manjaro.org/
```
And you can access any specific value `(-v)` by expressing its path
```bash
$ tyaml distros.yaml -v distros.debian.wiki
```
```
http://www.debian.org/doc/
```

tyaml also lists keys `(-k)` in a specific point of the yaml tree.

```bash
$ tyaml distros.yaml -k distros.debian  #you have to specify the full path
```
```
based_on
version
version_name
wiki
```

## Dependencies:
- awk

# Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> | 
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

# License

All software is covered under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).