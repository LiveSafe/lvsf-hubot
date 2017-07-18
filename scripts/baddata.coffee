# Description:
#   It's always bad data
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   bad data mention - displays commentary
#

datamsgs = [
 "https://i1.wp.com/www.salesforceben.com/wp-content/uploads/2014/12/baddata.jpg",
 "https://media.licdn.com/mpr/mpr/shrinknp_800_800/p/4/005/0b5/292/2c1d35d.png",
 "https://www.finance-monthly.com/Finance-Monthly/wp-content/uploads/2017/05/baddata.jpg",
 "http://ghostpoint.com/wp-content/uploads/2016/07/BadData.jpg",
 "https://cdn.discoverorg.com/wp-content/uploads/2015/06/High-Cost-of-Bad-Data-ebook.jpg",
 "http://globalcomment.com/wp-content/uploads/2013/01/rsz_man-65049_640.jpg"
]

module.exports = (robot) ->
  robot.hear /bad data/i, (msg)->
    msg.send msg.random datamsgs