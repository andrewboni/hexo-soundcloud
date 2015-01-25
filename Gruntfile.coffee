module.exports = (grunt) ->
  "use strict"
  
  require('time-grunt')(grunt) # Time our grunt tasks

  # Project configuration
  grunt.initConfig
    
    # Metadata
    pkg: grunt.file.readJSON("package.json")
    banner: "/*! <%= pkg.name %> - v<%= pkg.version %> - " + "<%= grunt.template.today(\"yyyy-mm-dd\") %>\n" + "<%= pkg.homepage ? \"* \" + pkg.homepage + \"\\n\" : \"\" %>" + "* Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author.name %>;" + " Licensed MIT */\n"
    
    # Task configuration
    uglify:
      options:
        banner: "<%= banner %>"

      dist:
        src: 'dist/hexo-soundcloud.js'
        dest: 'dist/hexo-soundcloud.min.js'

    watch:
      coffee:
        files: 'src/hexo-soundcloud.coffee'
        tasks: ["coffee:compile"]
        
    coffee:
      compile:
        files:
          'dist/hexo-soundcloud.js': 'src/hexo-soundcloud.coffee'

  require('load-grunt-tasks')(grunt)

  # Default task
  grunt.registerTask "default", [
    "coffee:compile"
    "watch:coffee"
  ]
  grunt.registerTask "build", [
    "coffee:compile"
    "uglify"
  ]
  return
