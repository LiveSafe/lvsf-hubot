# Description:
#   Display a ThreadFail troll
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   #threadfail mention triggers a gif
#

threadfail = [
  "http://i103.photobucket.com/albums/m152/PDC1987/setsail-for-fail-thread.jpg",
  "http://i103.photobucket.com/albums/m152/PDC1987/thread-fail-stamp.gif",
  "http://i103.photobucket.com/albums/m152/PDC1987/yoda_failed.jpg",
  "http://i.imgur.com/qVsvsLO.gif",
  "http://i103.photobucket.com/albums/m152/PDC1987/b217a64d.gif",
  "http://static.comicvine.com/uploads/original/11120/111209450/4316501-back-away-from-the-fail-thread.jpg",
  "http://static.comicvine.com/uploads/original/3/32405/1007390-persistent_fail.jpg",
  "https://catmacros.files.wordpress.com/2009/12/thread_cannot_be_saved_by_kittens.jpg",
  "http://img.memecdn.com/thread-through-needle_o_255097.jpg",
  "http://i.imgur.com/7FgiXzI.png",
  "http://i.imgur.com/mVvMoHY.gif",
  "http://i.imgur.com/C3qplRw.gif"
]

samierimages = [
  "http://2.bp.blogspot.com/-9CBRLQx07mc/VWPMBE3HouI/AAAAAAAACos/8vOMQJTAGjk/s640/15.gif",
  "http://i.giphy.com/rAm0u2k17rM3e.gif",
  "http://i.giphy.com/12C2CDpU2aT5jG.gif",
  "https://ak-hdl.buzzfed.com/static/2014-02/enhanced/webdr02/2/20/anigif_enhanced-buzz-7856-1391391588-4.gif",
  "http://3.bp.blogspot.com/-0xQ7pt8ocw0/UnwSwVPDuAI/AAAAAAAAOyg/EnBLQ_TAmMM/s1600/no-idea-what-i-am-doing.gif"
]

module.exports = (robot) ->
  robot.hear /#threadfail/i, (msg)->
    msg.send msg.random threadfail

  robot.hear /#samierthreadfail/i, (msg)->
    samierthreadfails = robot.brain.get('samierthreadfails') * 1 or 0
    msg.send msg.random samierimages
    samierthreadfails = samierthreadfails+1
    msg.send "@Samier has #{samierthreadfails} threadfails"
    robot.brain.set 'samierthreadfails', samierthreadfails

  robot.hear /samier_reset/i, (msg) ->
    robot.brain.set 'samierthreadfails', 0
    msg.send "@Samier is off the hook"
