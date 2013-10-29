module.exports = (grunt) ->

  @initConfig

    express:
      all:
        options:
          port: 8181
          hostname: '127.0.0.1'
          bases: __dirname
          livereload: true

    open:
      all:
        path: 'http://localhost:<%= express.all.options.port %>'

    watch:
      options:
        livereload: true

  @loadNpmTasks 'grunt-contrib-watch'
  @loadNpmTasks 'grunt-open'
  @loadNpmTasks 'grunt-express'

  @registerTask 'server',  ['express', 'open', 'watch']
  @registerTask 'default', ['server']
