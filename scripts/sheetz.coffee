# Description:
#   Display a Sheetz troll
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   sheetz mention - displays a competitor
#

sheetz = [
  "http://i.imgur.com/llWOGIx.png"
]

module.exports = (robot) ->
  robot.hear /sheetz/i, (msg)->
    msg.send msg.random sheetz
  robot.hear /wawa/i, (msg)->
    msg.send msg.random sheetz
