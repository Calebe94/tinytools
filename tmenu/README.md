# `tmenu`
#### A simple dmenu wrapper to create custom menus

You use dmenu and want to build menus in a straight forward way? What about even having submenus? tmenu may help.

tmenu always need a yaml file that express the custom menu structure, like this one:

```yaml
quick_menu:
  network: x-terminal-emulator -e nmtui
  screenshot:
    selection: scrot -s '/home/user/%Y-%m-%d-%H_%M_%S.jpg'
    fullscreen: scrot '/home/user/%Y-%m-%d-%H_%M_%S.jpg'
  power:
    shutdown: shutdown -h now
    reboot: reboot
    lock: slock
  dotfiles:
    vim: vim $HOME/.vimrc
    bash: vim $HOME/.bashrc
    tmenus: vim $HOME/tmenus
  another_option: notify-send "you get the idea"
```
```
tmenu quick_menu.yaml
```


# Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> | 
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

# License

All software is covered under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).
