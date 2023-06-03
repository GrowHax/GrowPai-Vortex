--Yuhkil's v1 Vortex beta PNB
--NOTE: Make sure the break area is blocked so the bot doesn't auto collect your gems !!!

local item_id = 2 -- item id you want to use for pnb
local delay = 200 -- break & place delay

local config = {
    {
        ["name"] = "yourbotname", 
        ["password"] = "yourbotpassword",
        ["world"] = "yourworldname"
    },
}


function walk_to(v0,v1,v2)local v3=87 -(48 + 39) ;local v4=v0:find_path(v1,v2);for v19,v20 in pairs(v4) do v3=v3 + (210 -(133 + 76)) ;if (((v3%7)==(1655 -(1594 + 61))) or (v3== #v4)) then local v24=1661 -(108 + 1553) ;while true do if (v24==(513 -(232 + 281))) then v0:set_pos_at_tile(v20.x,v20.y);sleep(1453 -(976 + 277) );break;end end end end end function collect_item(v5,v6)local v7=957 -(892 + 65) ;local v8;while true do if (v7==(0 -0)) then v8=v5:get_inventory();while v8:get_item_count(v6)<(1 -0)  do local v25=0 -0 ;while true do if (v25==(350 -(87 + 263))) then v5:collect_items();sleep(1000);break;end end end break;end end end function farm_cycle(v9)local v10=v9:get_local_player();local v11=v9:get_world();local v12=v9:get_inventory();while true do local v21=180 -(67 + 113) ;while true do if (v21==1) then collect_item(v9,item_id);sleep(10000);break;end if (v21==(0 + 0)) then while v12:has_item(item_id) do local v26=v10:get_tile_pos();local v27=v11:get_tile(v26.x,v26.y-(4 -2) );if (v27.foreground==item_id) then v9:punch_tile(v27.pos.x,v27.pos.y);else v9:place_tile(item_id,v27.pos.x,v27.pos.y);end sleep(delay);v9:collect_items();if (v12:get_item_count(item_id)==(1 + 0)) then break;end end for v28,v29 in pairs(v11:get_tiles()) do if ((v29.foreground==item_id) and v29:is_tree_ready()) then walk_to(v9,v29.pos.x,v29.pos.y);v9:punch_tile(v29.pos.x,v29.pos.y);sleep(delay);v9:collect_items();if (v9:get_inventory():get_item_count(item_id)==(3 -2)) then break;end end end v21=953 -(802 + 150) ;end end end end function kirai(v13,v14)v14=v14:upper();while v13.status~=bot_status.connected  do local v22=0 -0 ;while true do if (v22==(0 -0)) then if (v13.status==bot_status.disconnected) then v13:connect();end sleep(728 + 272 );break;end end end while (v13:get_world()==nil) or (v13:get_world().name~=v14)  do local v23=997 -(915 + 82) ;while true do if (v23==0) then v13:warp(v14);sleep(8494 -5494 );break;end end end farm_cycle(v13);end for v15,v16 in pairs(config) do local v17=0;local v18;while true do if (v17==0) then v18=bot_manager.add_bot(v16.name,v16.password);create_thread(function()kirai(v18,v16.world);end);break;end end end