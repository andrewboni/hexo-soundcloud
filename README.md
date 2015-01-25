Original blog post here: http://www.andrewboni.com/2014/06/08/A-Soundcloud-tag-plugin-for-Hexo/

# About
This is a simple Hexo plugin that makes it easy to embed SoundCloud tracks.

# Installation / Usage
Get the plugin via NPM:
```
npm install hexo-soundcloud
```

Then, simply add the `soundcloud.js` file to the `scripts/`folder within the root directory of your Hexo blog. If a `scripts/` folder doesn't exist, create one in the root directory.

Then, simply add this markup:

```
{% soundcloud https://soundcloud.com/only-the-beat/3lau-electric-daisy-carnival-edc-new-york-2014 visual %}
```
Note that the second parameter is optional and can be one of two things:

- ‘visual’
- ‘default’
- ‘Visual’ will use the newer, larger Soundcloud player, while ‘default’ or simply leaving it blank will default to the standard Soundcloud player.

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
# License
MIT
