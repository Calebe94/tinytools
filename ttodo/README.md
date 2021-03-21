# ttodo

It is a simple script to create and manage your todo list.

## Dependencies

* [python3](https://www.python.org/)

## Installation

To install `ttodo` you can edit the `Makefile` to match your local setup (`ttodo` is installed into the `/usr/local/bin` by default).

Afterwards enter the following command to install `ttodo` (if necessary as root).

```bash
sudo make install
```

To uninstall `ttodo`, just run:

```
sudo make uninstall
```

## Usage

`ttodo` can create a todo activity, mark them as done or undo them if you want.

We can do that by using the options listed bellow:

* `-a`, `--add` `<name>`: adds a new todo with the title received as argument;
* `-d`, `--do` `<name>`:  marks the todo activity as done;
* `-u`, `--undo` `<namw>`:  makes a done activity as todo;
* `-lt`, `--listtodo`: lists todo activities;
* `-ld`, `--listdone`: lists done activities;
* `-h`, `--help`: show the usage message.

### Examples:

The default folder where the `todo` and `done` activities are stored is `~/.ttodo/`.

* To `add` a todo:

```bash
$ ttodo --add "This is a Test"
Added This is a Test
```

* To `list` the todo activities registered:

```bash
$ ttodo --listtodo
This is a Test
```

* To mark a todo activity as `done`:

```bash
$ ttodo --do "This is a Test"
This is a Test marked as done!
```

* To `list` the done activities registered:

```bash
$ ttodo --listdone
This is a Test
```

* If you want to `undo` a `done` activity:

```bash
$ ttodo --undo "This is a Test"
This is a Test marked as undone!
$ ttodo --listtodo
This is a Test
```

And that's it!

# Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> | 
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

# License

All software is covered under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).
