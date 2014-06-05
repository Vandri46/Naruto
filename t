[33mcommit 027a13211cf092481d7c38eaf6af1cdf138dc45f[m
Author: vandri46 <vandri46@gmail.com>
Date:   Thu Jun 5 22:27:27 2014 +0700

    test

[1mdiff --git a/.bowerrc b/.bowerrc[m
[1mnew file mode 100644[m
[1mindex 0000000..de76f41[m
[1m--- /dev/null[m
[1m+++ b/.bowerrc[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "directory": "src/bower_components"[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/.editorconfig b/.editorconfig[m
[1mnew file mode 100644[m
[1mindex 0000000..0fab135[m
[1m--- /dev/null[m
[1m+++ b/.editorconfig[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32m# EditorConfig helps developers define and maintain consistent[m
[32m+[m[32m# coding styles between different editors and IDEs[m
[32m+[m[32m# editorconfig.org[m
[32m+[m
[32m+[m[32mroot = true[m
[32m+[m
[32m+[m
[32m+[m[32m[*][m
[32m+[m
[32m+[m[32m# Change these settings to your own preference[m
[32m+[m[32mindent_style = space[m
[32m+[m[32mindent_size = 2[m
[32m+[m
[32m+[m[32m# It's recommended to keep these unchanged[m
[32m+[m[32mend_of_line = lf[m
[32m+[m[32mcharset = utf-8[m
[32m+[m[32mtrim_trailing_whitespace = true[m
[32m+[m[32minsert_final_newline = true[m
[32m+[m
[32m+[m[32m[*.jade][m
[32m+[m[32mtrim_trailing_whitespace = false[m
[32m+[m
[32m+[m[32m[*.md][m
[32m+[m[32mtrim_trailing_whitespace = false[m
\ No newline at end of file[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..2cf0aa6[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32mnode_modules[m
[32m+[m[32msrc/bower_components[m
[32m+[m[32mpublic[m
[32m+[m[32m.tmp[m
\ No newline at end of file[m
[1mdiff --git a/.jshintrc b/.jshintrc[m
[1mnew file mode 100644[m
[1mindex 0000000..cfe9933[m
[1m--- /dev/null[m
[1m+++ b/.jshintrc[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "bitwise": true,[m
[32m+[m[32m    "camelcase": true,[m
[32m+[m[32m    "curly": true,[m
[32m+[m[32m    "eqeqeq": true,[m
[32m+[m[32m    "immed": true,[m
[32m+[m[32m    "indent": 2,[m
[32m+[m[32m    "latedef": true,[m
[32m+[m[32m    "newcap": true,[m
[32m+[m[32m    "noarg": true,[m
[32m+[m[32m    "undef": true,[m
[32m+[m[32m    "unused": true,[m
[32m+[m[32m    "strict": true,[m
[32m+[m[32m    "trailing": true,[m
[32m+[m[32m    "smarttabs": true,[m
[32m+[m[32m    "globals": {[m
[32m+[m[32m        "bespoke": true[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Gruntfile.js b/Gruntfile.js[m
[1mnew file mode 100644[m
[1mindex 0000000..148aa11[m
[1m--- /dev/null[m
[1m+++ b/Gruntfile.js[m
[36m@@ -0,0 +1,175 @@[m
[32m+[m[32m// Generated on 2014-06-05 using generator-bespoke v0.8.0[m
[32m+[m
[32m+[m[32mmodule.exports = function(grunt) {[m
[32m+[m
[32m+[m[32m  var config = {[m
[32m+[m[32m    clean: {[m
[32m+[m[32m      public: 'public/**/*'[m
[32m+[m[32m    },[m
[32m+[m[32m    jade: {[m
[32m+[m[32m      src: {[m
[32m+[m[32m        files: [{[m
[32m+[m[32m          expand: true,[m
[32m+[m[32m          cwd: 'src/',[m
[32m+[m[32m          src: '**/*.jade',[m
[32m+[m[32m          dest: 'public/',[m
[32m+[m[32m          ext: '.html'[m
[32m+[m[32m        }],[m
[32m+[m[32m        options: {[m
[32m+[m[32m          pretty: true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    stylus: {[m
[32m+[m[32m      src: {[m
[32m+[m[32m        files: [{[m
[32m+[m[32m          expand: true,[m
[32m+[m[32m          cwd: 'src/styles/',[m
[32m+[m[32m          src: '**/*.styl',[m
[32m+[m[32m          dest: 'public/styles/',[m
[32m+[m[32m          ext: '.css'[m
[32m+[m[32m        }],[m
[32m+[m[32m        options: {[m
[32m+[m[32m          compress: false[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    coffee: {[m
[32m+[m[32m      src: {[m
[32m+[m[32m        files: [{[m
[32m+[m[32m          expand: true,[m
[32m+[m[32m          cwd: 'src/scripts/',[m
[32m+[m[32m          src: '**/*.coffee',[m
[32m+[m[32m          dest: 'public/scripts/',[m
[32m+[m[32m          ext: '.js'[m
[32m+[m[32m        }][m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    copy: {[m
[32m+[m[32m      src: {[m
[32m+[m[32m        files: [{[m
[32m+[m[32m          expand: true,[m
[32m+[m[32m          cwd: 'src/',[m
[32m+[m[32m          src: [[m
[32m+[m[32m            '**/*',[m
[32m+[m[32m            '!<%= jade.src.files[0].src %>',[m
[32m+[m[32m            '!<%= stylus.src.files[0].src %>',[m
[32m+[m[32m            '!<%= coffee.src.files[0].src %>'[m
[32m+[m[32m          ],[m
[32m+[m[32m          dest: 'public/'[m
[32m+[m[32m        }][m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    watch: {[m
[32m+[m[32m      jade: {[m
[32m+[m[32m        files: '<%= jade.src.files[0].cwd + jade.src.files[0].src %>',[m
[32m+[m[32m        tasks: 'jade'[m
[32m+[m[32m      },[m
[32m+[m[32m      stylus: {[m
[32m+[m[32m        files: '<%= stylus.src.files[0].cwd + stylus.src.files[0].src %>',[m
[32m+[m[32m        tasks: 'stylus'[m
[32m+[m[32m      },[m
[32m+[m[32m      coffee: {[m
[32m+[m[32m        files: '<%= coffee.src.files[0].cwd + coffee.src.files[0].src %>',[m
[32m+[m[32m        tasks: 'coffee'[m
[32m+[m[32m      },[m
[32m+[m[32m      copy: {[m
[32m+[m[32m        files: [[m
[32m+[m[32m          '<%= copy.src.files[0].cwd + copy.src.files[0].src[0] %>',[m
[32m+[m[32m          '!<%= jade.src.files[0].cwd + jade.src.files[0].src %>',[m
[32m+[m[32m          '!<%= stylus.src.files[0].cwd + stylus.src.files[0].src %>',[m
[32m+[m[32m          '!<%= coffee.src.files[0].cwd + coffee.src.files[0].src %>'[m
[32m+[m[32m        ],[m
[32m+[m[32m        tasks: 'copy:src'[m
[32m+[m[32m      },[m
[32m+[m[32m      public: {[m
[32m+[m[32m        files: [[m
[32m+[m[32m          'public/**/*',[m
[32m+[m[32m          '!public/bower_components/**/*'[m
[32m+[m[32m        ],[m
[32m+[m[32m        options: {[m
[32m+[m[32m          livereload: 35729[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    connect: {[m
[32m+[m[32m      server: {[m
[32m+[m[32m        options: {[m
[32m+[m[32m          port: 8000,[m
[32m+[m[32m          hostname: '*', // Remove this line if you only want the server available locally[m
[32m+[m[32m          base: 'public',[m
[32m+[m[32m          keepalive: true,[m
[32m+[m[32m          middleware: function(connect, options) {[m
[32m+[m[32m            return [[m
[32m+[m[32m              require('connect-livereload')({[m
[32m+[m[32m                port: config.watch.public.options.livereload[m
[32m+[m[32m              }),[m
[32m+[m[32m              connect.static(options.base)[m
[32m+[m[32m            ];[m
[32m+[m[32m          }[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    open: {[m
[32m+[m[32m      server: {[m
[32m+[m[32m        path: 'http://localhost:<%= connect.server.options.port %>'[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    concurrent: {[m
[32m+[m[32m      compile: {[m
[32m+[m[32m        tasks: [[m
[32m+[m[32m          'jade',[m
[32m+[m[32m          'stylus',[m
[32m+[m[32m          'coffee',[m
[32m+[m[32m          'copy'[m
[32m+[m[32m        ],[m
[32m+[m[32m        options: {[m
[32m+[m[32m          logConcurrentOutput: false[m
[32m+[m[32m        }[m
[32m+[m[32m      },[m
[32m+[m[32m      server: {[m
[32m+[m[32m        tasks: [[m
[32m+[m[32m          'connect',[m
[32m+[m[32m          'open',[m
[32m+[m[32m          'watch:jade',[m
[32m+[m[32m          'watch:stylus',[m
[32m+[m[32m          'watch:coffee',[m
[32m+[m[