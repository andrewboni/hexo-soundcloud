hexo.extend.tag.register("soundcloud", function(args) {
    var options, songUrl, soundcloudUrl, type;
    songUrl = args[0];
    type = args[1] || "default";
    soundcloudUrl = "https://w.soundcloud.com/player/?url=" + (encodeURIComponent(songUrl));
    if (type === "visual") {
        options = "visual=true";
    } else if (type === "default") {
        options = "color=ff5500&show_artwork=true";
    } else {
        return "Error: Soundcloud player type option needs to be either <b>visual</b> or <b>default</b>.";
    }
    return "<iframe width='100%' height='160' scrolling='no' frameborder='no' src='" + soundcloudUrl + "&auto_play=false&hide_related=true&show_comments=true&show_user=true&show_reposts=false&" + options + "'></iframe>";
});
