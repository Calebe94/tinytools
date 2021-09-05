# tnotes

A simple script to create and access [Markdown](https://www.markdownguide.org/) notes easily.

## Dependencies

* [python3](https://www.python.org/)

## Installation

To install `tnotes` you can edit the `Makefile` to match your local setup (`tnotes` is installed into the `/usr/local/bin` by default).

Afterwards enter the following command to install `tnotes` (if necessary as root).

```bash
sudo make install
```

To uninstall `tnotes`, just run:

```
sudo make uninstall
```

## Usage

`tnotes` can create, rename and delete notes.

We can do that you by using the options listed bellow:

* `-a`, `--add`, `add` `<path>`: add a note to the path informed, it creates a folder if it does not exists;

---
* `-p`, `--path`: informs the path where the notes will be (or are) being stored;
* `-a`, `--add` `<name>`: adds a new note with the title received as argument on the path informed with `--path`;
* `-s`, `--sub` `<subname>`: adds a subtitle received as argument in the note metadata of the note;
* `-t`, `--tags` `<tags>`: adds tags to the note metadata of the note;
* `-l`, `--list`: lists the notes in stored in the path informed with `--path`;
* `-r`, `--rename` `<name>` `<new name>`: rename note file withe the name informed as argument;
* `-d`, `--delete` `<name>`: deletes a note with the title received as argument on the path informed with `--path`;
---

### Examples:

In these examples we are assuming that your notes dir is `~/notes/`.

* To `add` a note without metadata:

```bash
$ tnotes --add "~/notes/test folder/test note.md"
```

It'll then create a `test folder` inside `~/notes/` folder.
After thar it will create a note named `test note.md` with `# test note` as content.

* To `add` a note with metadata:

```bash
$ tnotes --add "~/notes/test folder/test note.md"
```



```bash
$ tnotes --path ~/notes/ --add "Test Note" --sub "This is a Test" --tags "test, note, markdown"
~/notes/Test Note.md added!
```

Afther this you can add your content by editing the note with your favorite text editor.

* To `list` the notes:

```bash
$ tnotes --path ~/notes/ --list
Test Note.md
```

In this example the note metadata will be:

```bash
$ cat ~/notes/Test\ Note.md
---
title: "Test Note"
subtitle: "This is a Test"
date: "2021-03-18 23:10:21"
tags: test, note, markdown
---
```

* To `rename` a note:

```bash
$ tnotes --path notes/ --rename "Test Note.md" "New Note"
 renamed to New Note.
```

* To `delete` a note:

```bash
$ tnotes --path notes/ --delete "New Note"
notes/New Note deleted!
```

And that's it!

# Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> | 
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

# License

All software is covered under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).
