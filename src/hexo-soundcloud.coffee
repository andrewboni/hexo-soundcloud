hexo.extend.tag.register "soundcloud", (args) ->
  songUrl = args[0]
  type = args[1] or 'default'
  soundcloudUrl = "https://w.soundcloud.com/player/?url=" + (encodeURIComponent(songUrl))
  switch type
    when 'visual' then options = 'visual=true'
    when 'default' then options = 'color=ff5500&show_artwork=true'
    else 'Error: Soundcloud player type option needs to be either <b>visual</b> or <b>default</b>.'
  "<iframe width='100%' height='160' scrolling='no' frameborder='no' src='#{soundcloudUrl}&auto_play=false&hide_related=true&show_comments=true&show_user=true&show_reposts=false&#{options}'></iframe>"

