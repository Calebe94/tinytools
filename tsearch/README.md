# tsearch

A simple tool to request web queries the way you want

tsearch lets you launch a web search through specified URL and web browser.

## Usage

### Command Line Interface
tsearch always need at least a term (-t) declared to be searched:
```
tsearch -t "free software"
```
tsearch has a default engine (duckduckgo) and browser (systems's xdg-open), but you can specify another engine:
```
tsearch -t "free software" -e stack_overflow
```
Or program:
```
tsearch -t "free software" -p firefox
```
To list all engines/programs options available:
```
tsearch -l engine
```
Or
```
tsearch -l program
```
All engines and programs options can be found on /bin/params.yaml and you can add new ones there:
```
engine:
  hackaday:
    query: https://hackaday.com/?s=TERM

program:
  brave:
    command: brave-browser
```
### dmenu launcher
tsearch also has a dmenu launcher, perfect for keymapping and make a search quickly while you navigate on you system.
 ```
dmenu_tsearch
```
