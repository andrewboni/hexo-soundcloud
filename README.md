Original blog post here: http://www.andrewboni.com/2014/06/08/A-Soundcloud-tag-plugin-for-Hexo/

# About
This is a simple Hexo plugin that makes it easy to embed Soundcloud tracks.

# Installation / Usage
###1. Get the plugin via npm
```
npm install --save-dev hexo-soundcloud
```
###2. Add the plugin to `_config.yml`
```yaml
plugins:
  - hexo-soundcloud
```
###3. Add the tag markup to a post

```
{% soundcloud https://soundcloud.com/piercefulton/get-weird-018 visual %}
```
Note that the second parameter is optional and can be one of two things:

- `visual`
- `default`
- `visual` will use the newer, larger Soundcloud player, while ‘default’ (or simply leaving it blank) will default to the standard Soundcloud player.

# Examples
## Visual player
The following code brings up the visual player:
```
{% soundcloud https://soundcloud.com/porter-robinson/sea-of-voices visual %}
```

## Default player
The following code brings up the default player:
```
{% soundcloud https://soundcloud.com/porter-robinson/sad-machine %}
```
# Contributing
The source is located in `src/hexo-soundcloud.coffee`. There are two Grunt tasks defined in `Gruntfile.coffee`- one for watching the coffee source for changes & compiling, and one for minifying.

When working on the source file, run `grunt` to watch for changes.

When ready to minify, run `grunt build` to uglify `dist/hexo-soundcloud.js`.

# License
MIT
