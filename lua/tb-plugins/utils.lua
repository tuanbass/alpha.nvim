
local M = {}
local inspect = require("tb-plugins.libs.inspect")
-- merge 2 table 
function M.mergeTable( table1, table2)
  if (table1 == nil) then
    return table2
  end
  if (table2 == nil) then
    return table1
  end
  for k,v in pairs(table2) do table1[k] = v end
  return table1
 --   for k,v in pairs(table2) do
 --       if type(v) == "table" then
 --           if type(table1[k] or false) == "table" then
 --               M.mergeTable(table1[k] or {}, table2[k] or {})
 --           else
 --               table1[k] = table2[k]
 --           end
 --       else
 --           table1[k] = v
 --       end
 --   end
 --   return table1

end
function M.mergeList( list1, list2)
  -- print("mergelist")
  if (list1 == nil) then
    return list2
  end
  if (list2 == nil) then
    return list1
  end
  for k,v in pairs(list2) do 
    list1[#list1 + 1] = v 
  end
  return list1
 --   for k,v in pairs(table2) do
 --       if type(v) == "table" then
 --           if type(table1[k] or false) == "table" then
 --               M.mergeTable(table1[k] or {}, table2[k] or {})
 --           else
 --               table1[k] = table2[k]
 --           end
 --       else
 --           table1[k] = v
 --       end
 --   end
 --   return table1

end


function M.toStr(table) 
  print(table)  
  return inspect(table)
end
function M.toStr2(table) 
  for k,v in pairs(table) do print (string.format("k=%s v=%s", k, v)) end
end

return M
