# Tiny GOES Dynamic Wallpaper

I'm using [GOES](https://www.star.nesdis.noaa.gov/GOES/) images to be my wallpaper, such as macOS Mojave's dynamic wallpaper.

![](https://cdn.star.nesdis.noaa.gov/GOES16/ABI/FD/GEOCOLOR/thumbnail.jpg)

The Geostationary Operational Environmental Satellite system (GOES), operated by the United States' National Oceanic and Atmospheric Administration (NOAA)'s National Environmental Satellite, Data, and Information Service division, supports weather forecasting, severe storm tracking, and meteorology research[[1]](https://en.wikipedia.org/wiki/Geostationary_Operational_Environmental_Satellite).

This script downloads one image every 10 minutes from GOES server, and applyes it as your wallpaper.

## Dependencies

* wget
* feh

## Usage

After installation you can change some configurations by editing a file placed in `/etc/tinytools/tgoeswall.conf`.

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

## Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> | 
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

## License

All software is covered under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

