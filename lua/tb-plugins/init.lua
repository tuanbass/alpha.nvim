local hello1 = require('tb-plugins.helloworld')
  local util = require('tb-plugins.utils')

  print("Initialize Hello plugin...")
  -- local generic = require('tb-plugins.generic')
  -- local keymap = require('tb-plugins.keymap')
  -- local dev = require('tb-plugins.developments')
  -- local layout = require('tb-plugins.layout')
  -- local navi = require('tb-plugins.navigate')

  -- dev.load()
  -- layout.load()
  -- navi.load()
  -- generic.load()
  -- keymap.load()
  -- print("lvim plugins before "..util.toStr(lvim.plugins))
  -- print("layout plugins before "..util.toStr(layout.plugins))
  -- print("dev plugins before "..util.toStr(dev.plugins))
  
-- util.toStr2(lvim.plugins)
-- util.toStr2(dev.plugins)

  -- lvim.plugins = util.mergeList(lvim.plugins, dev.plugins) 
  -- lvim.plugins = util.mergeList(lvim.plugins, layout.plugins) 
  -- lvim.plugins = util.mergeList(lvim.plugins, navi.plugins) 
  -- lvim.plugins = util.mergeList(lvim.plugins, generic.plugins) 
  -- lvim.plugins = util.mergeList(lvim.plugins, keymap.plugins) 
return hello1

