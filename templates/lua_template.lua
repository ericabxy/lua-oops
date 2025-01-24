#!/usr/bin/env lua
local parent_s = false
local templates_t = {}
--collect all templates and any parent class
for _, path in ipairs({...}) do
  print('checking: ', path)
  if string.sub(path, -4) == '.lua' then
    print('found superclass: ', path)
    local name = string.match(path, '^(.+)%.')
    parent_s = name
  elseif string.sub(path, -9) == '.template' then
    print('found template: ', path)
    table.insert(templates_t, path)
  end
end
--format each template with optional parent class
for _, path in ipairs(templates_t) do
  local module_s = string.match(path, '^(.+)%.')
  local class_s = string.gsub(
    module_s,
    '(%a)(%w*%W*)',
    function (a, b)
      return string.upper(a) .. string.gsub(b, '%W', '')
    end
  )
  print('module: ', module_s)
  print('class name: ', class_s)
  print('parent: ', parent_s)
  io.input(path)
  local template = io.read('*all')
  template = string.gsub(template, '{modname}', module_s)
  template = string.gsub(template, '{classname}', class_s)
  if parent_s then
    template = string.gsub(template, '{parent}', parent_s)
  end
  io.output(module_s .. '.lua')
  print('writing module: ', module_s .. '.lua')
  io.write(template)
end
io.close()
