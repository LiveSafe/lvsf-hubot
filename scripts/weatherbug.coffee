# Description:
#   Display a WeatherBug troll
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   weatherbug mention - displays a competitor
#

weather = [
  "Hmm... Weatherbug services down.  Try AccuWeather?",
  "AccuWeather > WeatherBug",
  "Try AccuWeather: http://www.accuweather.com/en/us/arlington-va/22201/weather-forecast/331250",
  "http://i.imgur.com/FDWhuXO.gif",
  "http://i.imgur.com/MCT8qlx.gif",
  "http://i.imgur.com/i7tnNVF.gif",
  "http://i.imgur.com/30vteJH.gif",
  "http://i.imgur.com/S2n5NU5.gif",
  "Did you mean AccuWeather?",
  "http://i.imgur.com/yVOkbBN.gif",
  "Don't guess when it comes to weather... Use AccuWeather ;)",
  "https://emptystress.files.wordpress.com/2014/08/omg-i-cant-even.gif",
  "http://38.media.tumblr.com/4dce57732ebd956674b38f570bb9bf76/tumblr_mhub5eS2E31qfr6udo2_400.gif",
  "Error 201: I'm sorry WeatherBug does not support FlowDock. Try AccuWeather"
]

module.exports = (robot) ->
  robot.hear /weatherbug/i, (msg)->
    msg.send msg.random weather
