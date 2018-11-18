###
Requires https://www.jetbrains.com/help/idea/command-line-formatter.html
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class IdeaFormatter extends Beautifier
  name: "Idea Formatter"
  link: "https://confluence.jetbrains.com/display/IDEADEV/Command-Line+Source+Code+Formatter"
  isPreInstalled: false

  options: {
    groovy: true
  }

  beautify: (text, language, options) ->
    @run("format.sh", [
      @tempFile("input", text)
      ])
