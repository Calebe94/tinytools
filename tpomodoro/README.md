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

And what if you want to clone your terminal? Well... you can use [**nohup**](https://www.computerhope.com/unix/unohup.htm) to inform the system to continue running it.

```
$ nohup pomodoro -r -t 10 &
```

You can display the elapsed time by running the folling command:

```
$ # Replace the $$ with the pomodoro PID
$ ps -p $$ -o etime
```

If you want to keep tracking the elapsed time you can do the follow command:

```
$ # Replace the $$ with the pomodoro PID
$ while true; do sleep 1 && echo -ne "$(ps -p $$ -o etime="")\r"; done
```

If you want to automatically track if **pomodoro** is running, you can do it by searching its **PID**.

```
$ ps -fu $USER| grep "sh ./pomodoro" | grep -v "grep" | awk '{print $2}'
```

# Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> | 
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

# License

All software is covered under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).
