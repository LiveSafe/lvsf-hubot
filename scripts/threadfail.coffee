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
  "http://i103.photobucket.com/albums/m152/PDC1987/youfail.gif",
  "http://i103.photobucket.com/albums/m152/PDC1987/b217a64d.gif",
  "http://static.comicvine.com/uploads/original/11120/111209450/4316501-back-away-from-the-fail-thread.jpg",
  "http://static.comicvine.com/uploads/original/3/32405/1007390-persistent_fail.jpg",
  "https://catmacros.files.wordpress.com/2009/12/thread_cannot_be_saved_by_kittens.jpg"
]

module.exports = (robot) ->
  robot.hear /threadfail/i, (msg)->
    msg.send msg.random threadfail
