# `tyaml`

A simple script to get values on a yaml file.

## Usage:
To simply list all the possible values and keys found in a yaml file, like this one:
```yaml
parentKey:
    child1: some value
    child2: foo
    child3: bar
        childAgain: 4
        anotherChild: more value
    child3: sumthing
```
Just call tyaml followed by the file:
```bash
$ tyaml your-file.yaml
```
To all keys paths be expressed by dot notation, followed by it's value
```bash
parentKey.child1:some value
parentKey.child2:foo
parentKey.child3:bar
parentKey.child3.childAgain:4
parentKey.child3.anotherChild:more value
parentKey.child3:sumthing
```
And you can access any specific value `(-v)` by expressing its path
```bash
$ tyaml your-file.yaml -v parentKey.child3
```

tyaml also lists keys `(-k)` in a specific point of the yaml tree.

```bash
$ tyaml your-file.yaml -k parentKey.child3 #you have to specify the full path
```
```
childAgain
anotherChild
```

## Dependencies:
- awk

# Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> | 
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

# License

All software is covered under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).