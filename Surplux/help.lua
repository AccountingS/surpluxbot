r = {}

r.pages = {
  {
    {name ="test",value="Tests the bot!"},
{name ="help",value="Gives a list of bot commands or details a single command"},
{name ="stats",value="Shows you your stats."},
{name ="settag",value="Sets your nametag."}
},
{
  {name ="Server Settings\nprefixset",value="Sets the guild's prefix. Use `help prefixset` for more details."},
  {name ="levelupmessage",value="Toggles level up messages. Use `help levelupmessage` for more details."}
}
}

r.nsfw = {
  {{name="eat",value="Eat food, increasing the fat on your character's body."},
{name="bust",value="Increase your character's bust size."},
{name="waist",value="Increases your character's waist size."},
{name="upgrade",value="Increase the amount your character grows per command use."},
{name="char",value="View your character's stats."},
{name="setname",value="Set your character's name to whatever, as long as it doesn't have `'`."}}
}

r.cmds = {
  test = {{name="Command: Test",value = "Confirm that the bot is working."},
{name="Usage",value="`[prefix]test`"}},
  help = {{name="Command: Help",value="Command that gives advice on bot commands, either detailing specific commands or giving a list."},
{name="Usage",value="`[prefix]help {blank/commandname/pagenumber}`"}},
  prefixset = {{name="Command: prefixset",value="Change the guild's command prefix."},
{name="Usage",value="`@Surplux prefixset [newprefix]`"},{name="⚠ REQUIREMENTS ⚠",value="Guild (Server) Owner"}},
  levelupmessage = {{name="Command: levelupmessage",value="Toggles whether leveling messages should be sent in this guild."},
{name="Usage",value="`@Surplux levelupmessage`"},{name="⚠ REQUIREMENTS ⚠",value="Guild (Server) Owner"}},
  guilddat = {{name="Command: guilddat",value="Shows data for the current guild."},
{name="Usage",value="`@Surplux guilddat`"},{name="⚠ REQUIREMENTS ⚠",value="Guild (Server) Owner"}},
  settag = {{name="Command: settag",value="Sets your nametag."},
{name="Usage",value="`[prefix]settag [new tag]`"},{name="⚠ REQUIREMENTS ⚠",value="Level 5+"}},

  stats = {{name="Command: stats",value="Shows you your stats, like Level, XP, and Curren."},
{name="Usage",value="`[prefix]stats {blank/User ID/User Mention}`"}},

  helpnsfw = {{name="Command: helpnsfw",value="Lists the NSFW Commands."},
{name="Usage",value="`[prefix]helpnsfw {none/page}`"}}
}

return r
