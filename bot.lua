discordia = require("discordia") --Add discordia to the file
client = discordia.Client() --Use the client in discordia
config = require("Surplux/config") --Grab the config file, located in [luvit path]/Surplux
help = require("Surplux/help")
images = require("Surplux/images")
guildData = {} --Guild data for stuff, duh.
userData = {} --Data for users.
char = {}
authors = {
	"115529446370443265",
	"155703014923960320"
}
function getAuthors(id)
	for i, k in pairs(authors) do
	if id == k then
			return true
			end
		end
	return false
	end
client:on("messageCreate", function(msg) --Run whenever a new message is sent :D
  if getAuthors(msg.author.id) then if msg.content == "!//update" then
	os.execute("git pull https://github.com/Wintermourn/surpluxbot")
    os.execute("luvit.exe bot")
    os.execute("exit")
  end
end
  hlpcmd = false
local cmd, arg = string.match(msg.content, '(%S+) (.*)') --splits the message into a command and one argument

if guildData[msg.guild.id] then
  if guildData[msg.guild.id].lvUp == nil then guildData[msg.guild.id].lvUp = config.lvUpDefault end
else

  if io.open("Surplux/Guilds/".. msg.guild.id ..".lua","r") then

    guildData[msg.guild.id] = require("Surplux/Guilds/".. msg.guild.id)

  else

    guildData[msg.guild.id] = {
      prefix = config.prefixDefault,
      lvUp = config.lvUpDefault
    }

  end

end
if userData[msg.author.id] then
else

  if io.open("Surplux/UDat/".. msg.author.id ..".lua","r") then

    userData[msg.author.id] = require("Surplux/UDat/".. msg.author.id)

  else

    userData[msg.author.id] = {
      curren = 0,level=0,xp=0,rxp=35
    }

  end

end

if char[msg.author.id] then
else

  if io.open("Surplux/Char/".. msg.author.id ..".lua","r") then

    char[msg.author.id] = require("Surplux/Char/".. msg.author.id)

  else

    char[msg.author.id] = {
      name="Unnamed Character",level=0,xp=0,rxp=50,weight=25,bust=70,rear=68,weighbonus=0,bustbonus=0,rearbonus=0
    }

  end

end
for i, k in pairs(msg.mentionedUsers) do
if userData[k.id] then
else
  if io.open("Surplux/UDat/".. k.id ..".lua","r") then
    userData[k.id] = require("Surplux/UDat/".. k.id)
  else
    userData[k.id] = {
      curren = 0,level=0,xp=0,rxp=35
    }
  end
end
if char[k.id] then
else
  if io.open("Surplux/Char/".. k.id ..".lua","r") then
    char[k.id] = require("Surplux/Char/".. k.id)
  else
    char[k.id] = {
      name="Unnamed Character",level=0,xp=0,rxp=50,weight=25,bust=70,rear=68,weighbonus=0,bustbonus=0,rearbonus=0
    }
  end

end end
if not char[msg.author.id].lotion then char[msg.author.id].lotion = 0 char[msg.author.id].lottime  = 0 end
if char[msg.author.id].lottime then if os.time(t) - char[msg.author.id].lottime - 120 >= 0 then char[msg.author.id].lotion = 0 end end
if char[msg.author.id].title == nil then char[msg.author.id].title = "Normal" end
if char[msg.author.id].bust >= 87 and char[msg.author.id].flagbust1 ~= 1 then char[msg.author.id].title = "Busty" char[msg.author.id].flagbust1 = 1 end
if char[msg.author.id].bust >= 100 and char[msg.author.id].flagbust2 ~= 1 then char[msg.author.id].title = "Squishy" char[msg.author.id].flagbust2 = 1 end
if char[msg.author.id].bust >= 120 and char[msg.author.id].flagbust3 ~= 1 then char[msg.author.id].title = "Large Chested" char[msg.author.id].flagbust3 = 1 end
if char[msg.author.id].bust >= 150 and char[msg.author.id].flagbust4 ~= 1 then char[msg.author.id].title = "Massive Chested" char[msg.author.id].flagbust4 = 1 end
if char[msg.author.id].bust >= 200 and char[msg.author.id].flagbust5 ~= 1 then char[msg.author.id].title = "Titty Monster" char[msg.author.id].flagbust5 = 1 end
if char[msg.author.id].bust >= 500 and char[msg.author.id].flagbust6 ~= 1 then char[msg.author.id].title = "Titty Goliath" char[msg.author.id].flagbust6 = 1 end
if char[msg.author.id].bust >= 2000 and char[msg.author.id].flagbust7 ~= 1 then char[msg.author.id].title = "Titty Goddess" char[msg.author.id].flagbust7 = 1 end
if char[msg.author.id].bust >= 9999 and char[msg.author.id].flagbust8 ~= 1 then char[msg.author.id].title = "Titty Deity" char[msg.author.id].flagbust8 = 1 end
if char[msg.author.id].weight >= 40 and char[msg.author.id].flagweigh1 ~= 1 then char[msg.author.id].title = "Chubby" char[msg.author.id].flagweigh1 = 1 end
if char[msg.author.id].weight >= 100 and char[msg.author.id].flagweigh2 ~= 1 then char[msg.author.id].title = "Fat" char[msg.author.id].flagweigh2 = 1 end
if char[msg.author.id].weight >= 300 and char[msg.author.id].flagweigh3 ~= 1 then char[msg.author.id].title = "Massive" char[msg.author.id].flagweigh3 = 1 end
if char[msg.author.id].weight >= 800 and char[msg.author.id].flagweigh4 ~= 1 then char[msg.author.id].title = "Humongous" char[msg.author.id].flagweigh4 = 1 end
if char[msg.author.id].weight >= 1400 and char[msg.author.id].flagweigh5 ~= 1 then char[msg.author.id].title = "Gigantic" char[msg.author.id].flagweigh5 = 1 end
if char[msg.author.id].weight >= 4100 and char[msg.author.id].flagweigh6 ~= 1 then char[msg.author.id].title = "Monsterous" char[msg.author.id].flagweigh6 = 1 end
if char[msg.author.id].weight >= 9999 and char[msg.author.id].flagweigh7 ~= 1 then char[msg.author.id].title = "Belly Titan" char[msg.author.id].flagweigh7 = 1 end
if char[msg.author.id].weight >= 39999 and char[msg.author.id].flagweigh8 ~= 1 then char[msg.author.id].title = "Belly Goddess" char[msg.author.id].flagweigh8 = 1 end
if char[msg.author.id].rear >= 80 and char[msg.author.id].flagrear1 ~= 1 then char[msg.author.id].title = "Round-ended" char[msg.author.id].flagrear1 = 1 end
if char[msg.author.id].rear >= 100 and char[msg.author.id].flagrear2 ~= 1 then char[msg.author.id].title = "Squishy-bottomed" char[msg.author.id].flagrear2 = 1 end
if char[msg.author.id].rear >= 130 and char[msg.author.id].flagrear3 ~= 1 then char[msg.author.id].title = "Large Assed" char[msg.author.id].flagrear3 = 1 end
if char[msg.author.id].rear >= 180 and char[msg.author.id].flagrear4 ~= 1 then char[msg.author.id].title = "Massive-reared" char[msg.author.id].flagrear4 = 1 end
if char[msg.author.id].rear >= 350 and char[msg.author.id].flagrear5 ~= 1 then char[msg.author.id].title = "Ass Giant" char[msg.author.id].flagrear5 = 1 end
if char[msg.author.id].rear >= 610 and char[msg.author.id].flagrear6 ~= 1 then char[msg.author.id].title = "Ass Titan" char[msg.author.id].flagrear6 = 1 end
if char[msg.author.id].rear >= 1450 and char[msg.author.id].flagrear7 ~= 1 then char[msg.author.id].title = "Ass Goddess" char[msg.author.id].flagrear7 = 1 end
if char[msg.author.id].rear >= 3500 and char[msg.author.id].flagrear8 ~= 1 then char[msg.author.id].title = "Ass Deity" char[msg.author.id].flagrear8 = 1 end
if char[msg.author.id].flagrear8 == 1 and char[msg.author.id].flagbust8 == 1 and char[msg.author.id].flagweigh8 == 1 and char[msg.author.id].flagsuper1 ~= 1 then
  char[msg.author.id].title = "Massive Squishy Blob" char[msg.author.id].flagsuper1 = 1 end
  if char[msg.author.id].rear >= 5000 and char[msg.author.id].weight >= 60000 and char[msg.author.id].bust >= 29999 and char[msg.author.id].flagsuper2 ~= 1 then
    char[msg.author.id].title = "Humongous Squishy Blob" char[msg.author.id].flagsuper2 = 1 end
    if char[msg.author.id].rear >= 8000 and char[msg.author.id].weight >= 130000 and char[msg.author.id].bust >= 79999 and char[msg.author.id].flagsuper3 ~= 1 then
      char[msg.author.id].title = "Omega Squishy Blob" char[msg.author.id].flagsuper3 = 1 end
if userData[msg.author.id].ntag == nil then userData[msg.author.id].ntag = "- no tag" end
  userData[msg.author.id].curren = userData[msg.author.id].curren + math.floor((math.random(0,1)+math.random(0,1)+math.random(0,1)+userData[msg.author.id].level)/4)
    if userData[msg.author.id].msgtimexp == nil or userData[msg.author.id].msgtimexp < os.time(t)-5 then
      userData[msg.author.id].xp=userData[msg.author.id].xp+math.random(1,5)
      userData[msg.author.id].msgtimexp = os.time(t)
    end
    if userData[msg.author.id].xp >= userData[msg.author.id].rxp then
      userData[msg.author.id].xp = userData[msg.author.id].xp - userData[msg.author.id].rxp
      userData[msg.author.id].level = userData[msg.author.id].level + 1
      if userData[msg.author.id].level < 10 then
      userData[msg.author.id].rxp = math.ceil(userData[msg.author.id].rxp*1.15)
    else
      userData[msg.author.id].rxp = userData[msg.author.id].rxp +20
    end
      if guildData[msg.guild.id].lvUp then
        msg.channel:send("LEVEL UP!\n"..
        msg.author.tag .." has reached level "..userData[msg.author.id].level..".")
      end
     end

  pfx = guildData[msg.guild.id].prefix
  if msg.author.bot == false then --Checks if the user is a robot

    if msg.content == pfx .."work" then

        if userData[msg.author.id].msgtimework == nil or userData[msg.author.id].msgtimework < os.time(t)-60 then
          earnings = math.random(1,3 + userData[msg.author.id].level)
          userData[msg.author.id].curren=userData[msg.author.id].curren+ earnings
          userData[msg.author.id].msgtimework = os.time(t)
          msg.channel:send("You did an odd job and earned ".. earnings .." Curren!")
        else
          msg.channel:send("You need to wait ".. math.abs(os.time(t)-userData[msg.author.id].msgtimework-60).." more seconds!")
        end

    end
    if cmd == pfx .."test" then
      msg.channel:send("Hello world!")
    end

    if cmd == pfx .."hug" or  string.lower(msg.content) == pfx .."hug" then
			for i, k in pairs(msg.mentionedUsers) do mentioned = k end

if mentioned then if mentioned.tag ~= msg.author.tag then
						local msg = msg.channel:send({embed = {color = 0x00ff00,type = "rich",fields = {{
name = "Hey ".. mentioned.tag ..", ".. msg.author.tag .." hugged you!",value = "_ _"}},
							thumbnail = {
							url=images.hug[math.random(1,#images.hug)],
							height=150,width=150
						}
					}}) else local msg = msg.channel:send({embed = {color = 0x111111,type = "rich",fields = {{
name = "Oh no...",value = "_ _"}},
							thumbnail = {
							url=images.hugalone[math.random(1,#images.hugalone)],
							height=150,width=150
						}
					}})
end
else local msg = msg.channel:send({embed = {color = 0x111111,type = "rich",fields = {{
name = "Oh no...",value = "_ _"}},
	thumbnail = {
	url=images.hugalone[math.random(1,#images.hugalone)],
	height=150,width=150
}
}})
end

end

    if msg.channel.nsfw then

      if msg.content == pfx.."upgrade" then
        msg.channel:send("You can upgrade 3 things: \nWeight Gain Rate (`"..pfx.."upgrade weight`)   Cost:".. char[msg.author.id].weighbonus*15+5 .."\nBust Growth (`"..pfx.."upgrade bust`)   Cost:".. char[msg.author.id].bustbonus*15+5 ..
        "\nWaist Growth (`"..pfx.."upgrade rear`)   Cost:".. char[msg.author.id].rearbonus*15+5)
  end

  if msg.content == pfx.."upgrade weight" then
      if userData[msg.author.id].curren >= char[msg.author.id].weighbonus*15+5 then
        userData[msg.author.id].curren = userData[msg.author.id].curren - char[msg.author.id].weighbonus*15+5
        char[msg.author.id].weighbonus = char[msg.author.id].weighbonus + 1
        msg.channel:send("Weight Gain Rate increased by 1 (".. char[msg.author.id].weighbonus .." total)!")
      else
      msg.channel:send("Insufficient Curren!")
      end
    end

      if msg.content == pfx.."upgrade bust" then
          if userData[msg.author.id].curren >= char[msg.author.id].bustbonus*15+5 then
            userData[msg.author.id].curren = userData[msg.author.id].curren - char[msg.author.id].bustbonus*15+5
            char[msg.author.id].bustbonus = char[msg.author.id].bustbonus + 1
            msg.channel:send("Bust Growth increased by 1 (".. char[msg.author.id].bustbonus .." total)!")
          else
          msg.channel:send("Insufficient Curren!")
          end
        end
          if msg.content == pfx.."upgrade rear" then
              if userData[msg.author.id].curren >= char[msg.author.id].rearbonus*15+5 then
                userData[msg.author.id].curren = userData[msg.author.id].curren - char[msg.author.id].rearbonus*15+5
                char[msg.author.id].rearbonus = char[msg.author.id].rearbonus + 1
                msg.channel:send("Waist Growth increased by 1 (".. char[msg.author.id].rearbonus .." total)!")
              else
              msg.channel:send("Insufficient Curren!")
              end
            end
      if msg.content == pfx.."char" then
        msg.channel:send("```AsciiDoc\n*"..
  char[msg.author.id].name .."* - ".. char[msg.author.id].title .."\n"..[[
=====================================
Level ]].. char[msg.author.id].level .."\n"..
  char[msg.author.id].xp.."/"..char[msg.author.id].rxp.." XP\nWeight (Fat): ".. char[msg.author.id].weight .." Pounds\nBust: "..
  char[msg.author.id].bust .."cm\nWaist: "..char[msg.author.id].rear .."cm```")
      end
      if cmd == pfx.."char" and msg.mentionedUsers.first then if userData[msg.mentionedUsers.first.id] then
        msg.channel:send("```AsciiDoc\n*"..
  char[msg.mentionedUsers.first.id].name .."* - ".. char[msg.mentionedUsers.first.id].title .."\n"..[[
=====================================
Level ]].. char[msg.mentionedUsers.first.id].level .."\n"..
  char[msg.mentionedUsers.first.id].xp.."/"..char[msg.mentionedUsers.first.id].rxp.." XP\nWeight (Fat): ".. char[msg.mentionedUsers.first.id].weight .." Pounds\nBust: "..
  char[msg.mentionedUsers.first.id].bust .."cm\nWaist: "..char[msg.mentionedUsers.first.id].rear .."cm```")
  end end

      if msg.content == pfx .."eat" then
        if userData[msg.author.id].aan == nil or userData[msg.author.id].aan < os.time(t)-5 then
          userData[msg.author.id].aan = os.time(t)
        local inc = ((math.random(1+char[msg.author.id].weighbonus,2*char[msg.author.id].weighbonus+5)+char[msg.author.id].level*5)/10)*(char[msg.author.id].lotion+1)
        char[msg.author.id].weight = char[msg.author.id].weight + inc
        char[msg.author.id].xp = char[msg.author.id].xp + math.ceil(inc)
        msg.channel:send(char[msg.author.id].name .."'s weight went up by ".. inc .." pounds!")
      else
        msg.channel:send("You need to wait ".. math.abs(os.time(t)-userData[msg.author.id].aan-5).." more seconds!")
      end
      end

          if cmd == pfx .."feed" and msg.mentionedUsers.first then
            if msg.mentionedUsers.first.id ~= msg.author.id then
            if userData[msg.author.id].aan == nil or userData[msg.author.id].aan < os.time(t)-20 then
              userData[msg.author.id].aan = os.time(t)
            local inc = ((math.random(1+char[msg.author.id].weighbonus,2*char[msg.author.id].weighbonus+5)+char[msg.author.id].level*5)/10)*(char[msg.mentionedUsers.first.id].lotion+1)
            char[msg.mentionedUsers.first.id].weight = char[msg.mentionedUsers.first.id].weight + inc
            char[msg.author.id].xp = char[msg.author.id].xp + math.ceil(inc/2)
            char[msg.mentionedUsers.first.id].xp = char[msg.mentionedUsers.first.id].xp + math.ceil(inc)
            msg.channel:send(char[msg.mentionedUsers.first.id].name .."'s weight went up by ".. inc .." pounds!")
            else
              msg.channel:send("You need to wait ".. math.abs(os.time(t)-userData[msg.author.id].aan-20).." more seconds!")
          end
          end
          end

              if cmd == pfx .."bust" and msg.mentionedUsers.first then
                if msg.mentionedUsers.first.id ~= msg.author.id then
                if userData[msg.author.id].ees == nil or userData[msg.author.id].ees < os.time(t)-20 then
                  userData[msg.author.id].ees = os.time(t)
                local inc = ((math.random(1+char[msg.author.id].bustbonus,2*char[msg.author.id].bustbonus+5)+char[msg.author.id].level*5)/50)*(char[msg.mentionedUsers.first.id].lotion+1)
                char[msg.mentionedUsers.first.id].bust = char[msg.mentionedUsers.first.id].bust + inc
                char[msg.author.id].xp = char[msg.author.id].xp + math.ceil(inc/2)
                char[msg.mentionedUsers.first.id].xp = char[msg.mentionedUsers.first.id].xp + math.ceil(inc)
                msg.channel:send(char[msg.mentionedUsers.first.id].name .."'s bust size went up by ".. inc .." centimeters!")
                else
                  msg.channel:send("You need to wait ".. math.abs(os.time(t)-userData[msg.author.id].ees-20).." more seconds!")
              end
              end
              end

                  if cmd == pfx .."waist" and msg.mentionedUsers.first then
                    if msg.mentionedUsers.first.id ~= msg.author.id then
                    if userData[msg.author.id].lak == nil or userData[msg.author.id].lak < os.time(t)-20 then
                      userData[msg.author.id].lak = os.time(t)
                    local inc = ((math.random(1+char[msg.author.id].rearbonus,2*char[msg.author.id].rearbonus+5)+char[msg.author.id].level*5)/50)*(char[msg.mentionedUsers.first.id].lotion+1)
                    char[msg.mentionedUsers.first.id].rear = char[msg.mentionedUsers.first.id].rear + inc
                    char[msg.author.id].xp = char[msg.author.id].xp + math.ceil(inc/2)
                    char[msg.mentionedUsers.first.id].xp = char[msg.mentionedUsers.first.id].xp + math.ceil(inc)
                    msg.channel:send(char[msg.mentionedUsers.first.id].name .."'s waist size went up by ".. inc .." centimeters!")
                    else
                      msg.channel:send("You need to wait ".. math.abs(os.time(t)-userData[msg.author.id].ees-20).." more seconds!")
                  end
                  end
                  end
      if msg.content == pfx .."bust" then
        if userData[msg.author.id].ees == nil or userData[msg.author.id].ees < os.time(t)-5 then
          userData[msg.author.id].ees = os.time(t)
        local inc = ((math.random(1+char[msg.author.id].bustbonus,2*char[msg.author.id].bustbonus+5)+char[msg.author.id].level*5)/50)*(char[msg.author.id].lotion+1)
        char[msg.author.id].bust = char[msg.author.id].bust + (5*inc)
        char[msg.author.id].xp = char[msg.author.id].xp + math.ceil(inc)
        msg.channel:send(char[msg.author.id].name .."'s bust size went up by ".. inc .." centimeters!")
      else
        msg.channel:send("You need to wait ".. math.abs(os.time(t)-userData[msg.author.id].ees-5).." more seconds!")
      end
      end
      if msg.content == pfx .."waist" then
        if userData[msg.author.id].lak == nil or userData[msg.author.id].lak < os.time(t)-5 then
          userData[msg.author.id].lak = os.time(t)
        local inc = ((math.random(1+char[msg.author.id].rearbonus,2*char[msg.author.id].rearbonus+5)+char[msg.author.id].level*5)/50)*(char[msg.author.id].lotion+1)
        char[msg.author.id].rear = char[msg.author.id].rear + (5*inc)
        char[msg.author.id].xp = char[msg.author.id].xp + math.ceil(inc)
        msg.channel:send(char[msg.author.id].name .."'s waist size went up by ".. inc .." centimeters!")
      else
        msg.channel:send("You need to wait ".. math.abs(os.time(t)-userData[msg.author.id].lak-5).." more seconds!")
      end
      end

      if msg.content == pfx.. "lotion" then
        if char[msg.author.id].lotion == nil or os.time(t) - char[msg.author.id].lottime - (60*15) >= 0 then
          msg.channel:send("You somehow covered ".. char[msg.author.id].name .." in lotion, doubling size increases for the next 2 minutes!")
          char[msg.author.id].lottime = os.time(t)
          char[msg.author.id].lotion = 1
        else
          msg.channel:send("You can't use this for the next ".. math.abs(os.time(t) - char[msg.author.id].lottime - (60*15)) .. " seconds.")
        end
      end
      if cmd == pfx.."helpnsfw" then hlpcmd = true elseif msg.content == pfx.."helpnsfw" then hlpcmd = true
      end
      if hlpcmd == true then page = nil
        if arg then
          if tonumber(arg) then page = tonumber(arg) end
      else page = 1 end
        if page then
          if page > #help.nsfw then page = #help.nsfw end
           msg.channel:send({embed={
          title="Help Menu",type="rich",fields=help.nsfw[page], footer = {
            text = "Page "..page.."/".. #help.nsfw
          }
        }})

        end end

    end

    if msg.content == pfx.."stats" then
      msg.channel:send("```AsciiDoc\n*"..
msg.author.tag..[[* ]].. userData[msg.author.id].ntag .."\n"..[[
=====================================
Level ]].. userData[msg.author.id].level .."\n"..
userData[msg.author.id].xp.."/"..userData[msg.author.id].rxp.." XP\n".. userData[msg.author.id].curren .."$```")
    end
    if cmd == pfx.."stats" and userData[arg] then
      msg.channel:send("```AsciiDoc\n"..
arg..[[\n
=====================================
Level ]].. userData[arg].level .."\n"..
userData[arg].xp.."/"..userData[arg].rxp.." XP\n".. userData[arg].curren .."$```")
    end
    if cmd == pfx.."stats" and msg.mentionedUsers.first then if userData[msg.mentionedUsers.first.id] then
      msg.channel:send("```AsciiDoc\n*"..
msg.mentionedUsers.first.tag ..[[* ]].. userData[msg.mentionedUsers.first.id].ntag .."\n"..[[
=====================================
Level ]].. userData[msg.mentionedUsers.first.id].level .."\n"..
userData[msg.mentionedUsers.first.id].xp.."/"..userData[msg.mentionedUsers.first.id].rxp.." XP\n".. userData[msg.mentionedUsers.first.id].curren .."$```")
end end

if cmd == pfx.."echo" then msg.channel:send(arg) end
if cmd == pfx.."echow" then str = arg
while string.find(str,"l") do str = string.gsub(str,"l","w") end
while string.find(str,"r") do str = string.gsub(str,"r","w") end
while string.find(str,"L") do str = string.gsub(str,"L","W") end
while string.find(str,"R") do str = string.gsub(str,"R","W") end
while string.find(str,"th") do str = string.gsub(str,"th","d") end
while string.find(str,"Th") do str = string.gsub(str,"Th","D") end
while string.find(str,"I") do str = string.gsub(str,"I","Ah") end
msg.channel:send(str) end
if cmd == pfx.."settag" and userData[msg.author.id].level >= 5 then
  if string.find(arg,"'") then msg.channel:send("Unable to change tag, contains a '.") else
  userData[msg.author.id].ntag = arg
end
elseif cmd == pfx.."settag" then msg.channel:send("Unable to change tag, user level too low (Less than 5).")
end
if cmd == pfx.."setname" then
  if string.find(arg,"'") then msg.channel:send("Unable to change name, contains a '.") else
  char[msg.author.id].name = arg
end
end
    if cmd == "//srplxexp" and getAuthors(msg.author.id) then
      local a1, a2 = string.match(arg, '(%S+) (.*)')
      aa = io.open("Surplux/Exports/".. a2 ..".lua", "w") --Gunky save data garbage from here
      io.output(aa)
      ee= "--export from user ".. msg.mentionedUsers.first.tag .."(".. msg.mentionedUsers.first.id ..") by user ".. msg.author.tag .."\n"
      for i, k in pairs(char[msg.mentionedUsers.first.id]) do
      if type(k) ~= "table" then
        if type(k) ~= "string" then
          if type(k) ~= "boolean" then
      ee = ee .."ret.".. i .." = ".. k .."\n"
      elseif k == true then ee = ee .. "ret.".. i .."= true"
      elseif k == false then ee = ee .. "ret.".. i .."= false" end
      else
      ee = ee .."ret.".. i .." = '".. k .."'\n"
      end
      else
      ee = ee .."ret.".. i .." = {\n"
      for c, v in pairs(k) do
        if type(v) ~= "string" then
      ee = ee .."".. c .." = ".. v ..",\n"
      else
      ee = ee .."".. c .." = '".. v .."',\n"
      end
      end
      ee = ee .."}\n"
      end
      end
      io.write("ret = {} ".. ee .."\nreturn ret")
      io.close() --to here
    end
    if cmd == pfx.."donate" and msg.mentionedUsers.first.id then
      if userData[msg.author.id].curren and userData[msg.mentionedUsers.first.id] then
        local a1, a2 = string.match(arg, '(%S+) (.*)')
        if userData[msg.author.id].curren >= tonumber(a2) and tonumber(a2) > 0 then
          userData[msg.author.id].curren = userData[msg.author.id].curren - tonumber(a2)
            userData[msg.mentionedUsers.first.id].curren = userData[msg.mentionedUsers.first.id].curren + tonumber(a2)
            msg.channel:send("Successfully gave ".. msg.mentionedUsers.first.name .." ".. a2 .." Curren!")
            aa = io.open("Surplux/UDat/".. msg.mentionedUsers.first.id ..".lua", "w") --Gunky save data garbage from here
            io.output(aa)
            ee= ""
            for i, k in pairs(userData[msg.mentionedUsers.first.id]) do
            if type(k) ~= "table" then
              if type(k) ~= "string" then
                if type(k) ~= "boolean" then
            ee = ee .."ret.".. i .." = ".. k .."\n"
            elseif k == true then ee = ee .. "ret.".. i .."= true"
            elseif k == false then ee = ee .. "ret.".. i .."= false" end
            else
            ee = ee .."ret.".. i .." = '".. k .."'\n"
            end
            else
            ee = ee .."ret.".. i .." = {\n"
            for c, v in pairs(k) do
              if type(v) ~= "string" then
            ee = ee .."".. c .." = ".. v ..",\n"
            else
            ee = ee .."".. c .." = '".. v .."',\n"
            end
            end
            ee = ee .."}\n"
            end
            end
            io.write("ret = {} ".. ee .."\nreturn ret")
            io.close() --to here
        end
      end
    end
    if cmd == "<@528007481876807700>" and msg.author.id == msg.guild.owner.id then
      local a1, a2 = string.match(arg, '(%S+) (.*)')
      if arg == "guilddat" then
        str = ""
        for i, k in pairs(guildData[msg.guild.id]) do
          if type(k) ~= "boolean" then
          str = str .."**"..i.." :** `".. k .."`\n"
        elseif k == true then
        str = str .."**"..i.." :** true\n"
      elseif k == false then
      str = str .."**"..i.." :** false\n"
    end
        end
        msg.channel:send(str)
      end
      if a1 == "prefixset" then
        guildData[msg.guild.id].prefix = a2
        msg.channel:send("Prefix changed to ".. a2)
      end
      if arg == "levelupmessage" then
        if guildData[msg.guild.id].lvUp == false then
      msg.channel:send("Level Up Message Enabled")
          guildData[msg.guild.id].lvUp = true else
        msg.channel:send("Level Up Message Disabled")
        guildData[msg.guild.id].lvUp = false end
      end
    end

    if cmd == pfx.."help" then hlpcmd = true elseif msg.content == pfx.."help" then hlpcmd = true
    end
    if hlpcmd == true then page = nil cmd = nil
      if arg then
        if tonumber(arg) then page = tonumber(arg)
      else
        cmd = string.lower(arg) end
    else page = 1 end
      if page then
        if page > #help.pages then page = #help.pages end
         msg.channel:send({embed={
        title="Help Menu",type="rich",fields=help.pages[page], footer = {
          text = "Page "..page.."/".. #help.pages
        }
      }}) else

        if help.cmds[cmd] then
          msg.channel:send({embed={
          title="Help Menu",type="rich",fields=help.cmds[cmd]
        }})
        end

      end end

  end


  if char[msg.author.id].xp >= char[msg.author.id].rxp then
    while char[msg.author.id].xp >= char[msg.author.id].rxp do
    char[msg.author.id].xp = char[msg.author.id].xp - char[msg.author.id].rxp
    char[msg.author.id].level = char[msg.author.id].level + 1
    if char[msg.author.id].level < 5 then
    char[msg.author.id].rxp = math.ceil(char[msg.author.id].rxp*1.05)
  end
end
      msg.channel:send("LEVEL UP!\n"..
      char[msg.author.id].name .." has reached level "..char[msg.author.id].level..".")
   end

  aa = io.open("Surplux/Guilds/".. msg.guild.id ..".lua", "w") --Gunky save data garbage from here
  io.output(aa)
  ee= ""
  for i, k in pairs(guildData[msg.guild.id]) do
	if type(k) ~= "table" then
		if type(k) ~= "string" then
      if type(k) ~= "boolean" then
ee = ee .."ret.".. i .." = ".. k .."\n"
elseif k == true then ee = ee .. "ret.".. i .."= true"
elseif k == false then ee = ee .. "ret.".. i .."= false" end
else
ee = ee .."ret.".. i .." = '".. k .."'\n"
end
else
	ee = ee .."ret.".. i .." = {\n"
	for c, v in pairs(k) do
		if type(v) ~= "string" then
ee = ee .."".. c .." = ".. v ..",\n"
else
ee = ee .."".. c .." = '".. v .."',\n"
end
	end
	ee = ee .."}\n"
end
end
io.write("ret = {} ".. ee .."\nreturn ret")
io.close() --to here
aa = io.open("Surplux/UDat/".. msg.author.id ..".lua", "w") --Gunky save data garbage from here
io.output(aa)
ee= ""
for i, k in pairs(userData[msg.author.id]) do
if type(k) ~= "table" then
  if type(k) ~= "string" then
    if type(k) ~= "boolean" then
ee = ee .."ret.".. i .." = ".. k .."\n"
elseif k == true then ee = ee .. "ret.".. i .."= true"
elseif k == false then ee = ee .. "ret.".. i .."= false" end
else
ee = ee .."ret.".. i .." = '".. k .."'\n"
end
else
ee = ee .."ret.".. i .." = {\n"
for c, v in pairs(k) do
  if type(v) ~= "string" then
ee = ee .."".. c .." = ".. v ..",\n"
else
ee = ee .."".. c .." = '".. v .."',\n"
end
end
ee = ee .."}\n"
end
end
io.write("ret = {} ".. ee .."\nreturn ret")
io.close() --to here
aa = io.open("Surplux/Char/".. msg.author.id ..".lua", "w") --Gunky save data garbage from here
io.output(aa)
ee= ""
for i, k in pairs(char[msg.author.id]) do
if type(k) ~= "table" then
  if type(k) ~= "string" then
    if type(k) ~= "boolean" then
ee = ee .."ret.".. i .." = ".. k .."\n"
elseif k == true then ee = ee .. "ret.".. i .."= true"
elseif k == false then ee = ee .. "ret.".. i .."= false" end
else
ee = ee .."ret.".. i .." = '".. k .."'\n"
end
else
ee = ee .."ret.".. i .." = {\n"
for c, v in pairs(k) do
  if type(v) ~= "string" then
ee = ee .."".. c .." = ".. v ..",\n"
else
ee = ee .."".. c .." = '".. v .."',\n"
end
end
ee = ee .."}\n"
end
end
io.write("ret = {} ".. ee .."\nreturn ret")
io.close() --to here

end)

client:run("Bot NTI4MDA3NDgxODc2ODA3NzAw.DwcA5A.fGT-Q_5i-UTgmm9AZu37iOS_U9U") --Turn on the bot and take control!
