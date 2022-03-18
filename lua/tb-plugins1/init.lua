local hello1 = require('tb-plugins.helloworld')
  local util = require('tb-plugins.utils')

  print("Initialize Helo plugin...")
  local generic = require('tb-plugins.generic')
  local keymap = require('tb-plugins.keymap')

  local dev = require('tb-plugins.developments')
  local layout = require('tb-plugins.layout')

  lvim.plugins = util.mergeTable(lvim.plugins, dev.plugins) 
  lvim.plugins = util.mergeTable(lvim.plugins, layout.plugins) 

  dev.load()
  layout.load()

  -- print(util.)

