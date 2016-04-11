# Description:
#   Protect the Sprint!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   scope creep mention - displays commentary
#

scopecreep = [
  "http://isandor.me/pmwp/wp-content/uploads/2015/09/scopecreep.jpg",
  "https://cdn.meme.am/instances/54566279.jpg",
  "http://i.imgur.com/IcIgLY6.jpg",
  "https://cdn.meme.am/instances/65298301.jpg",
  "http://memecrunch.com/meme/DWNO/scope-creep/image.jpg",
  "http://treasure.diylol.com/uploads/post/image/408651/resized_captain-kirk-meme-generator-scope-creep-fae41e.jpg",
  "https://cdn.meme.am/instances/61761992.jpg",
  "https://cdn.meme.am/instances/62408968.jpg",
  "http://s2.quickmeme.com/img/3a/3a7a63377d85cdbe95f797a7a4173a1b5509423fb517d7652aba21117850e121.jpg",
  "https://cdn.meme.am/instances/63127012.jpg",
  "https://cdn.meme.am/instances/63840042.jpg",
  "https://cdn.meme.am/instances/66083532.jpg",
  "https://cdn.meme.am/instances/500x/67290921.jpg",
  "https://cdn.meme.am/instances/63813835.jpg",
  "https://cdn.meme.am/instances/250x250/66530810.jpg",
  "https://cdn.meme.am/instances/65670254.jpg",
  "https://cdn.meme.am/instances/47832641.jpg"
]

module.exports = (robot) ->
  robot.hear /scope creep/i, (msg)->
    msg.send msg.random scopecreep
  robot.hear /#scopecreep/i, (msg)->
    msg.send msg.random scopecreep