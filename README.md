Original blog post here: http://www.andrewboni.com/2014/06/08/A-Soundcloud-tag-plugin-for-Hexo/

# About
This is a simple Hexo plugin that makes it easy to embed SoundCloud tracks.

# Usage
To install the plugin, simply add the `soundcloud.js` file to the `scripts/`folder within the root directory of your Hexo blog. Create a folder there, if one doesn't already exist.

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

{% soundcloud https://soundcloud.com/porter-robinson/sad-machine %}

