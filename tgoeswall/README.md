# Tiny GOES Dynamic Wallpaper

I'm using [GOES](https://www.star.nesdis.noaa.gov/GOES/) images to be my wallpaper, such as macOS Mojave's dynamic wallpaper.

![](https://cdn.star.nesdis.noaa.gov/GOES16/ABI/FD/GEOCOLOR/thumbnail.jpg)

The Geostationary Operational Environmental Satellite system (GOES), operated by the United States' National Oceanic and Atmospheric Administration (NOAA)'s National Environmental Satellite, Data, and Information Service division, supports weather forecasting, severe storm tracking, and meteorology research[[1]](https://en.wikipedia.org/wiki/Geostationary_Operational_Environmental_Satellite).

This script downloads one image every 10 minutes from GOES server, and applyes it as your wallpaper.

To install this script, avoid doing it with `root`. Install it using `sudo`.

## Dependencies

* wget
* feh

## Instalation

To install `tgoeswall` you can edit the `Makefile` to match your local setup (`tgoeswall` is installed into the `/usr/local/bin` by default).

Afterwards enter the following command to install `tgoeswall` (if necessary as root).

```bash
sudo make install
```

After the installation you can enable `tgoeswall` to run as a service by running the following command (as user not as root):

```bash
tgoeswallctrl start
```

## Usage

After installation you can change some configurations of `tgoeswall` service by editing a file placed in `/etc/tinytools/tgoeswall.conf`.

The options available are:

* `path`: path that the `tgoeswall` service will use to download the GOES image(preferably `/tmp/`).
* `resolution`: resolution of the image to be downloaded, it can be `678`, `1808`, `5424` or `10848`.
* `feh_args`: args that will be used by `feh`. Check `feh` manpage to see the options available.

The default options can be seen as follows:

```yaml
path:/tmp/tgoeswall/
resolution: 1808
feh_args: --bg-max
```

This script doesn't persist images for too long because they can be huge files(greater than 72MB sometimes).

You can `start|stop` the service with `systemctl`: 

```bash
$ systemctl --user start tgoeswall
$ systemctl --user stop tgoeswall
```

Also you can check the script log with `journalctl`:

```bash
$ journalctl --user -fu tgoeswall
```

You can use tgoeswall to download GOES images into your current folder by running the following command:

```bash
tgoeswall -r 1808
```

Where `-r` is the image resolution. You can always check the available commands by running:

```bash
tgoeswall -h
```

## Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> | 
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

## License

All software is covered under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

