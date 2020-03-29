# POMODORO

This is a simple script to manage your time using the [pomodoro technique](https://en.wikipedia.org/wiki/Pomodoro_Technique).

## Usage

Clone this repo:

```
$ git clone https://github.com/Calebe94/tinytools
```

You now can edit the file by editing the **PLAY** and **NOTIFIER** variables to match the packages you'd use to play audio and send notifications.

And you can edit the other variables or methods the way you want.

Then you can run **pomodoro** with the following command:

```
$ ./pomodoro -w -t 25
```

You can also check the usage by:

```
$ ./pomodoro -h
```

This single line command will perform an infinite loop between work and rest tasks:

```
$ while true; do ./pomodoro -w -t 25 && ./pomodoro -r -t 5; done
```

Or you can use a for loop:

```
$ for i in {1..5}; do ./pomodoro -w -t 25 && ./pomodoro -r -t 5; done
```

# Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> | 
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

# License

All software is covered under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).