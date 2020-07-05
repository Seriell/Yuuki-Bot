# Yuuki-Bot
Free and open-source bot for [Discord](https://discordapp.com).

# Usage
You can invite the [publicly usable version of the bot](https://erisa.link/yuukibot) or [host your own version](#self-hosting) to gain full control and access to owner commands.  
You can find a [list of commands on the wiki](https://github.com/yuuki-discord/Yuuki-Bot/wiki/Commands).

# Self-Hosting

## Requirements
- Ruby 2.4.0+
- bundler (`gem install bundler`)

## Install
1. Clone the repo: `git clone --recursive https://github.com/yuuki-discord/Yuuki-Bot.git`
2. cd into the repo: `cd Yuuki-Bot`
3. Create a bot account and edit the config files accordingly (See config/README.md)
4. Install bundler if you haven't already: `gem install bundler`
5. Install the bundle: `bundle install`
6. Run the bot. For Linux: `sh run_linux.sh`. For Windows: `run_windows.bat`.

## Updating
1. Pull any changes from the repo: `git pull`
2. Check any config changes. Open `config/config.yml.example` and see if any new information is needed in your `config/config.yml.example`
3. Install the new dependancies: `bundle install`
4. Run the bot: `sh run_linux.sh` or `run_windows.bat`

Please report any issues to Erisa | `<@228574821590499329>` on Discord, or open an [Issue](https://github.com/yuuki-discord/Yuuki-Bot/issues)! <br />
You can also join our server for support! (Or to find me) https://discord.gg/PrTMrv4 <br />

Enjoy~  

# Important Information
Use of this bot is at your own discretion. The bot's current code is viewable at this repository, feel free to review the code to verify its safety.
The creator(s) of this code accept no responsibility for any repercussions that occur as a result of adding this bot.

# Credits

### Developers
- [Erisa](https://github.com/Erisa)
- [Spotlight](https://github.com/spotlightishere)

### Contributors
- [luigoalma](https://github.com/luigoalma)
- [Larsenv](https://github.com/Larsenv)
- [ry00001](https://github.com/ry00001)

### Upstream developers
- [edwardslabs](https://github.com/edwardslabs) for [CloudBot](https://github.com/edwardslabs/CloudBot/)
- [meew0](https://github.com/meew0/) for [Discordrb](https://github.com/meew0/discordrb)
