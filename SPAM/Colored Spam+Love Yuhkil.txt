--Colored Spam+Love Vortex by Yuhkil


local delay = 6000 -- wait time message

local config = {
    {
        ["name"] = "yourname",
        ["password"] = "yourpassword",
        ["world"] = "yourworld",
        ["text"] = "wwwwww",

    },
    {
        --IF YOU WANT TO USE TWO BOT THEN FILL THIS ONE DOWN BELOW TOO
        ["name"] = "yourname",
        ["password"] = "yourpassword",
        ["world"] = "yourworld",
        ["text"] = "wwwwww",
    }
}





function spam(v1,v2)::start::;v1:set_action("connecting");while v1.status~=bot_status.connected  do local v12=0;while true do if (v12==(0 -0)) then v1:connect();sleep(10000);break;end end end v1:set_action("spamming");while true do if (v1.status~=bot_status.connected) then goto start;end local v13=Randomizer(v2);v1:say(v13);sleep(delay);v1:say("/love");sleep(2851 -851 );end end local v0={"1","2","3","4","6","7","8","9","0","o","p","b","c","#","@","$","w","q","e","r","t","a","s"};function Randomizer(v3)local v4=0 -0 ;local v5;while true do if (v4==(0 -0)) then v5=v0[math.random( #v0)];return "`"   .. v5   .. v3 ;end end end for v6,v7 in pairs(config) do local v8=0 + 0 ;local v9;local v10;local v11;while true do if (v8==(997 -(915 + 82))) then v9=v7['name'];v10=v7['password'];v8=2 -1 ;end if (v8==(1 + 0)) then v11=bot_manager.get_bot(v9);if (v11==nil) then local v17=0 -0 ;while true do if (v17==(1187 -(1069 + 118))) then print("adding bot "   .. v9 );v11=bot_manager.add_bot(v9,v10);break;end end end v8=2;end if (v8==(4 -2)) then create_thread(function()spam(v11,v7['text']);end);break;end end end
