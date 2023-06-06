local item_id = 5666 -- item id you want to use for pnb
local delay = 200 -- break & place delay

local config = {
    {
        ["name"] = "", 
        ["password"] = "",
        ["world"] = ""
    },
    {
	--IF YOU WANT TO USE TWO BOT THEN FILL THIS ONE DOWN BELOW TOO
        ["name"] = "", 
        ["password"] = "",
        ["world"] = ""
    },
}

function walk_to(v0,v1,v2)local v3=1065 -(68 + 997) ;local v4=v0:find_path(v1,v2);for v20,v21 in pairs(v4) do v3=v3 + (1271 -(226 + 1044)) ;if (((v3%(30 -23))==(117 -(32 + 85))) or (v3== #v4)) then v0:set_pos_at_tile(v21.x,v21.y);sleep(197 + 3 );end end end function collect_item(v5,v6)local v7=v5:get_inventory();while v7:get_item_count(v6)<1  do v5:collect_items();sleep(1000);end end function collect_cycle(v8)while true do local v22=0;while true do if (v22==(0 + 0)) then v8:collect_item(957 -(892 + 65) );sleep(2385 -1385 );break;end end end end function farm_cycle(v9)local v10=v9:get_local_player();local v11=v9:get_world();local v12=v9:get_inventory();while true do local v23=0 -0 ;while true do if ((1 -0)==v23) then sleep(1000);break;end if (v23==(350 -(87 + 263))) then while v12:has_item(item_id) do local v26=v10:get_tile_pos();local v27=v11:get_tile(v26.x,v26.y-(182 -(67 + 113)) );if (v27.foreground==item_id) then v9:punch_tile(v27.pos.x,v27.pos.y);else v9:place_tile(item_id,v27.pos.x,v27.pos.y);end sleep(delay);if (v12:get_item_count(item_id)==(1 + 0)) then break;end end collect_item(v9,item_id);v23=2 -1 ;end end end end function yuhkil(v13,v14)local v15=0;while true do if (v15==(0 + 0)) then v14=v14:upper();while v13.status~=bot_status.connected  do local v24=0 -0 ;while true do if (v24==0) then if (v13.status==bot_status.disconnected) then v13:connect();end sleep(7952 -(802 + 150) );break;end end end v15=1;end if (v15==(2 -1)) then while (v13:get_world()==nil) or (v13:get_world().name~=v14)  do local v25=0;while true do if (v25==(0 -0)) then v13:warp(v14);sleep(2184 + 816 );break;end end end create_thread(function()collect_cycle(v13);end);v15=999 -(915 + 82) ;end if (v15==(5 -3)) then farm_cycle(v13);break;end end end for v16,v17 in pairs(config) do local v18=0;local v19;while true do if (v18==0) then v19=bot_manager.add_bot(v17.name,v17.password);create_thread(function()yuhkil(v19,v17.world);end);break;end end end
