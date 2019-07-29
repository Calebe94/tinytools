# GOES Dynamic Wallpaper

I'm using [GOES](https://www.star.nesdis.noaa.gov/GOES/) images to be my wallpaper, such as macOS Mojave's dynamic wallpaper.

![](.screenshots/2019-05-18_23-12.png)

The Geostationary Operational Environmental Satellite system (GOES), operated by the United States' National Oceanic and Atmospheric Administration (NOAA)'s National Environmental Satellite, Data, and Information Service division, supports weather forecasting, severe storm tracking, and meteorology research[[1]](https://en.wikipedia.org/wiki/Geostationary_Operational_Environmental_Satellite).

## Dependencies

* Python 3.x
* feh

## Usage

To run with default configuration (resolution of 339 pixels) run:

```
$ python3 goes_dynamic_wallpaper
```

You can also inform the resolution and the path you want to store the images.

``` 
$ python3 goes_dynamic_wallpaper -r 1808 -p path_where_to_store_images
```

This script doesn't persist images for too long because they can be huge files(greater than 72MB sometimes).

# Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | 
|:---------------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  |

# License

All software is covered under [MIT License](https://opensource.org/licenses/MIT).

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
