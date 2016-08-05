# Description:
#   Show the hooray
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   nick hooray mention - displays commentary
#

hooray = [
  "http://i.imgur.com/uHuB1QF.gif",
  "http://i.imgur.com/0DuzY7K.gif"
]

module.exports = (robot) ->
  robot.hear /hooray/i, (msg)->
    msg.send msg.random hooray
  robot.hear /#hooray/i, (msg)->
    msg.send msg.random hooray
